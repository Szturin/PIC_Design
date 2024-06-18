#include <pic.h>
/*矩阵按键4x4函数*/
#define KeyPORT PORTB//宏定义端口，便于替换

static unsigned char x;//按键扫描变量
static unsigned char y;
unsigned char Key_Val;
bit RBIF_FLAG=0;

/*
	函    数	4x4矩阵按键扫描
	参    数	无
	返 回 值	按键对应的数值
	特殊说明	扫描方式：端口整体判断
*/

unsigned char Test_Key_Read_Matrix()
{
	unsigned char result = 0x00;
	KeyPORT=0xEF;//1110 		按键端口bit4输出低电平，扫描第1列
	result = KeyPORT & 0x0F;//读按键端口，结果清零高四位
	if(result != 0x0f)//判断按键端口低四位是否发生电平变化
	{
		switch(result)
		{
			case 0x0E:return 1;
			case 0x0D:return 2;
			case 0x0B:return 3;
			case 0x07:return 4;
		}	
	}
	KeyPORT=0xDF;//1101			按键端口bit5输出低电平，扫描第2列
	result = KeyPORT & 0x0F;
	if(result != 0x0f)//判断按键端口低四位是否发生电平变化
	{
		switch(result)
		{
			case 0x0E:return 5;
			case 0x0D:return 6;
			case 0x0B:return 7;
			case 0x07:return 8;	
		}	
	}
	KeyPORT=0xBF;//1011			按键端口bit6输出低电平，扫描第3列
	result = KeyPORT & 0x0F;	
	if(result != 0x0f)//判断按键端口低四位是否发生电平变化
	{
		switch(result)
		{
			case 0x0E:return 9;
			case 0x0D:return 10;
			case 0x0B:return 11;
			case 0x07:return 12;
		}			
	}
	KeyPORT=0x7F;//0111			按键端口bit4输出低电平，扫描第4列
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

/*PIC16F877A电平变换中断配置*/
void PIC_RBIE_Init()
{
	TRISB=0xF0;
	nRBPU=0;
	GIE=RBIE=1;
	RBIF=0;y=PORTB;PORTB=0;
}

/*电平变化中断按键扫描*/
unsigned char RBIE_Key_Proc()
{
	y=y^PORTB;//判断列线
	TRISB=0x0F;
	x=PORTB&0x0f;//判断行线
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