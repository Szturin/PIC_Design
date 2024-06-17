#include <pic.h>
#include <stdio.h>

/*
	函    数	串口初始化
	参    数	无
	返 回 值	无
	特殊说明	无
*/

//putchar重定向
void putch(unsigned char ch)
{
    TXREG=ch;
    while(TRMT==0);
}

/*串口打印数组*/
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
	函    数	蓝牙串口初始化
	参    数	无
	返 回 值	无
	特殊说明	无
*/
void Usart_Init(void)
{
    TXSTA=0B00100100;//异步模式。发送8位数据，允许发送
    RCSTA=0B10010000;//允许串口工作，连续接收使能，接收8位数据
    SPBRG=12;//波特率设置为19200
    GIE=1;//总中断开启
    PEIE=1;//第二梯队中断开启
    RCIE=1;//开放USART接收中断	
}

