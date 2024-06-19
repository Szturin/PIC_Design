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
#include "..\..\Driver\csb.H"//超声波控制程序

/*PIC单片机系统相关子函数*/
#include "..\..\System\Sys.H"//系统初始化程序
#include "..\..\System\Timer.H"//定时器初始化程序
#include "..\..\System\Delay.H"//延时子程序

unsigned char bluetooth;//蓝牙接收字节存储变量

int PWM1=0,PWM2=0;//PWM输出
int PWM;//速度环PWM

/*外部中断测速*/
unsigned int Counter_temp;//车辆旋转圈数计数变量
unsigned int Timer0_Counter;//定时器0溢出计数变量
unsigned char m;
unsigned int Encoder_Counter;//脉冲计数

unsigned char Motor_Flag;//电机允许模式
int Speed;//速度测量值
int Speed_Set;//速度设置值
int Turn;//转向设置值

unsigned char Trace_Byte;


unsigned char Speed_left,Speed_right;//寻线速度
unsigned char Speed_Velcolity;//直行速度

unsigned int distance;

unsigned char yz[8]={0};
unsigned char mod;

unsigned char KeyNum;

unsigned int odomoter_counter;

int Turn_PWM;

unsigned char IO_flag=0;//
unsigned char Circle_Mode=0;
unsigned char Start_Find_flag=0;
unsigned char Bifurcate_Flag=0;//分叉路口标志位，0表示第一个，1表示第二个
unsigned char Stop_Flag;

void yanzheng()//循迹验证
{
	unsigned char temp = mod;
	for(int i=0;i<8;i++)
	{
		yz[i] = temp %2;
		temp/=2;
	}	
}


/*中断服务程序*/
void interrupt Service()
{	
		
	if(RCIF==1)//串口接收中断
	{
		bluetooth=RCREG;
		
		if(bluetooth == '#'){}
		RCIF=0;
	}
	else if(T0IF==1)//定时器0中断
	{	
		TMR0=60;
		T0IF=0;
	}
	else if(INTF==1)//外部中断
	{
		if(Start_Find_flag)
		{
			Encoder_Counter++;
		}
	    INTF=0;//清除外部中断标志位	    	
	}
	else if(RBIF == 1)
	{
		RBIF=0;
	}	
	TMR1IF=0;
}

int Start_PD()
{
	unsigned char Trace_Mode = (RC0<<7|RC3<<6|RE0<<5|RE1<<4|RE2<<3|RA4<<2|RC4<<1|RC5);
	switch(Trace_Mode)
	{
		case 0B11000001:
		case 0B10000011:
		case 0B00000000:
		case 0B10000001:
			return -99;
		case 0B01111110:
		case 0B01111100:
		case 0B00111100:
		case 0B00111110:
		case 0B00111101:
		case 0B10111101:
			return -66;
		default:
			return 0;
	}
}		

