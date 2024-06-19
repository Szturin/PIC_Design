#ifndef IIC_PIC_Driver_H
#define IIC_PIC_Driver_H

void Encoder_Init();
void InitI2C(void);
void I2C_Start(void);
void I2C_ReStart(void);
void I2C_Send_ACK(void);
void I2C_Send_NACK(void);
uint8_t I2C_Write_Byte(unsigned char Byte);
unsigned char I2C_Read_Byte(void);
void IIC_Trace_Init();
unsigned char IIC_Trace_GetData();
#endif
