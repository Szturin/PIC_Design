#include <pic.h>

void Delay_ms(unsigned int x) 
{
    while(x--) 
	{
       _nop();
    }
}

void delay_us(unsigned int x) 
{
    while(x--) 
	{
        
    }
}
