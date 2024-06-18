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
	��    ��	
	��    ��	Ҫд�������
	�� �� ֵ	��
	����˵��	��
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
	/*����CCP1������PWMģʽ*/
	CCP1CON=0X0C;//����CCP1ģ�鹤����PWMģʽ
	CCPR1L=50;//��������Ϊ50us
	PR2=100;
	
	/*����CCP2������PWMģʽ*/
    CCP2CON = 0x0c; // ����CCP2ΪPWMģʽ
    CCPR2L = 50;          // ����CCP2 PWMռ�ձȣ���λ��
    	
    /*��CCPģ��PWMģʽ��ϵ�TMR2*/
	T2CON=0;//����TM2ģ�鹤����Ԥ�����Ƶ�ȶ���1:1�Ķ�ʱ��ģʽ
	TMR2=0;
	TMR2ON=1;//����TMR2���˿̴�RC2�����������Ĳ���		
}

/*
	��    ��	����������
	��    ��	
	�� �� ֵ	��
	����˵��	��
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
	
	if( RE2==0 && RE1 == 0 )//ֱ��
	{
		turn_err=0;
		//Speed_left = 20; Speed_right = 20;
	}
	else if(RE0 == 0 && RE1 == 0)//��Сת
	{
		turn_err=-1;
		//Speed_left = 25; Speed_right = 20;
	}
	else if(RE0 == 0 && RE1 == 1)//�Ҳ��⵽���ߣ���ת
	{
		turn_err=-2;
		//Speed_left = 40; Speed_right = 20;
	}
	else if(RA4 == 0 && RE2 == 0)//��Сת
	{
		turn_err=1;
		//Speed_left = 20; Speed_right = 25;
	}
	else if(RA4 == 0 && RE2 == 1)//��߼�⵽���ߣ���ת
	{
		turn_err=2;
		//Speed_left = 20; Speed_right = 40;
	}
	return turn_err;
	*/
	/*
	switch(Trace_Byte)
	{
		case 0B00101100://��ת
			Speed_left = 20; Speed_right = 25;		
				   break;
		case 0B00001100://��Сת
			Speed_left = 20; Speed_right = 40;		
				   break;
		case 0B00110100://��ת
			Speed_left = 40; Speed_right = 20;		
				   break;
		case 0B00110000://��Сת
			Speed_left = 25; Speed_right = 20;		
				   break;
		default:
			 Speed_left = 20; Speed_right = 20;
				   break;
	}
	*/
	
}