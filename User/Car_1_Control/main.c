#include<pic.h>

void interrupt IIC()
{char temp;	
temp=SSPBUF;
PORTD=temp;  //������,��ʾ�յ�������			
SSPIF=0;//     
}  
main()
{TRISD=0;PORTD=0;
TRISC=0X18;//�Ͽ�RC3��4�Ͷ˿ڵ�·֮��ĵ�����ϵ
SSPCON=0B00110110;//I2C��������ʽ��7λѰַ
SSPSTAT=0;SSPCON2=0x80;//GCEN=1
SSPADD=0X92;//�ӻ���ַ
GIE=1;PEIE=1;SSPIE=1;SSPIF=0;
SSPEN=1;//ʹ��MSSPģ��
loop:

goto loop;
}

