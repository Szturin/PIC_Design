#include<pic.h>
#include "csb.h"
#include "LCD1602.h"

#define trig RA0
#define echo RA1

unsigned int dis;
static volatile char table[16]={0x30,0x31,0x32,0x33,0x34,0x35,
0x36,0x37,0x38,0x39,0x41,0x42,0x43,0x44,0x45,0x46};

void Delay12us()		//@4.000MHz
{
	unsigned char i;
	_nop();
	_nop();
	i=20;
	while(i--);
}

void csb_init()//超声波初始化
{	
	GIE=1;PEIE=1;TMR1IE=1;TMR1IF=0;

	TRISE1=0;TRISE2=1;
	ADCON1=7;TRISA=0;TRISD=0;

	trig = 0;
	echo = 1;
	
	T1CON=0B00000000;
	TMR1H=0x00;
	TMR1L=0x00;
	TMR1ON=0x00;
}

unsigned int csb()//echo平时为低电平 当接收到超声波输出高电平 高电平时间代入公式可换算为距离
{
	unsigned int time;
	unsigned char ah,al;
	dis = 0;
	TMR1ON = 0;
	TMR1H = 0x00;
	TMR1L = 0x00;

	trig = 1;//trig控制脉冲信号
	Delay12us();
	trig = 0;

	while(!echo);//等待低电平上跳高电平
	TMR1ON=1;
	while(echo == 1 && TMR1IF == 0);
	ah = TMR1H;
	al = TMR1L;
	TMR1ON=0;
	if(TMR1IF == 0)
    {
       	time = ah<<8|al;
       	return (time*0.01723);		
	}
	else
	{
		TMR1IF = 0;
		return 0;
	}
}
