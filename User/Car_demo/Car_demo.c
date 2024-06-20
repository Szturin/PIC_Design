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
unsigned char Speed_left,Speed_right;//Ѱ���ٶ�77y89-
unsigned char Speed_Velcolity=45;//ֱ���ٶ�
unsigned char IO_flag=0;//��90��ת����ͣ��־λ
unsigned char Circle_Mode=0;//��������ģʽ
unsigned char Start_Find_flag=0;//���������־λ
unsigned char Bifurcate_Flag=0;//�ֲ�·�ڱ�־λ��0��ʾ��һ����1��ʾ�ڶ���
unsigned char Stop_Flag=0;//ͣ����־λ
unsigned char Trace_Mode=0;
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
unsigned int Start_PD()
{
	Trace_Mode = (RC0<<7|RC3<<6|RE0<<5|RE1<<4|RE2<<3|RA4<<2|RC4<<1|RC5);

	switch(Trace_Mode)
	{
		/*ֹͣ�ߵ�ѭ��״̬*/
		case 0B10000001:
		case 0B10000000:
		case 0B00000001:
		case 0B00000000:
			return 1;
		case 0B11111111:
			return 99;//�Լ�
		default:
			return 0;
	} 
}

void Trace_Control()
{
		if(Circle_Mode == 0)//��ʼ��
		{
			Motor_Speed_Set(Speed_Velcolity,Speed_Velcolity);
			
			if(Start_PD() == 1)//��ʼ��ɨ���ж�
			{	
				Start_Find_flag = 1;//���������־λ
			}
			
			if(Encoder_Counter >200)//�̶����룬Խ������
			{
				Start_Find_flag = 0;
				Encoder_Counter=0;
				Circle_Mode = 1;
			}
		}	
		else if(Circle_Mode == 1)//��һȦ����Ȧ
		{
			if(Start_PD() == 1)//��ʼ��ɨ���ж�
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
				if(Start_PD() == 1)//��ʼ��ɨ���ж�
				{
					putch(3);
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
				Motor_Speed_Set(20,60);
				if(Encoder_Counter > 320)
				{
					Start_Find_flag = 0;
					Encoder_Counter=0;
					IO_flag = 0;
				}
					
			}
		}
		else if(Circle_Mode == 3)//����Ȧ����Ȧ
		{
			if(Start_PD() == 1)//��ʼ��ɨ���ж�
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
		}
}

/*�жϷ������*/
void interrupt Service()
{	
	//Trace_Control();
	if(RCIF==1)//���ڽ����ж�   
	{
		bluetooth=RCREG;
		if(bluetooth == 1){Speed_Velcolity=25;}
		if(bluetooth == 2){Speed_Velcolity=30;}
		if(bluetooth == 3){Speed_Velcolity=50;}
		if(bluetooth == 4){Speed_Velcolity=55;}
		
		
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

/*�Լ캯��*/
void Self_Check()
{
	unsigned int i;
	if(Start_PD() == 99)
	{
		RA2 = 1;Delay_ms(8000);
	}
	RA2 = 0;
}

/*������*/
void main()
{
	/*�˿ڷ���*/
	TRISB1=0;
	TRISA0=0;
	TRISA1=0;
	TRISA2=0;
	Trace_GPIO_Init();
	
	Usart_GPIO_Init();//����GPIO��ʼ��//
	Usart_Init();//���ڳ�ʼ��//	
	
	Motor_GPIO_Init();//���GPIO�ڳ�ʼ��//
	Motor_CCP_PWM_Init();//��ʼ��CCP1��2ΪPWM���ģʽ//
	csb_init();//������
	Delay_ms(5000);//��ʱ2s���ȴ���Ƭ�������ȶ��������ɹ����
	Encoder_Init();
	
	//RA2=0;
	//Self_Check();
	
	while(1)
	{
		Trace_Control();
	}
	
}