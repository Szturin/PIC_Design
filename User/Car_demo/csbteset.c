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
unsigned int distance;
void main()
{
	LCD1602_GPIO_Init();//LCD1602���ų�ʼ��
	LCD1602_Init();//LCD1602��ʼ��    
	LCD1602_WriteNum(1,8,6,3);
	csb_init();//������

	while(1)
	{

		distance = csb();
		LCD1602_WriteNum(1,8,distance,3);
	}
}