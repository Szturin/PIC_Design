#include<pic.h>

main()
{
TRISC=0X18;//�Ͽ�RC3��4�Ͷ˿ڵ�·֮��ĵ�����ϵ
SSPCON=8;//I2C��������ʽ
SSPSTAT=0X80;SSPCON2=0;
SSPADD=0X28;//�����ʳ�ֵ
SSPIF=0;
SSPEN=1;//ʹ��MSSPģ��
loop:
SEN=1;		//������ʼ�ź�
while(!SSPIF);SSPIF=0;//�ȴ��������
SSPBUF=0X92;//���ʹӻ��ĵ�ַ0X92��д����λ����������
while(!SSPIF);SSPIF=0;//�ȴ��������
SSPBUF=0X45;		//��������
while(!SSPIF);SSPIF=0;//�ȴ��������
PEN=1;		//����ֹͣ�źţ�I2C���ӽ���
while(!SSPIF);SSPIF=0;//�ȴ��������
goto loop;
}