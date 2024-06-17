#include <pic.h>

#define Motor_LogicA_1 RB0
#define Motor_LogicA_2 RB1
#define Motor_PWM_A	RC0
#define Motor_LogicB_1 RB2
#define Motor_LogicB_2 RB3
#define Motor_PWM_B	RC1


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

