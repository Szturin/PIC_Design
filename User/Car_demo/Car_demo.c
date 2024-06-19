#include <pic.h>//PIC库
__CONFIG(0xFF29);//配置起始位
#include <stdio.h>//C语言库

/*PIC单片机驱动相关子函数*/
#include "..\..\Driver\LCD1602.H"//LCD1602子函数
#include "..\..\Driver\KeyBoard.H"//按键子函数
#include "..\..\Driver\iic.H"//iic通信
#include "..\..\Driver\Motor.H"//电机驱动
#include "..\..\Driver\Usart.H"//串口（蓝牙）通信
#include "..\..\Driver\Led.H"//Led
#include "..\..\Driver\Encoder.H"//霍尔编码器测速
#include "..\..\Driver\PID.H"//PID控制程序
#include "..\..\Driver\csb.H"//超声波控制程序

/*PIC单片机系统相关子函数*/
#include "..\..\System\Timer.H"//定时器初始化程序
#include "..\..\System\Delay.H"//延时子程序

unsigned char bluetooth;//蓝牙接收字节存储变量

/*外部中断测速*/
unsigned int Counter_temp;//车辆旋转圈数计数变量
unsigned int Timer0_Counter;//定时器0溢出计数变量
unsigned int Encoder_Counter;//脉冲计数


/*循迹控制主要变量*/
unsigned char Motor_Flag;//电机允许模式
unsigned char Turn_PWM;//转向PWM，由循迹PID控制函数输出赋值
unsigned char Trace_Byte;//八路循迹对应一个字节
unsigned char Speed_left,Speed_right;//寻线速度
unsigned char Speed_Velcolity=30;//直行速度
unsigned char IO_flag=0;//（90度转向）启停标志位
unsigned char Circle_Mode=0;//车辆运行模式
unsigned char Start_Find_flag=0;//脉冲计数标志位
unsigned char Bifurcate_Flag=0;//分叉路口标志位，0表示第一个，1表示第二个
unsigned char Stop_Flag;//停车标志位

/*
unsigned int distance;
unsigned char yz[8]={0};
unsigned char mod;
void yanzheng()//循迹验证
{
	unsigned char temp = mod;
	for(int i=0;i<8;i++)
	{
		yz[i] = temp %2;
		temp/=2;
	}	
}
*/

/*中断服务程序*/
void interrupt Service()
{	
		
	if(RCIF==1)//串口接收中断
	{
		bluetooth=RCREG;
		if(bluetooth == 1){Speed_Velcolity=10;}
		if(bluetooth == 2){Speed_Velcolity=40;}
		if(bluetooth == 3){Speed_Velcolity=70;}
		if(bluetooth == 4){Speed_Velcolity=100;}
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
		/*停止线的循迹状态*/
		case 0B11000001:
		case 0B10000011:
		case 0B00000000:
		case 0B10000001:
			return -99;
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
	Trace_GPIO_Init();
	
	Usart_GPIO_Init();//串口GPIO初始化//
	Usart_Init();//串口初始化//	
	
	Motor_GPIO_Init();//电机GPIO口初始化//
	Motor_CCP_PWM_Init();//初始化CCP1、2为PWM输出模式//
	csb_init();//超声波
	Delay_ms(5000);//延时2s，等待单片机工作稳定，蓝牙成功配对
	Encoder_Init();

	while(1)
	{
		Motor_Speed_Set(Speed_Velcolity,Speed_Velcolity);
		/*循迹处理程序*/
		/*
		if(Circle_Mode == 0)//起始点
		{
			Motor_Speed_Set(Speed_Velcolity,Speed_Velcolity);
			
			if(Start_PD() == -99)//起始线扫描判断
			{	
				Start_Find_flag = 1;//脉冲计数标志位
			}
			
			if(Encoder_Counter > 200)//固定距离，越过黑线
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
				Motor_Speed_Set(Speed_Velcolity,Speed_Velcolity);
				if(Encoder_Counter > 200)//固定里程前进一段
				{
					IO_flag = 1;
					Encoder_Counter=0;
					Circle_Mode = 2;//内圈
				}					
			}
			else//正常巡线
			{	
				Turn_PWM = Trace_PID();
				Speed_left = Speed_Velcolity - Turn_PWM;
				Speed_right = Speed_Velcolity + Turn_PWM;
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
					Motor_Speed_Set(Speed_Velcolity,Speed_Velcolity);
					if(Encoder_Counter > 120)//固定里程前进一段
					{
						Start_Find_flag = 0;
						IO_flag = 0;
						Encoder_Counter=0;
						Circle_Mode = 3;
					}					
				}
				else//正常巡线
				{
					Turn_PWM = Trace_PID();
					Speed_left = Speed_Velcolity - Turn_PWM;
					Speed_right = Speed_Velcolity + Turn_PWM;
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
				Motor_Speed_Set(0,0);//停车
			}
			else//正常巡线
			{
				Turn_PWM = Trace_PID();
				Speed_left = Speed_Velcolity - Turn_PWM;
				Speed_right = Speed_Velcolity + Turn_PWM;
				Motor_Speed_Set(Speed_left,Speed_right);					
			}
		}	*/
	}
	
}