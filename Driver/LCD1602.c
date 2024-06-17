#include <pic.h>

/*LCD1602的宏定义，方便替换引脚，对象化设计*/
#define RS 	RA5//RS为寄存器选择线
#define RW RA2	//RW为读写信号线
#define E RA3	//E为使能端
#define DATA PORTD

/*延时函数*/
void LCD1602_Delay()
{
	unsigned int i;
	for(i=999;i>0;i--);
}

//Delay的作用？
//:延时，等待LCD1602处理完数据

/*
	函    数	LCD1602写入控制命令（1字节）
	参    数	要写入的命令
	返 回 值	无
	特殊说明	无
*/
void LCD1602_WriteCommand(unsigned char Command)
{
	DATA=Command;
	RS=0;RW=0;E=0;LCD1602_Delay();E=1;
}

/*
	函    数	LCD1602写入数据（1字节）
	参    数	要写入的数据
	返 回 值	无
	特殊说明	无
*/
void LCD1602_WriteData(unsigned char Data)
{
	DATA=Data;
	RS=1;RW=0;E=0;LCD1602_Delay();E=1;
}

/*LCD1602初始化函数*/
void LCD1602_Init(void)
{
	DATA=0X00;//当前数据口清理
	LCD1602_Delay();//刚上电LCD复位速度较慢
	LCD1602_WriteCommand(0x01);//清屏//允许命令字节发送，E端输入下跳变信号，并且延时一段时间
	LCD1602_WriteCommand(0x38);//8位2行5X7点阵
	LCD1602_WriteCommand(0x0C);//显示器开、光标关、闪烁开
	LCD1602_WriteCommand(0x06);//文字不动、光标自动右移
	LCD1602_WriteCommand(0x80);//光标指向第一行位置
}

/*
	函    数	LCD1602写字符
	参    数	行，起始列，要写入的字符
	返 回 值	无
	特殊说明	无
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
	函    数	LCD1602写字符串
	参    数	行，起始列，要写入的数组/字符串
	返 回 值	无
	特殊说明	无
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

	/*数据处理*/
	while(*String != '\0')//判断指针指向的RAM内数据是否为'空'
	{
		LCD1602_WriteData(*String++);
	}
}

/*
	函    数	X的Y次方函数
	参    数	X,Y,字符型
	返 回 值	长整型
	特殊说明	无
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
	函    数	LCD1602写入无符号整型数
	参    数	行，起始列，要写入的数据，数据长度
	返 回 值	无
	特殊说明	无
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
	/*数据处理*/
	for(i=0;i<lenth;i++)
	{
		LCD1602_WriteData(number/LCD1602_Pow(10,lenth-i-1)%10+'0');//保证当长度超过数据位数时，高位为0
		//注意：LCD1602打印的所有数据均按照ASCII表
	}
}

/*
	函    数	LCD1602写入长整数
	参    数	行，起始列，要写入的数据，数据长度
	返 回 值	无
	特殊说明	无
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
	/*数据处理*/
	if(lenth>5)
	{
		for(i=0;i<lenth;i++)
		{
			LCD1602_WriteData(number/LCD1602_Pow(10,lenth-i-1)%10+'0');//保证当长度超过数据位数时，高位为0
			//注意：LCD1602打印的所有数据均按照ASCII表
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