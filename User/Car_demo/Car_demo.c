#include <pic.h>//PIC库
__CONFIG(0xFF29);//配置起始位
#include <stdio.h>//C语言库


/*PIC课程设计DEMO*/

/*PIC单片机驱动相关子函数*/
#include "..\..\Driver\LCD1602.H"//LCD1602子函数
#include "..\..\Driver\KeyBoard.H"//按键子函数
#include "..\..\Driver\spi.H"//spi通信
#include "..\..\Driver\iic.H"//iic通信
#include "..\..\Driver\Motor.H"//电机驱动
#include "..\..\Driver\Usart.H"//串口（蓝牙）通信
#include "..\..\Driver\Led.H"//Led
#include "..\..\Driver\Encoder.H"//霍尔编码器测速
#include "..\..\Driver\PID.H"//PID控制程序

/*PIC单片机系统相关子函数*/
#include "..\..\System\Sys.H"//系统初始化程序
#include "..\..\System\Timer.H"//定时器初始化程序
#include "..\..\System\Delay.H"//延时子程序

/*电机引脚宏定义接口*/
#define Motor_PWM_A RC2
#define Motor_PWM_B RC1
#define Motor_LogicA_1 RB4
#define Motor_LogicA_2 RB5
#define Motor_LogicB_1 RB6
#define Motor_LogicB_2 RB7

unsigned char bluetooth;//蓝牙接收字节存储变量

int PWM1=0,PWM2=0;//PWM输出
int PWM;//速度环PWM

/*外部中断测速*/
unsigned int Counter_temp;//车辆旋转圈数计数变量
unsigned int Timer0_Counter;//定时器0溢出计数变量
unsigned char m;
unsigned char Encoder_Counter;//脉冲计数

unsigned char Motor_Flag;//电机允许模式
int Speed;//速度测量值
int Speed_Set;//速度设置值
int Turn;//转向设置值

unsigned char Trace_Byte;

unsigned char ack;

int Trace_Proc()
{
	//Trace_Byte = (RA4 << 5 | (PORTE & 0x07 << 2));
	if(RE2==0 && RE1 == 0)
	{
		Motor_Flag=5;
	}
	else if(RE0 == 0)//右侧检测到黑线，右转
	{
		
		Motor_Flag=3;
	}
	else if(RA4 == 0)//左边监测到黑线，左转
	{
		Motor_Flag=4;
	}
}

void Motor_Speed_Set(int Speed1,int Speed2)
{
	if(Speed1 > 0 )
	{
		Motor_LogicA_1 = 1;
		Motor_LogicA_2 = 0;
		CCPR1L=(unsigned char)Speed1;
	}
	else
	{
		Motor_LogicA_1 = 0;
		Motor_LogicA_2 = 1;
		CCPR1L=(unsigned char)(-Speed1);
	}
	
	if(Speed2 >0 )
	{
		Motor_LogicB_1 = 1;
		Motor_LogicB_2 = 0;
		CCPR2L=(unsigned char)Speed2;
	}
	else
	{
		Motor_LogicB_1 = 0;
		Motor_LogicB_2 = 1;
		CCPR2L=(unsigned char)(-Speed2);		
	}	
}

/*中断服务程序*/
void interrupt Service()
{	
	Trace_Proc();
	ack=Trace_Write_Command();
	//PORTD = Trace_Read_Data();
	Trace_Byte = PORTA & 0B00111100;//3-6路灰度
	PORTD = Trace_Byte;
	if(RCIF==1)//串口接收中断
	{
		bluetooth=RCREG;
		if(bluetooth == 'W'){Speed_Set=50;Turn=0;Motor_Flag=1;}
		if(bluetooth == 'Q'){Speed_Set=0;Turn=0;Motor_Flag=0;}
		if(bluetooth == 'S'){Speed_Set=-50;Turn=0;Motor_Flag=1;}
		if(bluetooth == 'A'){Turn=-20;Motor_Flag=2;}
		if(bluetooth == 'D'){Turn=20;Motor_Flag=2;}
		Motor_Speed_Set(PWM1,PWM2);
		RCIF=0;
	}
	else if(T0IF==1)//定时器0中断
	{	
		TMR0=60;
		T0IF=0;
		
		Speed = Encoder_Counter;
		Encoder_Counter=0;
		
		PWM = Velocity_PID(Speed,Speed_Set);
		
		PWM1 = PWM;
		PWM2 = PWM;
		
		if(Motor_Flag == 1)
		{
			Motor_Speed_Set(PWM1,PWM2);
		}
		/*
		else if(Motor_Flag == 2)
		{
			Motor_Speed_Set(Turn,-Turn);
		}
		*/
		else if(Motor_Flag == 5)
		{
			Motor_Speed_Set(55,55);
		} 
		else if(Motor_Flag == 3)
		{
			Motor_Speed_Set(60,40);
		}
		else if(Motor_Flag == 4)
		{
			Motor_Speed_Set(40,60);
		}
		else
		{	
			Motor_Speed_Set(0,0);
		}
	}
	else if(INTF==1)//外部中断
	{
		Encoder_Counter++;
	    INTF=0;//清除外部中断标志位	    	
	}
}


/*主函数*/
void main()
{
	TRISB1=0;
	
	TRISA0=0;
	TRISA1=0;
	
	TRISE0=1;
	TRISE1=1;
	TRISE2=1;
	
	TRISA4=1;

	

	
	LCD1602_GPIO_Init();//LCD1602引脚初始化
	LCD1602_Init();//LCD1602初始化    
	LCD1602_WriteString(1,0,"CAR 1");
	LCD1602_WriteString(2,0,"Speed:");

	Usart_GPIO_Init();//串口GPIO初始化
	Usart_Init();//串口初始化
	Motor_GPIO_Init();//电机GPIO口初始化
	Motor_CCP_PWM_Init();//初始化CCP1、2为PWM输出模式
	
	Delay_ms(5000);//延时2s，等待单片机工作稳定，蓝牙成功配对
	printf("串口初始化完成!\r\n");
	Motor_Speed_Set(PWM1,PWM2);
	Encoder_Init();
	Velociy_PID_Init();
	while(1)
	{
		/*LCD1602打印*/
		//Speed_calculate();
		//LCD1602_WriteNum(1,7,Trace_Byte,3);
		LCD1602_WriteNum(2,7,Speed,3);
		LCD1602_WriteNum(1,7,RE0,1);
		LCD1602_WriteNum(1,8,RE1,1);
		LCD1602_WriteNum(1,9,RE2,1);
		LCD1602_WriteNum(1,10,RA4,1);
		printf("Speed:%d\r\n",(unsigned int)Speed);
	}
}