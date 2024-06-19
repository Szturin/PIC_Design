#include <pic.h>//PIC库
__CONFIG(0xFF29);//配置起始位
#include <stdio.h>//C语言库

/*PIC课程设计DEMO*/

/*PIC单片机驱动相关子函数*/
#include "..\..\Driver\LCD1602.H"//LCD1602子函数
#include "..\..\Driver\KeyBoard.H"//按键子函数
#include "..\..\Driver\spi.H"//spi通信
#include "..\..\Driver\iic.H"//iic通信
#include "..\..\Driver\Motor.H"//电机驱动
#include "..\..\Driver\Usart.H"//串口（蓝牙）通信
#include "..\..\Driver\Led.H"//Led
#include "..\..\Driver\Encoder.H"//霍尔编码器测速
#include "..\..\Driver\PID.H"//PID控制程序
#include "..\..\Driver\csb.H"//超声波控制程序

/*PIC单片机系统相关子函数*/
#include "..\..\System\Sys.H"//系统初始化程序
#include "..\..\System\Timer.H"//定时器初始化程序
#include "..\..\System\Delay.H"//延时子程序
unsigned int distance;
void main()
{
	LCD1602_GPIO_Init();//LCD1602引脚初始化
	LCD1602_Init();//LCD1602初始化    
	LCD1602_WriteNum(1,8,6,3);
	csb_init();//超声波

	while(1)
	{

		distance = csb();
		LCD1602_WriteNum(1,8,distance,3);
	}
}