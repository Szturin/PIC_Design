#include <pic.h>
/*���󰴼�4x4����*/
#define KeyPORT PORTB//�궨��˿ڣ������滻

static unsigned char x;//����ɨ�����
static unsigned char y;
unsigned char Key_Val;
bit RBIF_FLAG=0;

/*
	��    ��	4x4���󰴼�ɨ��
	��    ��	��
	�� �� ֵ	������Ӧ����ֵ
	����˵��	ɨ�跽ʽ���˿������ж�
*/

unsigned char Test_Key_Read_Matrix()
{
	unsigned char result = 0x00;
	KeyPORT=0xEF;//1110 		�����˿�bit4����͵�ƽ��ɨ���1��
	result = KeyPORT & 0x0F;//�������˿ڣ�����������λ
	if(result != 0x0f)//�жϰ����˿ڵ���λ�Ƿ�����ƽ�仯
	{
		switch(result)
		{
			case 0x0E:return 1;
			case 0x0D:return 2;
			case 0x0B:return 3;
			case 0x07:return 4;
		}	
	}
	KeyPORT=0xDF;//1101			�����˿�bit5����͵�ƽ��ɨ���2��
	result = KeyPORT & 0x0F;
	if(result != 0x0f)//�жϰ����˿ڵ���λ�Ƿ�����ƽ�仯
	{
		switch(result)
		{
			case 0x0E:return 5;
			case 0x0D:return 6;
			case 0x0B:return 7;
			case 0x07:return 8;	
		}	
	}
	KeyPORT=0xBF;//1011			�����˿�bit6����͵�ƽ��ɨ���3��
	result = KeyPORT & 0x0F;	
	if(result != 0x0f)//�жϰ����˿ڵ���λ�Ƿ�����ƽ�仯
	{
		switch(result)
		{
			case 0x0E:return 9;
			case 0x0D:return 10;
			case 0x0B:return 11;
			case 0x07:return 12;
		}			
	}
	KeyPORT=0x7F;//0111			�����˿�bit4����͵�ƽ��ɨ���4��
	result = KeyPORT & 0x0F;
	if(result != 0x0f)
	{
		switch(result)
		{
			case 0x0E:return 13;
			case 0x0D:return 14;
			case 0x0B:return 15;
			case 0x07:return 16;
		}		
	}
}

/*PIC16F877A��ƽ�任�ж�����*/
void PIC_RBIE_Init()
{
	TRISB=0xF0;
	nRBPU=0;
	GIE=RBIE=1;
	RBIF=0;y=PORTB;PORTB=0;
}

/*��ƽ�仯�жϰ���ɨ��*/
unsigned char RBIE_Key_Proc()
{
	y=y^PORTB;//�ж�����
	TRISB=0x0F;
	x=PORTB&0x0f;//�ж�����
	if(y==0x10 && x==0x0e) {Key_Val= 0;}
	if(y==0x10 && x==0x0d) {Key_Val= 4;}
	if(y==0x10 && x==0x0b) {Key_Val= 8;}
	if(y==0X10 && x==0x07) {Key_Val= 0x0C;} 
		
	if(y==0x20 && x==0x0e) {Key_Val= 1;}
	if(y==0x20 && x==0x0d) {Key_Val= 5;}
	if(y==0x20 && x==0x0b) {Key_Val= 9;}
	if(y==0x20 && x==0x07) {Key_Val= 0x0D;}
		
	if(y==0x40 && x==0x0e) {Key_Val= 2;}
	if(y==0x40 && x==0x0d) {Key_Val= 6;}
	if(y==0x40 && x==0x0b) {Key_Val= 0X0A;}
	if(y==0x40 && x==0x07) {Key_Val= 0x0E;}
		
	if(y==0x80 && x==0x0e) {Key_Val= 3;}
	if(y==0x80 && x==0x0d) {Key_Val= 7;}
	if(y==0x80 && x==0x0b) {Key_Val= 0X0B;}
	if(y==0x80 && x==0x07) {Key_Val= 0x0F;}	
			
	TRISB=0xF0;PORTB=0;
	y=PORTB;
	return Key_Val;
}