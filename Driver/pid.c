#include <pic.h>

float filt_velocity=0;
float last_filt_velocity=0;

#define Trace_PIN0		RC0
#define Trace_PIN1		RC3
#define Trace_PIN2		RE0
#define Trace_PIN3		RE1
#define Trace_PIN4		RE2
#define Trace_PIN5		RA4
#define Trace_PIN6		RC4
#define Trace_PIN7		RC5

unsigned char Trace_Byte;

typedef struct 
{
	float Kp;
	float Ki;
	float Kd;
	float error;
	float last_error;
	float error_sum;
	float error_difference;
	float velocity_sum;
}PID;

PID Velocity;


void Velociy_PID_Init()
{
	Velocity.Kp=5.8;
	Velocity.Ki=0.06;
	Velocity.Kd=0;	
}



void I_amplitude_limiting(unsigned char number,unsigned char *Error_sum)
{
	if(*Error_sum > number)
	{
		*Error_sum = number;
	}
	
	if(*Error_sum <- number)
	{
		*Error_sum = -number;
	}
}

/*�ٶȻ�*/
int Velocity_PID(int velocity,int velocity_calcu)
{
	float a = 0.3;//һ�׻����˲�
	
	if(velocity_calcu < 0)
	{
		velocity = -velocity;
	}
	
	Velocity.error = velocity - velocity_calcu;//���
	filt_velocity = a*Velocity.error+(1-a)*last_filt_velocity;
	Velocity.error_sum += filt_velocity ;//����ۼ�
	I_amplitude_limiting(20,&Velocity.error_sum);
	last_filt_velocity = filt_velocity;
	
	return ((int)(filt_velocity * Velocity.Kp + Velocity.error_sum * Velocity.Ki);//PID��������Ӧ��?? 
}

int Trace_PID()
{
	float Kp=3.0;
	float Kd=1.0;
	
	static int turn_err;
	static int last_err;
	static int err_difference;
	
	Trace_Byte = (RC0<<7|RC3<<6|RE0<<5|RE1<<4|RE2<<3|RA4<<2|RC4<<1|RC5);
	
	
	if( Trace_PIN4==0 && Trace_PIN3 == 0 )//ֱ��
	{
		turn_err=0;
	}
	else if(Trace_PIN2 == 0 && Trace_PIN3 == 0)//��Сת
	{
		turn_err=-1;
	}
	else if(Trace_PIN2 == 0 && Trace_PIN3 == 1)//�Ҳ��⵽���ߣ���ת
	{
		turn_err=-2;
	}
	else if(Trace_PIN5 == 0 && Trace_PIN4 == 0)//��Сת
	{
		turn_err=1;
	}
	else if(Trace_PIN5 == 0 && Trace_PIN4 == 1)//��߼�⵽���ߣ���ת
	{
		turn_err=2;
	}
	
	err_difference= turn_err - last_err;
	last_err= turn_err;
	
	return (int)(turn_err*Kp + err_difference*Kd);
}