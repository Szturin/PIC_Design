#include <pic.h>

void Encoder_Init()
{
    TRISB0=1;//定义RB0为输入口

	/*外部中断配置*/
    GIE=1;//开启总中断
	INTE=1;//允许外部中断
	INTF=0;//外部中断标志位置1

    OPTION_REG=0B01000111;//外部中断上跳变有效，定时器0前分频256

	/*定时器0中断配置*/
	T0IE=1;
	T0IF=0;
	TMR0=60;
}
