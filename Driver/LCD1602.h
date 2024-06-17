#ifndef LCD1602_H
#define LCD1602_H
void LCD1602_Delay();
void LCD1602_WriteCommand(unsigned char Command);
void LCD1602_WriteData(unsigned char Data);
void LCD1602_Init(void);
void LCD1602_WriteChar(unsigned char row,unsigned char column,unsigned char ch);
void LCD1602_WriteString(unsigned char row,unsigned char column,unsigned char *String);
int LCD1602_Pow(unsigned char X,unsigned char Y);
void LCD1602_WriteNum(unsigned char row,unsigned char column,unsigned int number,unsigned char lenth);
void LCD1602_GPIO_Init();
#endif