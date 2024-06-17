#include<pic.h>

void interrupt IIC()
{char temp;	
temp=SSPBUF;
PORTD=temp;  //是数据,显示收到的数据			
SSPIF=0;//     
}  
main()
{TRISD=0;PORTD=0;
TRISC=0X18;//断开RC3、4和端口电路之间的电气联系
SSPCON=0B00110110;//I2C被控器方式，7位寻址
SSPSTAT=0;SSPCON2=0x80;//GCEN=1
SSPADD=0X92;//从机地址
GIE=1;PEIE=1;SSPIE=1;SSPIF=0;
SSPEN=1;//使能MSSP模块
loop:

goto loop;
}

