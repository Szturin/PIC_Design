#include <pic.h>

#define Trace_PIN0		RC0
#define Trace_PIN1		RC3
#define Trace_PIN2		RE0
#define Trace_PIN3		RE1
#define Trace_PIN4		RE2
#define Trace_PIN5		RA4
#define Trace_PIN6		RC4
#define Trace_PIN7		RC5

unsigned char Trace_Byte;

float Kp=3.2;
int Kd=0;
static int turn_err;
static int last_err;
static int err_difference;
	
void Trace_GPIO_Init()
{
	TRISE0=1;
	TRISE1=1;
	TRISE2=1;
	TRISA4=1;
	TRISC0=1;	
	TRISC3=1;
	TRISC4=1;
	TRISC5=1;
}

int Trace_PID()
{	
	Trace_Byte = (RC0<<7|RC3<<6|RE0<<5|RE1<<4|RE2<<3|RA4<<2|RC4<<1|RC5);
	
	switch(Trace_Byte)
	{
		//直行
		case 0B11100111: 
			turn_err=0;
			break;
		case 0B11110111:
			turn_err=-1;
			break;
		case 0B11101111:
			turn_err=1;
			break;
		//左转
		case 0B11001111:
			turn_err=2;
			break;
		case 0B11011111:
			turn_err=3;
			break;
		case 0B10011111:
			turn_err=4;
			break;
		case 0B10111111:
			turn_err=5;
			break;
		case 0B00111111:
			turn_err=6;
			break;
		case 0B01111111:
			turn_err=7;
			break;

		//右转
		case 0B11110011:
			turn_err=-2;
			break;
		case 0B11111011:
			turn_err=-3;
			break;
		case 0B11111001:
			turn_err=-4;
			break;
		case 0B11111101:
			turn_err=-5;
			break;
		case 0B11111100:
			turn_err=-6;
			break;
		case 0B11111110:
			turn_err=-7;
			break;
	}
	
	err_difference= turn_err - last_err;
	
	last_err= turn_err;
	
	return (int)(turn_err*Kp + err_difference*Kd);
}

	/*
	if( Trace_PIN4==0 && Trace_PIN3 == 0 )//直行
	{
		turn_err=0;
	}
	else if(Trace_PIN2 == 0 && Trace_PIN3 == 0)//右小转
	{
		turn_err=-1;
	}
	else if(Trace_PIN2 == 0 && Trace_PIN3 == 1)//右侧检测到黑线，右转
	{
		turn_err=-2;
	}
	else if(Trace_PIN5 == 0 && Trace_PIN4 == 0)//左小转
	{
		turn_err=1;
	}
	else if(Trace_PIN5 == 0 && Trace_PIN4 == 1)//左边监测到黑线，左转
	{
		turn_err=2;
	}
	*/