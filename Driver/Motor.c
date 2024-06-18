#include <pic.h>

#define Motor_PWM_A RC2
#define Motor_PWM_B RC1
#define Motor_LogicA_1 RB4
#define Motor_LogicA_2 RB5
#define Motor_LogicB_1 RB6
#define Motor_LogicB_2 RB7


unsigned char Speed_measure1;
unsigned char Speed_measure2;

/*
	函    数	
	参    数	要写入的命令
	返 回 值	无
	特殊说明	无
*/
void Motor_GPIO_Init()
{
	TRISB4=0;
	TRISB5=0;
	TRISB6=0;
	TRISB7=0;
	TRISC1=0;
	TRISC2=0;
}

void Motor_CCP_PWM_Init()
{
	/*定义CCP1工作在PWM模式*/
	CCP1CON=0X0C;//定义CCP1模块工作在PWM模式
	CCPR1L=50;//定义脉宽为50us
	PR2=100;
	
	/*定义CCP2工作在PWM模式*/
    CCP2CON = 0x0c; // 配置CCP2为PWM模式
    CCPR2L = 50;          // 设置CCP2 PWM占空比（高位）
    	
    /*与CCP模块PWM模式配合的TMR2*/
	T2CON=0;//定义TM2模块工作在预、后分频比都是1:1的定时器模式
	TMR2=0;
	TMR2ON=1;//启动TMR2，此刻从RC2引脚输出所设的波形		
}

/*
	函    数	编码器测速
	参    数	
	返 回 值	无
	特殊说明	无
*/
int Enconder_GetNum()
{
	
	
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
int Trace_Proc()
{
	//Trace_Byte =(RA4 << 3 + RE2 <<2 + RE1<< 1 + RE0);
	/*
	int turn_err;
	
	if( RE2==0 && RE1 == 0 )//直行
	{
		turn_err=0;
		//Speed_left = 20; Speed_right = 20;
	}
	else if(RE0 == 0 && RE1 == 0)//右小转
	{
		turn_err=-1;
		//Speed_left = 25; Speed_right = 20;
	}
	else if(RE0 == 0 && RE1 == 1)//右侧检测到黑线，右转
	{
		turn_err=-2;
		//Speed_left = 40; Speed_right = 20;
	}
	else if(RA4 == 0 && RE2 == 0)//左小转
	{
		turn_err=1;
		//Speed_left = 20; Speed_right = 25;
	}
	else if(RA4 == 0 && RE2 == 1)//左边监测到黑线，左转
	{
		turn_err=2;
		//Speed_left = 20; Speed_right = 40;
	}
	return turn_err;
	*/
	/*
	switch(Trace_Byte)
	{
		case 0B00101100://左转
			Speed_left = 20; Speed_right = 25;		
				   break;
		case 0B00001100://左小转
			Speed_left = 20; Speed_right = 40;		
				   break;
		case 0B00110100://右转
			Speed_left = 40; Speed_right = 20;		
				   break;
		case 0B00110000://右小转
			Speed_left = 25; Speed_right = 20;		
				   break;
		default:
			 Speed_left = 20; Speed_right = 20;
				   break;
	}
	*/
	
}