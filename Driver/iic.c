#include <pic.h>


#define DELAY_TIME	10
#define sda RA0
#define scl RA1

//
static void I2C_Delay(unsigned char n)
{
    do
    {
        _nop();_nop();_nop();_nop();_nop();
        _nop();_nop();_nop();_nop();_nop();
        _nop();_nop();_nop();_nop();_nop();		
    }
    while(n--);      	
}

//
void I2CStart(void)
{
    sda = 1;
    scl = 1;
	I2C_Delay(DELAY_TIME);
    sda = 0;
	I2C_Delay(DELAY_TIME);
    scl = 0;    
}

//
void I2CStop(void)
{
    sda = 0;
    scl = 1;
	I2C_Delay(DELAY_TIME);
    sda = 1;
	I2C_Delay(DELAY_TIME);
}

//
void I2CSendByte(unsigned char byt)
{
    unsigned char i;
	
    for(i=0; i<8; i++){
        scl = 0;
		I2C_Delay(DELAY_TIME);
        if(byt & 0x80){
            sda = 1;
        }
        else{
            sda = 0;
        }
		I2C_Delay(DELAY_TIME);
        scl = 1;
        byt <<= 1;
		I2C_Delay(DELAY_TIME);
    }
	
    scl = 0;  
}

//
unsigned char I2CReceiveByte(void)
{
	unsigned char da;
	unsigned char i;
	for(i=0;i<8;i++){   
		scl = 1;
		I2C_Delay(DELAY_TIME);
		da <<= 1;
		if(sda) 
			da |= 0x01;
		scl = 0;
		I2C_Delay(DELAY_TIME);
	}
	return da;    
}

//
unsigned char I2CWaitAck(void)
{
	unsigned char ackbit;
	
    scl = 1;
	I2C_Delay(DELAY_TIME);
    ackbit = sda; 
    scl = 0;
	I2C_Delay(DELAY_TIME);
	
	return ackbit;
}

//
void I2CSendAck(unsigned char ackbit)
{
    scl = 0;
    sda = ackbit; 
	I2C_Delay(DELAY_TIME);
    scl = 1;
	I2C_Delay(DELAY_TIME);
    scl = 0; 
	sda = 1;
	I2C_Delay(DELAY_TIME);
}


void DAC_Output(unsigned char Data)
{
	I2CStart();
	I2CSendByte(0x90);
	I2CWaitAck();
	I2CSendByte(0x41);
	I2CWaitAck();
	I2CSendByte(Data);
	I2CWaitAck();
	I2CStop();
}

unsigned char IIC_ReadReg_Byte(unsigned char MachineAddr,unsigned char RegAddr)
{
	unsigned char Data;
	
	I2CStart();
	I2CSendByte(MachineAddr);
	I2CWaitAck();
	
	/*
	I2CSendByte(RegAddr);
	I2CWaitAck();
	*/
	
	I2CStart();
	I2CSendByte(MachineAddr+1);		
	I2CWaitAck();
	
	
	Data = I2CReceiveByte();
	I2CSendAck(0);
	I2CStop();
	return Data;
}

void IIC_WriteReg_Byte(unsigned char MachineAddr,unsigned char RegAddr,unsigned char Data)
{
	I2CStart();
	I2CSendByte(MachineAddr);
	I2CWaitAck();
	/*
	I2CSendByte(RegAddr);
	I2CWaitAck();
	*/
	I2CSendByte(Data);
	I2CWaitAck();
	I2CStop();
}

void IIC_WriteReg_Str(unsigned char MachineAddr,unsigned char RegAddr,unsigned char *String,unsigned char Length)
{
	I2CStart();
	I2CSendByte(MachineAddr);
	I2CWaitAck();
	I2CSendByte(RegAddr);
	I2CWaitAck();
	while(Length--)
	{
		I2CSendByte(*String++);
		I2CWaitAck();
		I2C_Delay(200);
	}
	I2CStop();	
}

void IIC_ReadReg_Str(unsigned char MachineAddr,unsigned char RegAddr,unsigned char *String,unsigned char Length)
{
	I2CStart();
	I2CSendByte(MachineAddr);
	I2CWaitAck();
	I2CSendByte(RegAddr);
	I2CWaitAck();

	I2CStart();
	I2CSendByte(MachineAddr+1);		
	I2CWaitAck();

	while(Length--)
	{
		if(Length)
		{
			*String++ = I2CReceiveByte();
			I2CSendAck(1);
		}
		else
		{
			I2CSendAck(0);
		}
	}
	I2CStop();
}

unsigned char Trace_Write_Command()
{
	I2CStart();
	I2CSendByte(0x4C<<1);
	
	if(I2CWaitAck()){return 0xFF;}
	
	I2CSendByte(0xDD);
	
	if(I2CWaitAck()){return 0xFE;}
	I2CStop();
}

unsigned char Trace_Read_Data()
{
	unsigned char Data;
	I2CStart(); 
	I2CSendByte(0x4C<<1|0x01);
	if(I2CWaitAck()){return 0xFD;}
	
	Data=I2CReceiveByte();
	I2CSendAck(0);
	I2CStop();
	return Data;
}

