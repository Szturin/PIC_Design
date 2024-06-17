#include<pic.h>

main()
{
TRISC=0X18;//断开RC3、4和端口电路之间的电气联系
SSPCON=8;//I2C主控器方式
SSPSTAT=0X80;SSPCON2=0;
SSPADD=0X28;//波特率初值
SSPIF=0;
SSPEN=1;//使能MSSP模块
loop:
SEN=1;		//发送起始信号
while(!SSPIF);SSPIF=0;//等待发送完毕
SSPBUF=0X92;//发送从机的地址0X92，写控制位，建立连接
while(!SSPIF);SSPIF=0;//等待发送完毕
SSPBUF=0X45;		//发送数据
while(!SSPIF);SSPIF=0;//等待发送完毕
PEN=1;		//发送停止信号，I2C连接结束
while(!SSPIF);SSPIF=0;//等待发送完毕
goto loop;
}