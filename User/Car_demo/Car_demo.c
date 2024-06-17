#include <pic.h>//PIC��
__CONFIG(0xFF29);//������ʼλ
#include <stdio.h>//C���Կ�


/*PIC�γ����DEMO*/

/*PIC��Ƭ����������Ӻ���*/
#include "..\..\Driver\LCD1602.H"//LCD1602�Ӻ���
#include "..\..\Driver\KeyBoard.H"//�����Ӻ���
#include "..\..\Driver\spi.H"//spiͨ��
#include "..\..\Driver\iic.H"//iicͨ��
#include "..\..\Driver\Motor.H"//�������
#include "..\..\Driver\Usart.H"//���ڣ�������ͨ��
#include "..\..\Driver\Led.H"//Led
#include "..\..\Driver\Encoder.H"//��������������
#include "..\..\Driver\PID.H"//PID���Ƴ���

/*PIC��Ƭ��ϵͳ����Ӻ���*/
#include "..\..\System\Sys.H"//ϵͳ��ʼ������
#include "..\..\System\Timer.H"//��ʱ����ʼ������
#include "..\..\System\Delay.H"//��ʱ�ӳ���

/*������ź궨��ӿ�*/
#define Motor_PWM_A RC2
#define Motor_PWM_B RC1
#define Motor_LogicA_1 RB4
#define Motor_LogicA_2 RB5
#define Motor_LogicB_1 RB6
#define Motor_LogicB_2 RB7

unsigned char bluetooth;//���������ֽڴ洢����

int PWM1=0,PWM2=0;//PWM���
int PWM;//�ٶȻ�PWM

/*�ⲿ�жϲ���*/
unsigned int Counter_temp;//������תȦ����������
unsigned int Timer0_Counter;//��ʱ��0�����������
unsigned char m;
unsigned char Encoder_Counter;//�������

unsigned char Motor_Flag;//�������ģʽ
int Speed;//�ٶȲ���ֵ
int Speed_Set;//�ٶ�����ֵ
int Turn;//ת������ֵ

unsigned char Trace_Byte;

unsigned char ack;

int Trace_Proc()
{
	//Trace_Byte = (RA4 << 5 | (PORTE & 0x07 << 2));
	if(RE2==0 && RE1 == 0)
	{
		Motor_Flag=5;
	}
	else if(RE0 == 0)//�Ҳ��⵽���ߣ���ת
	{
		
		Motor_Flag=3;
	}
	else if(RA4 == 0)//��߼�⵽���ߣ���ת
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

/*�жϷ������*/
void interrupt Service()
{	
	Trace_Proc();
	ack=Trace_Write_Command();
	//PORTD = Trace_Read_Data();
	Trace_Byte = PORTA & 0B00111100;//3-6·�Ҷ�
	PORTD = Trace_Byte;
	if(RCIF==1)//���ڽ����ж�
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
	else if(T0IF==1)//��ʱ��0�ж�
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
	else if(INTF==1)//�ⲿ�ж�
	{
		Encoder_Counter++;
	    INTF=0;//����ⲿ�жϱ�־λ	    	
	}
}


/*������*/
void main()
{
	TRISB1=0;
	
	TRISA0=0;
	TRISA1=0;
	
	TRISE0=1;
	TRISE1=1;
	TRISE2=1;
	
	TRISA4=1;

	

	
	LCD1602_GPIO_Init();//LCD1602���ų�ʼ��
	LCD1602_Init();//LCD1602��ʼ��    
	LCD1602_WriteString(1,0,"CAR 1");
	LCD1602_WriteString(2,0,"Speed:");

	Usart_GPIO_Init();//����GPIO��ʼ��
	Usart_Init();//���ڳ�ʼ��
	Motor_GPIO_Init();//���GPIO�ڳ�ʼ��
	Motor_CCP_PWM_Init();//��ʼ��CCP1��2ΪPWM���ģʽ
	
	Delay_ms(5000);//��ʱ2s���ȴ���Ƭ�������ȶ��������ɹ����
	printf("���ڳ�ʼ�����!\r\n");
	Motor_Speed_Set(PWM1,PWM2);
	Encoder_Init();
	Velociy_PID_Init();
	while(1)
	{
		/*LCD1602��ӡ*/
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