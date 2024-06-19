#include <pic.h>//PIC��
__CONFIG(0xFF29);//������ʼλ
#include <stdio.h>//C���Կ�

/*PIC��Ƭ����������Ӻ���*/
#include "..\..\Driver\LCD1602.H"//LCD1602�Ӻ���
#include "..\..\Driver\KeyBoard.H"//�����Ӻ���
#include "..\..\Driver\iic.H"//iicͨ��
#include "..\..\Driver\Motor.H"//�������
#include "..\..\Driver\Usart.H"//���ڣ�������ͨ��
#include "..\..\Driver\Led.H"//Led
#include "..\..\Driver\Encoder.H"//��������������
#include "..\..\Driver\PID.H"//PID���Ƴ���
#include "..\..\Driver\csb.H"//���������Ƴ���

/*PIC��Ƭ��ϵͳ����Ӻ���*/
#include "..\..\System\Timer.H"//��ʱ����ʼ������
#include "..\..\System\Delay.H"//��ʱ�ӳ���

unsigned char bluetooth;//���������ֽڴ洢����

/*�ⲿ�жϲ���*/
unsigned int Counter_temp;//������תȦ����������
unsigned int Timer0_Counter;//��ʱ��0�����������
unsigned int Encoder_Counter;//�������


/*ѭ��������Ҫ����*/
unsigned char Motor_Flag;//�������ģʽ
unsigned char Turn_PWM;//ת��PWM����ѭ��PID���ƺ��������ֵ
unsigned char Trace_Byte;//��·ѭ����Ӧһ���ֽ�
unsigned char Speed_left,Speed_right;//Ѱ���ٶ�
unsigned char Speed_Velcolity=30;//ֱ���ٶ�
unsigned char IO_flag=0;//��90��ת����ͣ��־λ
unsigned char Circle_Mode=0;//��������ģʽ
unsigned char Start_Find_flag=0;//���������־λ
unsigned char Bifurcate_Flag=0;//�ֲ�·�ڱ�־λ��0��ʾ��һ����1��ʾ�ڶ���
unsigned char Stop_Flag;//ͣ����־λ

/*
unsigned int distance;
unsigned char yz[8]={0};
unsigned char mod;
void yanzheng()//ѭ����֤
{
	unsigned char temp = mod;
	for(int i=0;i<8;i++)
	{
		yz[i] = temp %2;
		temp/=2;
	}	
}
*/

/*�жϷ������*/
void interrupt Service()
{	
		
	if(RCIF==1)//���ڽ����ж�
	{
		bluetooth=RCREG;
		if(bluetooth == 1){Speed_Velcolity=10;}
		if(bluetooth == 2){Speed_Velcolity=40;}
		if(bluetooth == 3){Speed_Velcolity=70;}
		if(bluetooth == 4){Speed_Velcolity=100;}
		RCIF=0;
	}
	else if(T0IF==1)//��ʱ��0�ж�
	{	
		TMR0=60;
		T0IF=0;
	}
	else if(INTF==1)//�ⲿ�ж�
	{
		if(Start_Find_flag)
		{
			Encoder_Counter++;
		}
	    INTF=0;//����ⲿ�жϱ�־λ	    	
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
		/*ֹͣ�ߵ�ѭ��״̬*/
		case 0B11000001:
		case 0B10000011:
		case 0B00000000:
		case 0B10000001:
			return -99;
		default:
			return 0;
	}
}		

/*������*/
void main()
{
	/*�˿ڷ���*/
	TRISB1=0;
	TRISA0=0;
	TRISA1=0;
	Trace_GPIO_Init();
	
	Usart_GPIO_Init();//����GPIO��ʼ��//
	Usart_Init();//���ڳ�ʼ��//	
	
	Motor_GPIO_Init();//���GPIO�ڳ�ʼ��//
	Motor_CCP_PWM_Init();//��ʼ��CCP1��2ΪPWM���ģʽ//
	csb_init();//������
	Delay_ms(5000);//��ʱ2s���ȴ���Ƭ�������ȶ��������ɹ����
	Encoder_Init();

	while(1)
	{
		Motor_Speed_Set(Speed_Velcolity,Speed_Velcolity);
		/*ѭ���������*/
		/*
		if(Circle_Mode == 0)//��ʼ��
		{
			Motor_Speed_Set(Speed_Velcolity,Speed_Velcolity);
			
			if(Start_PD() == -99)//��ʼ��ɨ���ж�
			{	
				Start_Find_flag = 1;//���������־λ
			}
			
			if(Encoder_Counter > 200)//�̶����룬Խ������
			{
				Start_Find_flag = 0;
				Encoder_Counter=0;
				Circle_Mode = 1;
			}
		}	
		else if(Circle_Mode == 1)//��һȦ����Ȧ
		{
			if(Start_PD() == -99)//��ʼ��ɨ���ж�
			{
				Start_Find_flag =1;
			}
			
			if(Start_Find_flag == 1)
			{
				Motor_Speed_Set(Speed_Velcolity,Speed_Velcolity);
				if(Encoder_Counter > 200)//�̶����ǰ��һ��
				{
					IO_flag = 1;
					Encoder_Counter=0;
					Circle_Mode = 2;//��Ȧ
				}					
			}
			else//����Ѳ��
			{	
				Turn_PWM = Trace_PID();
				Speed_left = Speed_Velcolity - Turn_PWM;
				Speed_right = Speed_Velcolity + Turn_PWM;
				Motor_Speed_Set(Speed_left,Speed_right);					
			}
		}
		else if(Circle_Mode == 2)//�ڶ�Ȧ����Ȧ
		{
			if(IO_flag == 0)//����Ѳ��
			{
				if(Start_PD() == -99)//��ʼ��ɨ���ж�
				{
					Start_Find_flag = 1;
				}

				if(Start_Find_flag)
				{
					Motor_Speed_Set(Speed_Velcolity,Speed_Velcolity);
					if(Encoder_Counter > 120)//�̶����ǰ��һ��
					{
						Start_Find_flag = 0;
						IO_flag = 0;
						Encoder_Counter=0;
						Circle_Mode = 3;
					}					
				}
				else//����Ѳ��
				{
					Turn_PWM = Trace_PID();
					Speed_left = Speed_Velcolity - Turn_PWM;
					Speed_right = Speed_Velcolity + Turn_PWM;
					Motor_Speed_Set(Speed_left,Speed_right);					
				}
			}	
			else//��Ȧ�̶�ת��
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
		else if(Circle_Mode == 3)//����Ȧ����Ȧ
		{
			if(Start_PD() == -99)//��ʼ��ɨ���ж�
			{
				Start_Find_flag = 1;			
				Stop_Flag=1;
			}
				
			if(Stop_Flag == 1)
			{
				Motor_Speed_Set(0,0);//ͣ��
			}
			else//����Ѳ��
			{
				Turn_PWM = Trace_PID();
				Speed_left = Speed_Velcolity - Turn_PWM;
				Speed_right = Speed_Velcolity + Turn_PWM;
				Motor_Speed_Set(Speed_left,Speed_right);					
			}
		}	*/
	}
	
}