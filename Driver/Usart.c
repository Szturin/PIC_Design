#include <pic.h>
#include <stdio.h>

/*
	��    ��	���ڳ�ʼ��
	��    ��	��
	�� �� ֵ	��
	����˵��	��
*/

//putchar�ض���
void putch(unsigned char ch)
{
    TXREG=ch;
    while(TRMT==0);
}

/*���ڴ�ӡ����*/
void Serial_PrintString(unsigned char *String)
{
	while(*String != '\0')
	{
		printf("%c",*String++);
	}
}

void Usart_GPIO_Init(void)
{
	TRISC6=1;
	TRISC7=1;
}
/*
	��    ��	�������ڳ�ʼ��
	��    ��	��
	�� �� ֵ	��
	����˵��	��
*/
void Usart_Init(void)
{
    TXSTA=0B00100100;//�첽ģʽ������8λ���ݣ�������
    RCSTA=0B10010000;//�����ڹ�������������ʹ�ܣ�����8λ����
    SPBRG=12;//����������Ϊ19200
    GIE=1;//���жϿ���
    PEIE=1;//�ڶ��ݶ��жϿ���
    RCIE=1;//����USART�����ж�	
}

