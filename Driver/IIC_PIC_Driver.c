#include <pic.h>
// Define i2c pins
#define SDA			RC4				// Data pin for i2c
#define SCK			RC3				// Clock pin for i2c
#define SDA_DIR		TRISC4			// Data pin direction
#define SCK_DIR		TRISC3			// Clock pin direction

// Define i2c speed
#define I2C_SPEED	100				// kbps
#define Device_Address_Trace 0x9C

//Function Declarations
void InitI2C(void);
void I2C_Start(void);
void I2C_ReStart(void);
void I2C_Stop(void);
void I2C_Send_ACK(void);
void I2C_Send_NACK(void);
uint8_t  I2C_Write_Byte(unsigned char);
unsigned char I2C_Read_Byte(void);

void InitI2C(void)
{	
	SDA_DIR = 1;		// Make SDA and 
	SCK_DIR = 1;		// SCK pins input

	SSPADD  = ((_XTAL_FREQ/4000)/I2C_SPEED) - 1; // ????I2C???	
	SSPSTAT = 0x80;		// Slew Rate control is disabled
	SSPCON  = 0x28;		// ???????????
}
// Function Purpose: I2C_Start sends start bit sequence
void I2C_Start(void)
{
	SEN = 1;			// Send start bit
	while(!SSPIF);		// Wait for it to complete
	SSPIF = 0;			// Clear the flag bit
}

// Function Purpose: I2C_ReStart sends start bit sequence
void I2C_ReStart(void)
{
	RSEN = 1;			// Send Restart bit
	while(!SSPIF);		// Wait for it to complete
	SSPIF = 0;			// Clear the flag bit
}


//Function : I2C_Send_ACK sends ACK bit sequence
void I2C_Send_ACK(void)
{
	ACKDT = 0;			// 0 means ACK
	ACKEN = 1;			// Send ACKDT value
	while(!SSPIF);		// Wait for it to complete
	SSPIF = 0;			// Clear the flag bit
}


//Function : I2C_Send_NACK sends NACK bit sequence
void I2C_Send_NACK(void)
{
	ACKDT = 1;			// 1 means NACK
	ACKEN = 1;			// Send ACKDT value
	while(!SSPIF);		// Wait for it to complete
	SSPIF = 0;			// Clear the flag bit
}

// Function Purpose: I2C_Write_Byte transfers one byte
uint8_t I2C_Write_Byte(unsigned char Byte)
{
	SSPBUF = Byte;		// Send Byte value
	while(!SSPIF);		// Wait for it to complete
	SSPIF = 0;			// Clear the flag bit

	return ACKSTAT;		// Return ACK/NACK from slave
}

// Function Purpose: I2C_Read_Byte reads one byte
unsigned char I2C_Read_Byte(void)
{
	RCEN = 1;			// Enable reception of 8 bits
	while(!SSPIF);		// Wait for it to complete
	SSPIF = 0;			// Clear the flag bit
 
    return SSPBUF;		// Return received byte
}

void IIC_Trace_Init()
{
	InitI2C();							// 


	
}

unsigned char IIC_Trace_GetData()
{
	unsigned char Byte = 0;								// 

	I2C_Start();										// 

	I2C_Write_Byte(Device_Address_Trace + 1);		
	I2C_Send_ACK();

	Byte = I2C_Read_Byte();								// Read byte from EEPROM

	I2C_Send_NACK();									// Give NACK to stop reading
	I2C_Stop();											// Stop i2c communication

	return Byte;				// Return the byte received from 24LC64 EEPROM
	
}

