#ifndef IIC_H
#define IIC_H
unsigned char IIC_ReadReg_Byte(unsigned char MachineAddr,unsigned char RegAddr);
void IIC_WriteReg_Byte(unsigned char MachineAddr,unsigned char RegAddr,unsigned char Data);
unsigned char Trace_Read_Data();
unsigned char Trace_Write_Command();
#endif