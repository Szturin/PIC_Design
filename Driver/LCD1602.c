#include <pic.h>

/*LCD1602�ĺ궨�壬�����滻���ţ��������*/
#define RS 	RA5//RSΪ�Ĵ���ѡ����
#define RW RA2	//RWΪ��д�ź���
#define E RA3	//EΪʹ�ܶ�
#define DATA PORTD

/*��ʱ����*/
void LCD1602_Delay()
{
	unsigned int i;
	for(i=999;i>0;i--);
}

//Delay�����ã�
//:��ʱ���ȴ�LCD1602����������

/*
	��    ��	LCD1602д��������1�ֽڣ�
	��    ��	Ҫд�������
	�� �� ֵ	��
	����˵��	��
*/
void LCD1602_WriteCommand(unsigned char Command)
{
	DATA=Command;
	RS=0;RW=0;E=0;LCD1602_Delay();E=1;
}

/*
	��    ��	LCD1602д�����ݣ�1�ֽڣ�
	��    ��	Ҫд�������
	�� �� ֵ	��
	����˵��	��
*/
void LCD1602_WriteData(unsigned char Data)
{
	DATA=Data;
	RS=1;RW=0;E=0;LCD1602_Delay();E=1;
}

/*LCD1602��ʼ������*/
void LCD1602_Init(void)
{
	DATA=0X00;//��ǰ���ݿ�����
	LCD1602_Delay();//���ϵ�LCD��λ�ٶȽ���
	LCD1602_WriteCommand(0x01);//����//���������ֽڷ��ͣ�E�������������źţ�������ʱһ��ʱ��
	LCD1602_WriteCommand(0x38);//8λ2��5X7����
	LCD1602_WriteCommand(0x0C);//��ʾ���������ء���˸��
	LCD1602_WriteCommand(0x06);//���ֲ���������Զ�����
	LCD1602_WriteCommand(0x80);//���ָ���һ��λ��
}

/*
	��    ��	LCD1602д�ַ�
	��    ��	�У���ʼ�У�Ҫд����ַ�
	�� �� ֵ	��
	����˵��	��
*/
void LCD1602_WriteChar(unsigned char row,unsigned char column,unsigned char ch)
{
	unsigned char Location;
	if(row == 1)
	{
		Location = 0x80 + column;
	}
	else if(row == 2)
	{
		Location = 0xC0 + column;
	}

	LCD1602_WriteCommand(Location);
	
	LCD1602_WriteData(ch);
}
/*
	��    ��	LCD1602д�ַ���
	��    ��	�У���ʼ�У�Ҫд�������/�ַ���
	�� �� ֵ	��
	����˵��	��
*/
void LCD1602_WriteString(unsigned char row,unsigned char column,unsigned char *String)
{
	unsigned char Location;
	if(row == 1)
	{
		Location = 0x80 + column;
	}
	else if(row == 2)
	{
		Location = 0xC0 + column;
	}
	LCD1602_WriteCommand(Location);

	/*���ݴ���*/
	while(*String != '\0')//�ж�ָ��ָ���RAM�������Ƿ�Ϊ'��'
	{
		LCD1602_WriteData(*String++);
	}
}

/*
	��    ��	X��Y�η�����
	��    ��	X,Y,�ַ���
	�� �� ֵ	������
	����˵��	��
*/
long LCD1602_Pow(unsigned char X,unsigned char Y)
{
	unsigned char i;
	long result=1;
	for(i=0;i<Y;i++)
	{
		result*=X;
	}
	return result;
}

/*
	��    ��	LCD1602д���޷���������
	��    ��	�У���ʼ�У�Ҫд������ݣ����ݳ���
	�� �� ֵ	��
	����˵��	��
*/
void LCD1602_WriteNum(unsigned char row,unsigned char column,unsigned int number,unsigned char lenth)
{
	unsigned char Location;
	unsigned char i;
	if(row == 1)
	{
		Location = 0x80 + column;
	}
	else if(row == 2)
	{
		Location = 0xC0 + column;
	}

	LCD1602_WriteCommand(Location);
	/*���ݴ���*/
	for(i=0;i<lenth;i++)
	{
		LCD1602_WriteData(number/LCD1602_Pow(10,lenth-i-1)%10+'0');//��֤�����ȳ�������λ��ʱ����λΪ0
		//ע�⣺LCD1602��ӡ���������ݾ�����ASCII��
	}
}

/*
	��    ��	LCD1602д�볤����
	��    ��	�У���ʼ�У�Ҫд������ݣ����ݳ���
	�� �� ֵ	��
	����˵��	��
*/
void LCD1602_WriteLongNum(unsigned char row,unsigned char column,long number,unsigned char lenth)
{
	unsigned char Location;
	unsigned char i;
	if(row == 1)
	{
		Location = 0x80 + column;
	}
	else if(row == 2)
	{
		Location = 0xC0 + column;
	}

	LCD1602_WriteCommand(Location);
	/*���ݴ���*/
	if(lenth>5)
	{
		for(i=0;i<lenth;i++)
		{
			LCD1602_WriteData(number/LCD1602_Pow(10,lenth-i-1)%10+'0');//��֤�����ȳ�������λ��ʱ����λΪ0
			//ע�⣺LCD1602��ӡ���������ݾ�����ASCII��
		}			
	}
}

void LCD1602_GPIO_Init()
{
	TRISA2=0;
	TRISA5=0;
	TRISA3=0;
	TRISD=0x00;
	ADCON1=0x07;
}