/*主函数*/
void main()
{
	/*端口方向*/
	TRISB1=0;
	TRISA0=0;
	TRISA1=0;
	TRISE0=1;
	TRISE1=1;
	TRISE2=1;
	TRISA4=1;
	TRISC0=1;
	TRISC3=1;
	TRISC4=1;
	TRISC5=1;
	TRISB3=1;
	
	LCD1602_GPIO_Init();//LCD1602引脚初始化
	LCD1602_Init();//LCD1602初始化    
	LCD1602_WriteString(1,0,"CAR 1");
	LCD1602_WriteString(2,0,"Speed:");//
	
	Usart_GPIO_Init();//串口GPIO初始化//
	Usart_Init();//串口初始化//	
	
	Motor_GPIO_Init();//电机GPIO口初始化//
	Motor_CCP_PWM_Init();//初始化CCP1、2为PWM输出模式//
	csb_init();//超声波
	
	Delay_ms(5000);//延时2s，等待单片机工作稳定，蓝牙成功配对
	printf("串口初始化完成!\r\n");
	Motor_Speed_Set(PWM1,PWM2);//
	Encoder_Init();
	while(1)
	{
		/*LCD1602打印*/
		if(Circle_Mode == 0)//起始点
		{
			Motor_Speed_Set(40,40);
			
			if(Start_PD() == -99)//起始线扫描判断
			{	
				Start_Find_flag = 1;//脉冲计数标志位
			}
			
			if(Encoder_Counter > 200)//脉冲里程
			{
				Start_Find_flag = 0;
				Encoder_Counter=0;
				Circle_Mode = 1;
			}
		}	
		else if(Circle_Mode == 1)//第一圈，外圈
		{
			if(Start_PD() == -99)//起始线扫描判断
			{
				Start_Find_flag =1;
			}
			
			if(Start_Find_flag == 1)
			{
				Motor_Speed_Set(40,40);
				if(Encoder_Counter > 200)//脉冲里程
				{
					IO_flag = 1;
					Encoder_Counter=0;
					Circle_Mode = 2;//内圈
				}					
			}
			else
			{
				//正常巡线
				Turn_PWM = Trace_PID();
				Speed_left = 40 - Turn_PWM;
				Speed_right = 40 + Turn_PWM;
				Motor_Speed_Set(Speed_left,Speed_right);					
			}
		}
		else if(Circle_Mode == 2)//第二圈，内圈
		{
			if(IO_flag == 0)//正常巡线
			{
				if(Start_PD() == -99)//起始线扫描判断
				{
					Start_Find_flag = 1;
				}
				
				if(Start_Find_flag)
				{
					Motor_Speed_Set(40,40);
					if(Encoder_Counter > 120)//脉冲里程
					{
						Start_Find_flag = 0;
						IO_flag = 0;
						Encoder_Counter=0;
						Circle_Mode = 3;
					}					
				}
				else
				{
					//正常巡线
					Turn_PWM = Trace_PID();
					Speed_left = 40 - Turn_PWM;
					Speed_right = 40 + Turn_PWM;
					Motor_Speed_Set(Speed_left,Speed_right);					
				}
			}	
			else//内圈固定转向
			{
				if(Encoder_Counter > 320)
				{
					Start_Find_flag = 0;
					Encoder_Counter=0;
					IO_flag = 0;
				}
				Motor_Speed_Set(20,60);	
			}
		}
		else if(Circle_Mode == 3)//第三圈，外圈
		{
			if(Start_PD() == -99)//起始线扫描判断
			{
				Start_Find_flag = 1;			
				Stop_Flag=1;
			}
				
			if(Stop_Flag == 1)
			{
				Motor_Speed_Set(0,0);
			}
			else
			{
				Turn_PWM = Trace_PID();
				Speed_left = 40 - Turn_PWM;
				Speed_right = 40 + Turn_PWM;
				Motor_Speed_Set(Speed_left,Speed_right);					
			}
		}	
	}
}





		/*
		if(Circle_Mode == 0)//起始点
		{
			Motor_Speed_Set(40,40);
			
			if(Start_PD() == -99)//起始线扫描判断
			{	
				Start_Find_flag = 1;//脉冲计数标志位
			}
			
			if(Encoder_Counter > 120)//脉冲里程
			{
				Encoder_Counter=0;
				IO_flag = 1;
				Circle_Mode = 1;
			}
		}
		else if(Circle_Mode == 1)//第一圈，内圈
		{
			if(IO_flag == 0)//正常巡线
			{
				if(Start_PD() == -99)//起始线扫描判断
				{
					Start_Find_flag = 1;
				}
				
				if(Start_Find_flag)
				{
					Motor_Speed_Set(40,40);
					if(Encoder_Counter > 120)//脉冲里程
					{
						Start_Find_flag = 0;
						IO_flag = 0;
						Encoder_Counter=0;
						Circle_Mode = 2;
					}					
				}
				else
				{
					//正常巡线
					Turn_PWM = Trace_PID();
					Speed_left = 40 - Turn_PWM;
					Speed_right = 40 + Turn_PWM;
					Motor_Speed_Set(Speed_left,Speed_right);					
				}
			}	
			else//内圈固定转向
			{
				if(Encoder_Counter > 280)
				{
					Start_Find_flag = 0;
					Encoder_Counter=0;
					IO_flag = 0;
				}
				Motor_Speed_Set(20,60);	
			}
		}
		else if(Circle_Mode == 2)//第二圈，外圈
		{
			if(Start_PD() == -99)//起始线扫描判断
			{
				Start_Find_flag =1;
			}
			
			if(Start_Find_flag == 1)
			{
				Motor_Speed_Set(40,40);
				if(Encoder_Counter > 400)//脉冲里程
				{
					IO_flag = 1;
					Encoder_Counter=0;
					Circle_Mode = 3;//内圈
				}					
			}
			else
			{
				//正常巡线
				Turn_PWM = Trace_PID();
				Speed_left = 40 - Turn_PWM;
				Speed_right = 40 + Turn_PWM;
				Motor_Speed_Set(Speed_left,Speed_right);					
			}
		}
		else if(Circle_Mode == 3)//第三圈，内圈
		{
			if(IO_flag == 0)//正常巡线
			{
				if(Start_PD() == -99)//起始线扫描判断
				{
					Start_Find_flag = 1;			
					Stop_Flag=1;
				}
				
				if(Stop_Flag == 1)
				{
					Motor_Speed_Set(0,0);
				}
				else
				{
					Turn_PWM = Trace_PID();
					Speed_left = 40 - Turn_PWM;
					Speed_right = 40 + Turn_PWM;
					Motor_Speed_Set(Speed_left,Speed_right);					
				}
			}	
			else//内圈分叉路固定转向
			{
				if(Encoder_Counter > 400)
				{
					Start_Find_flag = 0;
					Encoder_Counter=0;
					IO_flag = 0;
				}
				Motor_Speed_Set(20,60);	
			}
		}
		*/
		
	//	printf("Mode:%d,Fencha:%d\n",(unsigned int)Circle_Mode,(unsigned int)Bifurcate_Flag);
		
		//  LCD1602_WriteNum(1,8,distance,3);
		//	LCD1602_WriteNum(2,8,Encoder_Counter,5);
		//	LCD1602_WriteNum(1,8,Circle_Mode,1);
			
		//  mod = (RC0<<7|RC3<<6|RE0<<5|RE1<<4|RE2<<3|RA4<<2|RC4<<1|RC5);
		//	PORTD = mod;
		
		/*
		yanzheng();
		
		LCD1602_WriteNum(2,1,yz[0],1);
		LCD1602_WriteNum(2,2,yz[1],1);
		LCD1602_WriteNum(2,3,yz[2],1);
		LCD1602_WriteNum(2,4,yz[3],1);
		LCD1602_WriteNum(2,5,yz[4],1);
		LCD1602_WriteNum(2,6,yz[5],1);
		LCD1602_WriteNum(2,7,yz[6],1);
		LCD1602_WriteNum(2,8,yz[7],1);
		*/
		
		//LCD1602_WriteNum(1,8,KeyNum,2);
		
		//printf("Speed:%d\r\n",(unsigned int)Speed);