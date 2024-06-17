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

