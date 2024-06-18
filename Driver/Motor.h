#ifndef MOTOR_H
#define MOTOR_H
void Motor_GPIO_Init();
void Motor_CCP_PWM_Init();
void Motor_Speed_Set(int Speed1,int Speed2);
#endif