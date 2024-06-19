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
#include "..\..\Driver\csb.H"//���������Ƴ���

/*PIC��Ƭ��ϵͳ����Ӻ���*/
#include "..\..\System\Sys.H"//ϵͳ��ʼ������
#include "..\..\System\Timer.H"//��ʱ����ʼ������
#include "..\..\System\Delay.H"//��ʱ�ӳ���

unsigned char bluetooth;//���������ֽڴ洢����

int PWM1=0,PWM2=0;//PWM���
int PWM;//�ٶȻ�PWM

/*�ⲿ�жϲ���*/
unsigned int Counter_temp;//������תȦ����������
unsigned int Timer0_Counter;//��ʱ��0�����������
unsigned char m;
unsigned int Encoder_Counter;//�������

unsigned char Motor_Flag;//�������ģʽ
int Speed;//�ٶȲ���ֵ
int Speed_Set;//�ٶ�����ֵ
int Turn;//ת������ֵ

unsigned char Trace_Byte;


unsigned char Speed_left,Speed_right;//Ѱ���ٶ�
unsigned char Speed_Velcolity;//ֱ���ٶ�

unsigned int distance;

unsigned char yz[8]={0};
unsigned char mod;

unsigned char KeyNum;

unsigned int odomoter_counter;

int Turn_PWM;

unsigned char IO_flag=0;//
unsigned char Circle_Mode=0;
unsigned char Start_Find_flag=0;
unsigned char Bifurcate_Flag=0;//�ֲ�·�ڱ�־λ��0��ʾ��һ����1��ʾ�ڶ���
unsigned char Stop_Flag;

void yanzheng()//ѭ����֤
{
	unsigned char temp = mod;
	for(int i=0;i<8;i++)
	{
		yz[i] = temp %2;
		temp/=2;
	}	
}


/*�жϷ������*/
void interrupt Service()
{	
		
	if(RCIF==1)//���ڽ����ж�
	{
		bluetooth=RCREG;
		
		if(bluetooth == '#'){}
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

/*������*/
void main()
{
	/*�˿ڷ���*/
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
	
	LCD1602_GPIO_Init();//LCD1602���ų�ʼ��
	LCD1602_Init();//LCD1602��ʼ��    
	LCD1602_WriteString(1,0,"CAR 1");
	LCD1602_WriteString(2,0,"Speed:");//
	
	Usart_GPIO_Init();//����GPIO��ʼ��//
	Usart_Init();//���ڳ�ʼ��//	
	
	Motor_GPIO_Init();//���GPIO�ڳ�ʼ��//
	Motor_CCP_PWM_Init();//��ʼ��CCP1��2ΪPWM���ģʽ//
	csb_init();//������
	
	Delay_ms(5000);//��ʱ2s���ȴ���Ƭ�������ȶ��������ɹ����
	printf("���ڳ�ʼ�����!\r\n");
	Motor_Speed_Set(PWM1,PWM2);//
	Encoder_Init();
	while(1)
	{
		/*LCD1602��ӡ*/
		if(Circle_Mode == 0)//��ʼ��
		{
			Motor_Speed_Set(40,40);
			
			if(Start_PD() == -99)//��ʼ��ɨ���ж�
			{	
				Start_Find_flag = 1;//���������־λ
			}
			
			if(Encoder_Counter > 200)//�������
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
				Motor_Speed_Set(40,40);
				if(Encoder_Counter > 200)//�������
				{
					IO_flag = 1;
					Encoder_Counter=0;
					Circle_Mode = 2;//��Ȧ
				}					
			}
			else
			{
				//����Ѳ��
				Turn_PWM = Trace_PID();
				Speed_left = 40 - Turn_PWM;
				Speed_right = 40 + Turn_PWM;
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
					Motor_Speed_Set(40,40);
					if(Encoder_Counter > 120)//�������
					{
						Start_Find_flag = 0;
						IO_flag = 0;
						Encoder_Counter=0;
						Circle_Mode = 3;
					}					
				}
				else
				{
					//����Ѳ��
					Turn_PWM = Trace_PID();
					Speed_left = 40 - Turn_PWM;
					Speed_right = 40 + Turn_PWM;
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
		if(Circle_Mode == 0)//��ʼ��
		{
			Motor_Speed_Set(40,40);
			
			if(Start_PD() == -99)//��ʼ��ɨ���ж�
			{	
				Start_Find_flag = 1;//���������־λ
			}
			
			if(Encoder_Counter > 120)//�������
			{
				Encoder_Counter=0;
				IO_flag = 1;
				Circle_Mode = 1;
			}
		}
		else if(Circle_Mode == 1)//��һȦ����Ȧ
		{
			if(IO_flag == 0)//����Ѳ��
			{
				if(Start_PD() == -99)//��ʼ��ɨ���ж�
				{
					Start_Find_flag = 1;
				}
				
				if(Start_Find_flag)
				{
					Motor_Speed_Set(40,40);
					if(Encoder_Counter > 120)//�������
					{
						Start_Find_flag = 0;
						IO_flag = 0;
						Encoder_Counter=0;
						Circle_Mode = 2;
					}					
				}
				else
				{
					//����Ѳ��
					Turn_PWM = Trace_PID();
					Speed_left = 40 - Turn_PWM;
					Speed_right = 40 + Turn_PWM;
					Motor_Speed_Set(Speed_left,Speed_right);					
				}
			}	
			else//��Ȧ�̶�ת��
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
		else if(Circle_Mode == 2)//�ڶ�Ȧ����Ȧ
		{
			if(Start_PD() == -99)//��ʼ��ɨ���ж�
			{
				Start_Find_flag =1;
			}
			
			if(Start_Find_flag == 1)
			{
				Motor_Speed_Set(40,40);
				if(Encoder_Counter > 400)//�������
				{
					IO_flag = 1;
					Encoder_Counter=0;
					Circle_Mode = 3;//��Ȧ
				}					
			}
			else
			{
				//����Ѳ��
				Turn_PWM = Trace_PID();
				Speed_left = 40 - Turn_PWM;
				Speed_right = 40 + Turn_PWM;
				Motor_Speed_Set(Speed_left,Speed_right);					
			}
		}
		else if(Circle_Mode == 3)//����Ȧ����Ȧ
		{
			if(IO_flag == 0)//����Ѳ��
			{
				if(Start_PD() == -99)//��ʼ��ɨ���ж�
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
			else//��Ȧ�ֲ�·�̶�ת��
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