#include <pic.h>

float filt_velocity=0;
float last_filt_velocity=0;

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

/*ËÙ¶È»·*/
int Velocity_PID(int velocity,int velocity_calcu)
{
	float a = 0.3;//Ò»½×»¥²¹ÂË²¨
	
	if(velocity_calcu < 0)
	{
		velocity = -velocity;
	}
	
	Velocity.error = velocity - velocity_calcu;//Îó²î
	filt_velocity = a*Velocity.error+(1-a)*last_filt_velocity;
	Velocity.error_sum += filt_velocity ;//Îó²îÀÛ¼Ó
	I_amplitude_limiting(20,&Velocity.error_sum);
	last_filt_velocity = filt_velocity;
	
	return ((int)(filt_velocity * Velocity.Kp + Velocity.error_sum * Velocity.Ki);//PID¿ØÖÆÆ÷ÏìÓ¦½á?? 
}