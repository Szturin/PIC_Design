opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 9453"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 2 "D:\6_pic_project\00_Design_Flow_Car\User\Car_demo\Car_demo.c"
	psect config,class=CONFIG,delta=2 ;#
# 2 "D:\6_pic_project\00_Design_Flow_Car\User\Car_demo\Car_demo.c"
	dw 0xFF29 ;#
	FNCALL	_main,_LCD1602_GPIO_Init
	FNCALL	_main,_LCD1602_Init
	FNCALL	_main,_LCD1602_WriteString
	FNCALL	_main,_Usart_GPIO_Init
	FNCALL	_main,_Usart_Init
	FNCALL	_main,_Motor_GPIO_Init
	FNCALL	_main,_Motor_CCP_PWM_Init
	FNCALL	_main,_Delay_ms
	FNCALL	_main,_printf
	FNCALL	_main,_Motor_Speed_Set
	FNCALL	_main,_Encoder_Init
	FNCALL	_main,_Velociy_PID_Init
	FNCALL	_main,_LCD1602_WriteNum
	FNCALL	_LCD1602_WriteNum,_LCD1602_WriteCommand
	FNCALL	_LCD1602_WriteNum,_LCD1602_Pow
	FNCALL	_LCD1602_WriteNum,___aldiv
	FNCALL	_LCD1602_WriteNum,___almod
	FNCALL	_LCD1602_WriteNum,_LCD1602_WriteData
	FNCALL	_LCD1602_WriteString,_LCD1602_WriteCommand
	FNCALL	_LCD1602_WriteString,_LCD1602_WriteData
	FNCALL	_LCD1602_Init,_LCD1602_Delay
	FNCALL	_LCD1602_Init,_LCD1602_WriteCommand
	FNCALL	_LCD1602_Pow,___lmul
	FNCALL	_LCD1602_WriteData,_LCD1602_Delay
	FNCALL	_LCD1602_WriteCommand,_LCD1602_Delay
	FNCALL	_printf,_putch
	FNCALL	_printf,___lwdiv
	FNCALL	_printf,___lwmod
	FNROOT	_main
	FNCALL	_Service,_Trace_Proc
	FNCALL	_Service,_Trace_Write_Command
	FNCALL	_Service,i1_Motor_Speed_Set
	FNCALL	_Service,_Velocity_PID
	FNCALL	_Trace_Write_Command,_I2CStart
	FNCALL	_Trace_Write_Command,_I2CSendByte
	FNCALL	_Trace_Write_Command,_I2CWaitAck
	FNCALL	_Trace_Write_Command,_I2CStop
	FNCALL	_I2CWaitAck,_I2C_Delay
	FNCALL	_I2CSendByte,_I2C_Delay
	FNCALL	_I2CStop,_I2C_Delay
	FNCALL	_I2CStart,_I2C_Delay
	FNCALL	_Velocity_PID,___awtoft
	FNCALL	_Velocity_PID,___ftneg
	FNCALL	_Velocity_PID,___ftadd
	FNCALL	_Velocity_PID,___ftmul
	FNCALL	_Velocity_PID,_I_amplitude_limiting
	FNCALL	_Velocity_PID,___fttol
	FNCALL	___awtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftadd,___ftpack
	FNCALL	intlevel1,_Service
	global	intlevel1
	FNROOT	intlevel1
	global	_dpowers
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\lib\doprnt.c"
	line	350
_dpowers:
	retlw	01h
	retlw	0

	retlw	0Ah
	retlw	0

	retlw	064h
	retlw	0

	retlw	0E8h
	retlw	03h

	retlw	010h
	retlw	027h

	global	_dpowers
	global	_filt_velocity
	global	_PWM
	global	_PWM1
	global	_PWM2
	global	_Speed
	global	_Speed_Set
	global	_Encoder_Counter
	global	_Key_Val
	global	_Motor_Flag
	global	_Speed_measure1
	global	_Speed_measure2
	global	_Trace_Byte
	global	_ack
	global	_bluetooth
	global	_m
	global	_x
	global	_y
	global	_RBIF_FLAG
	global	_last_filt_velocity
	global	_Counter_temp
	global	_Timer0_Counter
	global	_Turn
	global	_Velocity
	global	_CCP1CON
_CCP1CON	set	23
	global	_CCP2CON
_CCP2CON	set	29
	global	_CCPR1L
_CCPR1L	set	21
	global	_CCPR2L
_CCPR2L	set	27
	global	_PORTA
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_PORTD
_PORTD	set	8
	global	_RCREG
_RCREG	set	26
	global	_RCSTA
_RCSTA	set	24
	global	_T1CON
_T1CON	set	16
	global	_T2CON
_T2CON	set	18
	global	_TMR0
_TMR0	set	1
	global	_TMR1H
_TMR1H	set	15
	global	_TMR1L
_TMR1L	set	14
	global	_TMR2
_TMR2	set	17
	global	_TXREG
_TXREG	set	25
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_INTE
_INTE	set	92
	global	_INTF
_INTF	set	89
	global	_PEIE
_PEIE	set	94
	global	_RA0
_RA0	set	40
	global	_RA1
_RA1	set	41
	global	_RA2
_RA2	set	42
	global	_RA3
_RA3	set	43
	global	_RA4
_RA4	set	44
	global	_RA5
_RA5	set	45
	global	_RB4
_RB4	set	52
	global	_RB5
_RB5	set	53
	global	_RB6
_RB6	set	54
	global	_RB7
_RB7	set	55
	global	_RBIE
_RBIE	set	91
	global	_RBIF
_RBIF	set	88
	global	_RCIF
_RCIF	set	101
	global	_RE0
_RE0	set	72
	global	_RE1
_RE1	set	73
	global	_RE2
_RE2	set	74
	global	_T0IE
_T0IE	set	93
	global	_T0IF
_T0IF	set	90
	global	_TMR1IF
_TMR1IF	set	96
	global	_TMR2IF
_TMR2IF	set	97
	global	_TMR2ON
_TMR2ON	set	146
	global	_ADCON1
_ADCON1	set	159
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_PR2
_PR2	set	146
	global	_SPBRG
_SPBRG	set	153
	global	_TRISB
_TRISB	set	134
	global	_TRISD
_TRISD	set	136
	global	_TXSTA
_TXSTA	set	152
	global	_RCIE
_RCIE	set	1125
	global	_TMR1IE
_TMR1IE	set	1120
	global	_TMR2IE
_TMR2IE	set	1121
	global	_TRISA0
_TRISA0	set	1064
	global	_TRISA1
_TRISA1	set	1065
	global	_TRISA2
_TRISA2	set	1066
	global	_TRISA3
_TRISA3	set	1067
	global	_TRISA4
_TRISA4	set	1068
	global	_TRISA5
_TRISA5	set	1069
	global	_TRISB0
_TRISB0	set	1072
	global	_TRISB1
_TRISB1	set	1073
	global	_TRISB4
_TRISB4	set	1076
	global	_TRISB5
_TRISB5	set	1077
	global	_TRISB6
_TRISB6	set	1078
	global	_TRISB7
_TRISB7	set	1079
	global	_TRISC1
_TRISC1	set	1081
	global	_TRISC2
_TRISC2	set	1082
	global	_TRISC6
_TRISC6	set	1086
	global	_TRISC7
_TRISC7	set	1087
	global	_TRISE0
_TRISE0	set	1096
	global	_TRISE1
_TRISE1	set	1097
	global	_TRISE2
_TRISE2	set	1098
	global	_TRMT
_TRMT	set	1217
	global	_nRBPU
_nRBPU	set	1039
	global	_EEADR
_EEADR	set	269
	global	_EEDATA
_EEDATA	set	268
	global	_EECON1
_EECON1	set	396
	global	_EECON2
_EECON2	set	397
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	global	_WREN
_WREN	set	3170
	
STR_3:	
	retlw	-76
	retlw	-82
	retlw	-65
	retlw	-38
	retlw	-77
	retlw	-11
	retlw	-54
	retlw	-68
	retlw	-69
	retlw	-81
	retlw	-51
	retlw	-22
	retlw	-77
	retlw	-55
	retlw	33	;'!'
	retlw	13
	retlw	10
	retlw	0
psect	strings
	
STR_4:	
	retlw	83	;'S'
	retlw	112	;'p'
	retlw	101	;'e'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	58	;':'
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	13
	retlw	10
	retlw	0
psect	strings
	
STR_2:	
	retlw	83	;'S'
	retlw	112	;'p'
	retlw	101	;'e'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_1:	
	retlw	67	;'C'
	retlw	65	;'A'
	retlw	82	;'R'
	retlw	32	;' '
	retlw	49	;'1'
	retlw	0
psect	strings
	
STR_5:	
	retlw	37	;'%'
	retlw	99	;'c'
	retlw	0
psect	strings
	file	"202121365038.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bitbssBANK0,class=BANK0,bit,space=1
global __pbitbssBANK0
__pbitbssBANK0:
_RBIF_FLAG:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_filt_velocity:
       ds      3

_PWM:
       ds      2

_PWM1:
       ds      2

_PWM2:
       ds      2

_Speed:
       ds      2

_Speed_Set:
       ds      2

_Encoder_Counter:
       ds      1

_Key_Val:
       ds      1

_Motor_Flag:
       ds      1

_Speed_measure1:
       ds      1

_Speed_measure2:
       ds      1

_Trace_Byte:
       ds      1

_ack:
       ds      1

_bluetooth:
       ds      1

_m:
       ds      1

_x:
       ds      1

_y:
       ds      1

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_last_filt_velocity:
       ds      3

_Counter_temp:
       ds      2

_Timer0_Counter:
       ds      2

_Turn:
       ds      2

psect	bssBANK3,class=BANK3,space=1
global __pbssBANK3
__pbssBANK3:
_Velocity:
       ds      24

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop		;do the next byte

; Clear objects allocated to BITBANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbitbssBANK0/8)+0)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+018h)
	fcall	clear_ram
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+09h)
	fcall	clear_ram
; Clear objects allocated to BANK3
psect cinit,class=CODE,delta=2
	bsf	status, 7	;select IRP bank2
	movlw	low(__pbssBANK3)
	movwf	fsr
	movlw	low((__pbssBANK3)+018h)
	fcall	clear_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1
global __pcstackBANK1
__pcstackBANK1:
	global	??_LCD1602_GPIO_Init
??_LCD1602_GPIO_Init:	; 0 bytes @ 0x0
	global	??_Usart_GPIO_Init
??_Usart_GPIO_Init:	; 0 bytes @ 0x0
	global	??_Usart_Init
??_Usart_Init:	; 0 bytes @ 0x0
	global	??_Motor_GPIO_Init
??_Motor_GPIO_Init:	; 0 bytes @ 0x0
	global	??_Motor_CCP_PWM_Init
??_Motor_CCP_PWM_Init:	; 0 bytes @ 0x0
	global	?_Delay_ms
?_Delay_ms:	; 0 bytes @ 0x0
	global	??_Encoder_Init
??_Encoder_Init:	; 0 bytes @ 0x0
	global	??_Velociy_PID_Init
??_Velociy_PID_Init:	; 0 bytes @ 0x0
	global	?_Motor_Speed_Set
?_Motor_Speed_Set:	; 0 bytes @ 0x0
	global	??_LCD1602_Delay
??_LCD1602_Delay:	; 0 bytes @ 0x0
	global	??_putch
??_putch:	; 0 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___lmul
?___lmul:	; 4 bytes @ 0x0
	global	putch@ch
putch@ch:	; 1 bytes @ 0x0
	global	Motor_Speed_Set@Speed1
Motor_Speed_Set@Speed1:	; 2 bytes @ 0x0
	global	LCD1602_Delay@i
LCD1602_Delay@i:	; 2 bytes @ 0x0
	global	Delay_ms@x
Delay_ms@x:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___lmul@multiplier
___lmul@multiplier:	; 4 bytes @ 0x0
	ds	2
	global	??_Delay_ms
??_Delay_ms:	; 0 bytes @ 0x2
	global	??_LCD1602_WriteCommand
??_LCD1602_WriteCommand:	; 0 bytes @ 0x2
	global	??_LCD1602_WriteData
??_LCD1602_WriteData:	; 0 bytes @ 0x2
	global	LCD1602_WriteCommand@Command
LCD1602_WriteCommand@Command:	; 1 bytes @ 0x2
	global	LCD1602_WriteData@Data
LCD1602_WriteData@Data:	; 1 bytes @ 0x2
	global	Motor_Speed_Set@Speed2
Motor_Speed_Set@Speed2:	; 2 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	1
	global	??_LCD1602_Init
??_LCD1602_Init:	; 0 bytes @ 0x3
	global	?_LCD1602_WriteString
?_LCD1602_WriteString:	; 0 bytes @ 0x3
	global	LCD1602_WriteString@column
LCD1602_WriteString@column:	; 1 bytes @ 0x3
	ds	1
	global	??_Motor_Speed_Set
??_Motor_Speed_Set:	; 0 bytes @ 0x4
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	global	LCD1602_WriteString@String
LCD1602_WriteString@String:	; 1 bytes @ 0x4
	global	___lmul@multiplicand
___lmul@multiplicand:	; 4 bytes @ 0x4
	ds	1
	global	??_LCD1602_WriteString
??_LCD1602_WriteString:	; 0 bytes @ 0x5
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	1
	global	LCD1602_WriteString@Location
LCD1602_WriteString@Location:	; 1 bytes @ 0x6
	ds	1
	global	LCD1602_WriteString@row
LCD1602_WriteString@row:	; 1 bytes @ 0x7
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	ds	1
	global	??___lmul
??___lmul:	; 0 bytes @ 0x8
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x8
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x8
	ds	1
	global	___lmul@product
___lmul@product:	; 4 bytes @ 0x9
	ds	1
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0xA
	ds	2
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0xC
	ds	1
	global	?___aldiv
?___aldiv:	; 4 bytes @ 0xD
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xD
	global	___aldiv@divisor
___aldiv@divisor:	; 4 bytes @ 0xD
	ds	1
	global	?_printf
?_printf:	; 2 bytes @ 0xE
	ds	2
	global	??_printf
??_printf:	; 0 bytes @ 0x10
	ds	1
	global	___aldiv@dividend
___aldiv@dividend:	; 4 bytes @ 0x11
	ds	2
	global	printf@flag
printf@flag:	; 1 bytes @ 0x13
	ds	1
	global	printf@f
printf@f:	; 1 bytes @ 0x14
	ds	1
	global	??___aldiv
??___aldiv:	; 0 bytes @ 0x15
	global	printf@prec
printf@prec:	; 1 bytes @ 0x15
	ds	1
	global	printf@ap
printf@ap:	; 1 bytes @ 0x16
	global	___aldiv@counter
___aldiv@counter:	; 1 bytes @ 0x16
	ds	1
	global	___aldiv@sign
___aldiv@sign:	; 1 bytes @ 0x17
	global	printf@_val
printf@_val:	; 4 bytes @ 0x17
	ds	1
	global	___aldiv@quotient
___aldiv@quotient:	; 4 bytes @ 0x18
	ds	3
	global	printf@c
printf@c:	; 1 bytes @ 0x1B
	ds	1
	global	?___almod
?___almod:	; 4 bytes @ 0x1C
	global	___almod@divisor
___almod@divisor:	; 4 bytes @ 0x1C
	ds	4
	global	___almod@dividend
___almod@dividend:	; 4 bytes @ 0x20
	ds	4
	global	??___almod
??___almod:	; 0 bytes @ 0x24
	ds	1
	global	___almod@counter
___almod@counter:	; 1 bytes @ 0x25
	ds	1
	global	___almod@sign
___almod@sign:	; 1 bytes @ 0x26
	ds	1
	global	?_LCD1602_Pow
?_LCD1602_Pow:	; 4 bytes @ 0x27
	global	LCD1602_Pow@Y
LCD1602_Pow@Y:	; 1 bytes @ 0x27
	ds	4
	global	??_LCD1602_Pow
??_LCD1602_Pow:	; 0 bytes @ 0x2B
	ds	4
	global	LCD1602_Pow@X
LCD1602_Pow@X:	; 1 bytes @ 0x2F
	ds	1
	global	LCD1602_Pow@i
LCD1602_Pow@i:	; 1 bytes @ 0x30
	ds	1
	global	LCD1602_Pow@result
LCD1602_Pow@result:	; 4 bytes @ 0x31
	ds	4
	global	?_LCD1602_WriteNum
?_LCD1602_WriteNum:	; 0 bytes @ 0x35
	global	LCD1602_WriteNum@column
LCD1602_WriteNum@column:	; 1 bytes @ 0x35
	ds	1
	global	LCD1602_WriteNum@number
LCD1602_WriteNum@number:	; 2 bytes @ 0x36
	ds	2
	global	LCD1602_WriteNum@lenth
LCD1602_WriteNum@lenth:	; 1 bytes @ 0x38
	ds	1
	global	??_LCD1602_WriteNum
??_LCD1602_WriteNum:	; 0 bytes @ 0x39
	ds	1
	global	LCD1602_WriteNum@Location
LCD1602_WriteNum@Location:	; 1 bytes @ 0x3A
	ds	1
	global	LCD1602_WriteNum@row
LCD1602_WriteNum@row:	; 1 bytes @ 0x3B
	ds	1
	global	LCD1602_WriteNum@i
LCD1602_WriteNum@i:	; 1 bytes @ 0x3C
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x3D
	ds	3
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_LCD1602_GPIO_Init
?_LCD1602_GPIO_Init:	; 0 bytes @ 0x0
	global	?_LCD1602_Init
?_LCD1602_Init:	; 0 bytes @ 0x0
	global	?_Usart_GPIO_Init
?_Usart_GPIO_Init:	; 0 bytes @ 0x0
	global	?_Usart_Init
?_Usart_Init:	; 0 bytes @ 0x0
	global	?_Motor_GPIO_Init
?_Motor_GPIO_Init:	; 0 bytes @ 0x0
	global	?_Motor_CCP_PWM_Init
?_Motor_CCP_PWM_Init:	; 0 bytes @ 0x0
	global	?_Encoder_Init
?_Encoder_Init:	; 0 bytes @ 0x0
	global	?_Velociy_PID_Init
?_Velociy_PID_Init:	; 0 bytes @ 0x0
	global	??_Trace_Proc
??_Trace_Proc:	; 0 bytes @ 0x0
	global	?_Service
?_Service:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_LCD1602_Delay
?_LCD1602_Delay:	; 0 bytes @ 0x0
	global	?_LCD1602_WriteCommand
?_LCD1602_WriteCommand:	; 0 bytes @ 0x0
	global	?_LCD1602_WriteData
?_LCD1602_WriteData:	; 0 bytes @ 0x0
	global	?_I2C_Delay
?_I2C_Delay:	; 0 bytes @ 0x0
	global	??_I2C_Delay
??_I2C_Delay:	; 0 bytes @ 0x0
	global	?_I2CStart
?_I2CStart:	; 0 bytes @ 0x0
	global	?_I2CStop
?_I2CStop:	; 0 bytes @ 0x0
	global	?_I2CSendByte
?_I2CSendByte:	; 0 bytes @ 0x0
	global	?_putch
?_putch:	; 0 bytes @ 0x0
	global	?_I_amplitude_limiting
?_I_amplitude_limiting:	; 0 bytes @ 0x0
	global	?i1_Motor_Speed_Set
?i1_Motor_Speed_Set:	; 0 bytes @ 0x0
	global	?_Trace_Write_Command
?_Trace_Write_Command:	; 1 bytes @ 0x0
	global	?_I2CWaitAck
?_I2CWaitAck:	; 1 bytes @ 0x0
	global	?_Trace_Proc
?_Trace_Proc:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0x0
	global	I2C_Delay@n
I2C_Delay@n:	; 1 bytes @ 0x0
	global	I_amplitude_limiting@Error_sum
I_amplitude_limiting@Error_sum:	; 1 bytes @ 0x0
	global	i1Motor_Speed_Set@Speed1
i1Motor_Speed_Set@Speed1:	; 2 bytes @ 0x0
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds	1
	global	??_I2CStart
??_I2CStart:	; 0 bytes @ 0x1
	global	??_I2CStop
??_I2CStop:	; 0 bytes @ 0x1
	global	??_I2CSendByte
??_I2CSendByte:	; 0 bytes @ 0x1
	global	??_I2CWaitAck
??_I2CWaitAck:	; 0 bytes @ 0x1
	global	??_I_amplitude_limiting
??_I_amplitude_limiting:	; 0 bytes @ 0x1
	ds	1
	global	I2CSendByte@byt
I2CSendByte@byt:	; 1 bytes @ 0x2
	global	I2CWaitAck@ackbit
I2CWaitAck@ackbit:	; 1 bytes @ 0x2
	global	i1Motor_Speed_Set@Speed2
i1Motor_Speed_Set@Speed2:	; 2 bytes @ 0x2
	ds	1
	global	??___ftneg
??___ftneg:	; 0 bytes @ 0x3
	global	I2CSendByte@i
I2CSendByte@i:	; 1 bytes @ 0x3
	global	I_amplitude_limiting@number
I_amplitude_limiting@number:	; 1 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	ds	1
	global	??_Trace_Write_Command
??_Trace_Write_Command:	; 0 bytes @ 0x4
	global	??i1_Motor_Speed_Set
??i1_Motor_Speed_Set:	; 0 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	ds	1
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x5
	ds	3
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x8
	global	?___fttol
?___fttol:	; 4 bytes @ 0x8
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x8
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x8
	ds	3
	global	??___awtoft
??___awtoft:	; 0 bytes @ 0xB
	ds	2
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??___fttol
??___fttol:	; 0 bytes @ 0x0
	ds	4
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x4
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x5
	ds	4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x9
	ds	1
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0xA
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0xA
	ds	3
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0xD
	ds	3
	global	??___ftadd
??___ftadd:	; 0 bytes @ 0x10
	ds	4
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x14
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x15
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x16
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x17
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x17
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x1A
	ds	3
	global	??___ftmul
??___ftmul:	; 0 bytes @ 0x1D
	ds	4
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x21
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x22
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x25
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x26
	ds	1
	global	?_Velocity_PID
?_Velocity_PID:	; 2 bytes @ 0x27
	global	Velocity_PID@velocity
Velocity_PID@velocity:	; 2 bytes @ 0x27
	ds	2
	global	Velocity_PID@velocity_calcu
Velocity_PID@velocity_calcu:	; 2 bytes @ 0x29
	ds	2
	global	??_Velocity_PID
??_Velocity_PID:	; 0 bytes @ 0x2B
	ds	2
	global	Velocity_PID@a
Velocity_PID@a:	; 3 bytes @ 0x2D
	ds	3
	global	??_Service
??_Service:	; 0 bytes @ 0x30
	ds	6
;;Data sizes: Strings 45, constant 10, data 0, bss 57, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     54      79
;; BANK1           80     64      73
;; BANK3           96      0      24
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___ftpack	float  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?___fttol	long  size(1) Largest target is 0
;;
;; ?___ftneg	float  size(1) Largest target is 0
;;
;; ?___ftmul	float  size(1) Largest target is 0
;;
;; ?___ftadd	float  size(1) Largest target is 0
;;
;; ?___awtoft	float  size(1) Largest target is 0
;;
;; ?___aldiv	long  size(1) Largest target is 0
;;
;; ?___almod	long  size(1) Largest target is 0
;;
;; ?___lmul	unsigned long  size(1) Largest target is 0
;;
;; ?_LCD1602_Pow	long  size(1) Largest target is 0
;;
;; ?_Velocity_PID	int  size(1) Largest target is 0
;;
;; printf@f	PTR const unsigned char  size(1) Largest target is 18
;;		 -> STR_5(CODE[3]), STR_4(CODE[11]), STR_3(CODE[18]), 
;;
;; ?_printf	int  size(1) Largest target is 0
;;
;; printf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_printf(BANK1[2]), 
;;
;; S11360$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; I_amplitude_limiting@Error_sum	PTR unsigned char  size(1) Largest target is 24
;;		 -> Velocity(BANK3[24]), 
;;
;; LCD1602_WriteString@String	PTR unsigned char  size(1) Largest target is 7
;;		 -> STR_2(CODE[7]), STR_1(CODE[6]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _Service in COMMON
;;
;;   _Trace_Write_Command->_I2CSendByte
;;   _I2CWaitAck->_I2C_Delay
;;   _I2CSendByte->_I2C_Delay
;;   _I2CStop->_I2C_Delay
;;   _I2CStart->_I2C_Delay
;;   _Velocity_PID->___awtoft
;;   ___awtoft->___ftpack
;;   ___ftmul->___fttol
;;   ___ftadd->___fttol
;;   ___fttol->___ftpack
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _Service in BANK0
;;
;;   _Service->_Velocity_PID
;;   _Velocity_PID->___ftmul
;;   ___ftmul->___ftadd
;;   ___ftadd->___fttol
;;
;; Critical Paths under _main in BANK1
;;
;;   _main->_LCD1602_WriteNum
;;   _LCD1602_WriteNum->_LCD1602_Pow
;;   _LCD1602_WriteString->_LCD1602_WriteCommand
;;   _LCD1602_WriteString->_LCD1602_WriteData
;;   _LCD1602_Init->_LCD1602_WriteCommand
;;   _LCD1602_Pow->___almod
;;   _LCD1602_WriteData->_LCD1602_Delay
;;   _LCD1602_WriteCommand->_LCD1602_Delay
;;   _printf->___lwmod
;;   ___aldiv->___lmul
;;   ___almod->___aldiv
;;   ___lwmod->___lwdiv
;;
;; Critical Paths under _Service in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _Service in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _Service in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 3     3      0    2498
;;                                             61 BANK1      3     3      0
;;                  _LCD1602_GPIO_Init
;;                       _LCD1602_Init
;;                _LCD1602_WriteString
;;                    _Usart_GPIO_Init
;;                         _Usart_Init
;;                    _Motor_GPIO_Init
;;                 _Motor_CCP_PWM_Init
;;                           _Delay_ms
;;                             _printf
;;                    _Motor_Speed_Set
;;                       _Encoder_Init
;;                   _Velociy_PID_Init
;;                   _LCD1602_WriteNum
;; ---------------------------------------------------------------------------------
;; (1) _LCD1602_WriteNum                                     8     4      4    1162
;;                                             53 BANK1      8     4      4
;;               _LCD1602_WriteCommand
;;                        _LCD1602_Pow
;;                            ___aldiv
;;                            ___almod
;;                  _LCD1602_WriteData
;; ---------------------------------------------------------------------------------
;; (1) _LCD1602_WriteString                                  5     3      2     293
;;                                              3 BANK1      5     3      2
;;               _LCD1602_WriteCommand
;;                  _LCD1602_WriteData
;; ---------------------------------------------------------------------------------
;; (1) _LCD1602_Init                                         0     0      0     114
;;                      _LCD1602_Delay
;;               _LCD1602_WriteCommand
;; ---------------------------------------------------------------------------------
;; (2) _LCD1602_Pow                                         14    10      4     206
;;                                             39 BANK1     14    10      4
;;                             ___lmul
;;                            ___aldiv (ARG)
;;                            ___almod (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _LCD1602_WriteData                                    1     1      0      68
;;                                              2 BANK1      1     1      0
;;                      _LCD1602_Delay
;; ---------------------------------------------------------------------------------
;; (2) _LCD1602_WriteCommand                                 1     1      0      68
;;                                              2 BANK1      1     1      0
;;                      _LCD1602_Delay
;; ---------------------------------------------------------------------------------
;; (1) _printf                                              14    12      2     775
;;                                             14 BANK1     14    12      2
;;                              _putch
;;                            ___lwdiv
;;                            ___lwmod
;; ---------------------------------------------------------------------------------
;; (1) _Delay_ms                                             2     0      2      22
;;                                              0 BANK1      2     0      2
;; ---------------------------------------------------------------------------------
;; (2) ___aldiv                                             15     7      8     300
;;                                             13 BANK1     15     7      8
;;                             ___lmul (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___almod                                             11     3      8     296
;;                                             28 BANK1     11     3      8
;;                            ___aldiv (ARG)
;;                             ___lmul (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___lmul                                              13     5      8      92
;;                                              0 BANK1     13     5      8
;; ---------------------------------------------------------------------------------
;; (2) ___lwmod                                              6     2      4     159
;;                                              8 BANK1      6     2      4
;;                            ___lwdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___lwdiv                                              8     4      4     162
;;                                              0 BANK1      8     4      4
;; ---------------------------------------------------------------------------------
;; (2) _putch                                                1     1      0      22
;;                                              0 BANK1      1     1      0
;; ---------------------------------------------------------------------------------
;; (3) _LCD1602_Delay                                        2     2      0      46
;;                                              0 BANK1      2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _Velociy_PID_Init                                     0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _Encoder_Init                                         0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _Motor_CCP_PWM_Init                                   0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _Motor_GPIO_Init                                      0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _Usart_Init                                           0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _Usart_GPIO_Init                                      0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _LCD1602_GPIO_Init                                    0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _Motor_Speed_Set                                      4     0      4     132
;;                                              0 BANK1      4     0      4
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (4) _Service                                              6     6      0    3109
;;                                             48 BANK0      6     6      0
;;                         _Trace_Proc
;;                _Trace_Write_Command
;;                  i1_Motor_Speed_Set
;;                       _Velocity_PID
;; ---------------------------------------------------------------------------------
;; (5) _Trace_Write_Command                                  0     0      0     180
;;                           _I2CStart
;;                        _I2CSendByte
;;                         _I2CWaitAck
;;                            _I2CStop
;; ---------------------------------------------------------------------------------
;; (6) _I2CWaitAck                                           2     2      0      45
;;                                              1 COMMON     2     2      0
;;                          _I2C_Delay
;; ---------------------------------------------------------------------------------
;; (6) _I2CSendByte                                          3     3      0      91
;;                                              1 COMMON     3     3      0
;;                          _I2C_Delay
;; ---------------------------------------------------------------------------------
;; (6) _I2CStop                                              0     0      0      22
;;                          _I2C_Delay
;; ---------------------------------------------------------------------------------
;; (6) _I2CStart                                             0     0      0      22
;;                          _I2C_Delay
;; ---------------------------------------------------------------------------------
;; (5) _Velocity_PID                                         9     5      4    2491
;;                                             39 BANK0      9     5      4
;;                           ___awtoft
;;                            ___ftneg
;;                            ___ftadd
;;                            ___ftmul
;;               _I_amplitude_limiting
;;                            ___fttol
;; ---------------------------------------------------------------------------------
;; (6) ___awtoft                                             6     3      3     300
;;                                              8 COMMON     6     3      3
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (6) ___ftmul                                             16    10      6     535
;;                                             23 BANK0     16    10      6
;;                           ___ftpack
;;                            ___ftadd (ARG)
;;                            ___ftneg (ARG)
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (6) ___ftadd                                             13     7      6    1049
;;                                             10 BANK0     13     7      6
;;                           ___ftpack
;;                            ___ftneg (ARG)
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (7) _I2C_Delay                                            1     1      0      22
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (5) i1_Motor_Speed_Set                                    4     0      4     438
;;                                              0 COMMON     4     0      4
;; ---------------------------------------------------------------------------------
;; (6) ___ftneg                                              3     0      3      45
;;                                              0 COMMON     3     0      3
;; ---------------------------------------------------------------------------------
;; (6) ___fttol                                             14    10      4     252
;;                                              8 COMMON     4     0      4
;;                                              0 BANK0     10    10      0
;;                           ___ftpack (ARG)
;; ---------------------------------------------------------------------------------
;; (7) ___ftpack                                             8     3      5     209
;;                                              0 COMMON     8     3      5
;; ---------------------------------------------------------------------------------
;; (6) _I_amplitude_limiting                                 4     3      1     176
;;                                              0 COMMON     4     3      1
;; ---------------------------------------------------------------------------------
;; (5) _Trace_Proc                                           1     1      0       0
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 7
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _LCD1602_GPIO_Init
;;   _LCD1602_Init
;;     _LCD1602_Delay
;;     _LCD1602_WriteCommand
;;       _LCD1602_Delay
;;   _LCD1602_WriteString
;;     _LCD1602_WriteCommand
;;       _LCD1602_Delay
;;     _LCD1602_WriteData
;;       _LCD1602_Delay
;;   _Usart_GPIO_Init
;;   _Usart_Init
;;   _Motor_GPIO_Init
;;   _Motor_CCP_PWM_Init
;;   _Delay_ms
;;   _printf
;;     _putch
;;     ___lwdiv
;;     ___lwmod
;;       ___lwdiv (ARG)
;;   _Motor_Speed_Set
;;   _Encoder_Init
;;   _Velociy_PID_Init
;;   _LCD1602_WriteNum
;;     _LCD1602_WriteCommand
;;       _LCD1602_Delay
;;     _LCD1602_Pow
;;       ___lmul
;;       ___aldiv (ARG)
;;         ___lmul (ARG)
;;       ___almod (ARG)
;;         ___aldiv (ARG)
;;           ___lmul (ARG)
;;         ___lmul (ARG)
;;     ___aldiv
;;       ___lmul (ARG)
;;     ___almod
;;       ___aldiv (ARG)
;;         ___lmul (ARG)
;;       ___lmul (ARG)
;;     _LCD1602_WriteData
;;       _LCD1602_Delay
;;
;; _Service (ROOT)
;;   _Trace_Proc
;;   _Trace_Write_Command
;;     _I2CStart
;;       _I2C_Delay
;;     _I2CSendByte
;;       _I2C_Delay
;;     _I2CWaitAck
;;       _I2C_Delay
;;     _I2CStop
;;       _I2C_Delay
;;   i1_Motor_Speed_Set
;;   _Velocity_PID
;;     ___awtoft
;;       ___ftpack
;;     ___ftneg
;;     ___ftadd
;;       ___ftpack
;;       ___ftneg (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;     ___ftmul
;;       ___ftpack
;;       ___ftadd (ARG)
;;         ___ftpack
;;         ___ftneg (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;       ___ftneg (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;     _I_amplitude_limiting
;;     ___fttol
;;       ___ftpack (ARG)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       B       2        0.0%
;;ABS                  0      0      BE       3        0.0%
;;BITBANK0            50      0       1       4        1.3%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     36      4F       5       98.8%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50     40      49       7       91.3%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0      18       9       25.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      C9      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 168 in file "D:\6_pic_project\00_Design_Flow_Car\User\Car_demo\Car_demo.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       3       0       0
;;      Totals:         0       0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_LCD1602_GPIO_Init
;;		_LCD1602_Init
;;		_LCD1602_WriteString
;;		_Usart_GPIO_Init
;;		_Usart_Init
;;		_Motor_GPIO_Init
;;		_Motor_CCP_PWM_Init
;;		_Delay_ms
;;		_printf
;;		_Motor_Speed_Set
;;		_Encoder_Init
;;		_Velociy_PID_Init
;;		_LCD1602_WriteNum
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\6_pic_project\00_Design_Flow_Car\User\Car_demo\Car_demo.c"
	line	168
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 1
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	169
	
l13294:	
;Car_demo.c: 169: TRISB1=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1073/8)^080h,(1073)&7
	line	171
;Car_demo.c: 171: TRISA0=0;
	bcf	(1064/8)^080h,(1064)&7
	line	172
;Car_demo.c: 172: TRISA1=0;
	bcf	(1065/8)^080h,(1065)&7
	line	174
;Car_demo.c: 174: TRISE0=1;
	bsf	(1096/8)^080h,(1096)&7
	line	175
;Car_demo.c: 175: TRISE1=1;
	bsf	(1097/8)^080h,(1097)&7
	line	176
;Car_demo.c: 176: TRISE2=1;
	bsf	(1098/8)^080h,(1098)&7
	line	178
;Car_demo.c: 178: TRISA4=1;
	bsf	(1068/8)^080h,(1068)&7
	line	183
	
l13296:	
;Car_demo.c: 183: LCD1602_GPIO_Init();
	fcall	_LCD1602_GPIO_Init
	line	184
;Car_demo.c: 184: LCD1602_Init();
	fcall	_LCD1602_Init
	line	185
	
l13298:	
;Car_demo.c: 185: LCD1602_WriteString(1,0,"CAR 1");
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(?_LCD1602_WriteString)^080h
	movlw	((STR_1-__stringbase))&0ffh
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	movwf	(0+?_LCD1602_WriteString+01h)^080h
	movlw	(01h)
	fcall	_LCD1602_WriteString
	line	186
	
l13300:	
;Car_demo.c: 186: LCD1602_WriteString(2,0,"Speed:");
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(?_LCD1602_WriteString)^080h
	movlw	((STR_2-__stringbase))&0ffh
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	movwf	(0+?_LCD1602_WriteString+01h)^080h
	movlw	(02h)
	fcall	_LCD1602_WriteString
	line	188
	
l13302:	
;Car_demo.c: 188: Usart_GPIO_Init();
	fcall	_Usart_GPIO_Init
	line	189
	
l13304:	
;Car_demo.c: 189: Usart_Init();
	fcall	_Usart_Init
	line	190
;Car_demo.c: 190: Motor_GPIO_Init();
	fcall	_Motor_GPIO_Init
	line	191
	
l13306:	
;Car_demo.c: 191: Motor_CCP_PWM_Init();
	fcall	_Motor_CCP_PWM_Init
	line	193
	
l13308:	
;Car_demo.c: 193: Delay_ms(5000);
	movlw	low(01388h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_Delay_ms)^080h
	movlw	high(01388h)
	movwf	((?_Delay_ms)^080h)+1
	fcall	_Delay_ms
	line	194
	
l13310:	
;Car_demo.c: 194: printf("串口初始化完成!\r\n");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_printf
	line	195
	
l13312:	
;Car_demo.c: 195: Motor_Speed_Set(PWM1,PWM2);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_PWM1+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(?_Motor_Speed_Set+1)^080h
	addwf	(?_Motor_Speed_Set+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_PWM1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(?_Motor_Speed_Set)^080h
	addwf	(?_Motor_Speed_Set)^080h

	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_PWM2+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	1+(?_Motor_Speed_Set)^080h+02h
	addwf	1+(?_Motor_Speed_Set)^080h+02h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_PWM2),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	0+(?_Motor_Speed_Set)^080h+02h
	addwf	0+(?_Motor_Speed_Set)^080h+02h

	fcall	_Motor_Speed_Set
	line	196
	
l13314:	
;Car_demo.c: 196: Encoder_Init();
	fcall	_Encoder_Init
	line	197
	
l13316:	
;Car_demo.c: 197: Velociy_PID_Init();
	fcall	_Velociy_PID_Init
	goto	l13318
	line	198
;Car_demo.c: 198: while(1)
	
l777:	
	line	203
	
l13318:	
;Car_demo.c: 199: {
;Car_demo.c: 203: LCD1602_WriteNum(2,7,Speed,3);
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	movwf	(?_LCD1602_WriteNum)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Speed+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	1+(?_LCD1602_WriteNum)^080h+01h
	addwf	1+(?_LCD1602_WriteNum)^080h+01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Speed),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	0+(?_LCD1602_WriteNum)^080h+01h
	addwf	0+(?_LCD1602_WriteNum)^080h+01h

	movlw	(03h)
	movwf	(??_main+1)^080h+0
	movf	(??_main+1)^080h+0,w
	movwf	0+(?_LCD1602_WriteNum)^080h+03h
	movlw	(02h)
	fcall	_LCD1602_WriteNum
	line	204
	
l13320:	
;Car_demo.c: 204: LCD1602_WriteNum(1,7,RE0,1);
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	movwf	(?_LCD1602_WriteNum)^080h
	clrc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(72/8),(72)&7
	setc
	movlw	0
	skipnc
	movlw	1

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+1)^080h+0
	clrf	(??_main+1)^080h+0+1
	movf	0+(??_main+1)^080h+0,w
	movwf	0+(?_LCD1602_WriteNum)^080h+01h
	movf	1+(??_main+1)^080h+0,w
	movwf	1+(?_LCD1602_WriteNum)^080h+01h
	clrf	0+(?_LCD1602_WriteNum)^080h+03h
	bsf	status,0
	rlf	0+(?_LCD1602_WriteNum)^080h+03h,f
	movlw	(01h)
	fcall	_LCD1602_WriteNum
	line	205
	
l13322:	
;Car_demo.c: 205: LCD1602_WriteNum(1,8,RE1,1);
	movlw	(08h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	movwf	(?_LCD1602_WriteNum)^080h
	clrc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(73/8),(73)&7
	setc
	movlw	0
	skipnc
	movlw	1

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+1)^080h+0
	clrf	(??_main+1)^080h+0+1
	movf	0+(??_main+1)^080h+0,w
	movwf	0+(?_LCD1602_WriteNum)^080h+01h
	movf	1+(??_main+1)^080h+0,w
	movwf	1+(?_LCD1602_WriteNum)^080h+01h
	clrf	0+(?_LCD1602_WriteNum)^080h+03h
	bsf	status,0
	rlf	0+(?_LCD1602_WriteNum)^080h+03h,f
	movlw	(01h)
	fcall	_LCD1602_WriteNum
	line	206
	
l13324:	
;Car_demo.c: 206: LCD1602_WriteNum(1,9,RE2,1);
	movlw	(09h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	movwf	(?_LCD1602_WriteNum)^080h
	clrc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(74/8),(74)&7
	setc
	movlw	0
	skipnc
	movlw	1

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+1)^080h+0
	clrf	(??_main+1)^080h+0+1
	movf	0+(??_main+1)^080h+0,w
	movwf	0+(?_LCD1602_WriteNum)^080h+01h
	movf	1+(??_main+1)^080h+0,w
	movwf	1+(?_LCD1602_WriteNum)^080h+01h
	clrf	0+(?_LCD1602_WriteNum)^080h+03h
	bsf	status,0
	rlf	0+(?_LCD1602_WriteNum)^080h+03h,f
	movlw	(01h)
	fcall	_LCD1602_WriteNum
	line	207
	
l13326:	
;Car_demo.c: 207: LCD1602_WriteNum(1,10,RA4,1);
	movlw	(0Ah)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	movwf	(?_LCD1602_WriteNum)^080h
	clrc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(44/8),(44)&7
	setc
	movlw	0
	skipnc
	movlw	1

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+1)^080h+0
	clrf	(??_main+1)^080h+0+1
	movf	0+(??_main+1)^080h+0,w
	movwf	0+(?_LCD1602_WriteNum)^080h+01h
	movf	1+(??_main+1)^080h+0,w
	movwf	1+(?_LCD1602_WriteNum)^080h+01h
	clrf	0+(?_LCD1602_WriteNum)^080h+03h
	bsf	status,0
	rlf	0+(?_LCD1602_WriteNum)^080h+03h,f
	movlw	(01h)
	fcall	_LCD1602_WriteNum
	line	208
	
l13328:	
;Car_demo.c: 208: printf("Speed:%d\r\n",(unsigned int)Speed);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Speed+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(?_printf+1)^080h
	addwf	(?_printf+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Speed),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(?_printf)^080h
	addwf	(?_printf)^080h

	movlw	((STR_4-__stringbase))&0ffh
	fcall	_printf
	goto	l13318
	line	209
	
l778:	
	line	198
	goto	l13318
	
l779:	
	line	210
	
l780:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_LCD1602_WriteNum
psect	text1020,local,class=CODE,delta=2
global __ptext1020
__ptext1020:

;; *************** function _LCD1602_WriteNum *****************
;; Defined at:
;;		line 127 in file "D:\6_pic_project\00_Design_Flow_Car\Driver\LCD1602.c"
;; Parameters:    Size  Location     Type
;;  row             1    wreg     unsigned char 
;;  column          1   53[BANK1 ] unsigned char 
;;  number          2   54[BANK1 ] unsigned int 
;;  lenth           1   56[BANK1 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  row             1   59[BANK1 ] unsigned char 
;;  i               1   60[BANK1 ] unsigned char 
;;  Location        1   58[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       4       0       0
;;      Locals:         0       0       3       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       8       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_LCD1602_WriteCommand
;;		_LCD1602_Pow
;;		___aldiv
;;		___almod
;;		_LCD1602_WriteData
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1020
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\LCD1602.c"
	line	127
	global	__size_of_LCD1602_WriteNum
	__size_of_LCD1602_WriteNum	equ	__end_of_LCD1602_WriteNum-_LCD1602_WriteNum
	
_LCD1602_WriteNum:	
	opt	stack 1
; Regs used in _LCD1602_WriteNum: [wreg+status,2+status,0+pclath+cstack]
;LCD1602_WriteNum@row stored from wreg
	line	130
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(LCD1602_WriteNum@row)^080h
	
l13276:	
;LCD1602.c: 128: unsigned char Location;
;LCD1602.c: 129: unsigned char i;
;LCD1602.c: 130: if(row == 1)
	movf	(LCD1602_WriteNum@row)^080h,w
	xorlw	01h
	skipz
	goto	u5351
	goto	u5350
u5351:
	goto	l13280
u5350:
	line	132
	
l13278:	
;LCD1602.c: 131: {
;LCD1602.c: 132: Location = 0x80 + column;
	movf	(LCD1602_WriteNum@column)^080h,w
	addlw	080h
	movwf	(??_LCD1602_WriteNum+0)^080h+0
	movf	(??_LCD1602_WriteNum+0)^080h+0,w
	movwf	(LCD1602_WriteNum@Location)^080h
	line	133
;LCD1602.c: 133: }
	goto	l13284
	line	134
	
l1500:	
	
l13280:	
;LCD1602.c: 134: else if(row == 2)
	movf	(LCD1602_WriteNum@row)^080h,w
	xorlw	02h
	skipz
	goto	u5361
	goto	u5360
u5361:
	goto	l13284
u5360:
	line	136
	
l13282:	
;LCD1602.c: 135: {
;LCD1602.c: 136: Location = 0xC0 + column;
	movf	(LCD1602_WriteNum@column)^080h,w
	addlw	0C0h
	movwf	(??_LCD1602_WriteNum+0)^080h+0
	movf	(??_LCD1602_WriteNum+0)^080h+0,w
	movwf	(LCD1602_WriteNum@Location)^080h
	goto	l13284
	line	137
	
l1502:	
	goto	l13284
	line	139
	
l1501:	
	
l13284:	
;LCD1602.c: 137: }
;LCD1602.c: 139: LCD1602_WriteCommand(Location);
	movf	(LCD1602_WriteNum@Location)^080h,w
	fcall	_LCD1602_WriteCommand
	line	141
	
l13286:	
;LCD1602.c: 141: for(i=0;i<lenth;i++)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(LCD1602_WriteNum@i)^080h
	goto	l13292
	line	142
	
l1504:	
	line	143
	
l13288:	
;LCD1602.c: 142: {
;LCD1602.c: 143: LCD1602_WriteData(number/LCD1602_Pow(10,lenth-i-1)%10+'0');
	movlw	0
	movwf	(?___almod+3)^080h
	movlw	0
	movwf	(?___almod+2)^080h
	movlw	0
	movwf	(?___almod+1)^080h
	movlw	0Ah
	movwf	(?___almod)^080h

	decf	(LCD1602_WriteNum@i)^080h,w
	xorlw	0ffh
	addwf	(LCD1602_WriteNum@lenth)^080h,w
	addlw	0FFh
	movwf	(??_LCD1602_WriteNum+0)^080h+0
	movf	(??_LCD1602_WriteNum+0)^080h+0,w
	movwf	(?_LCD1602_Pow)^080h
	movlw	(0Ah)
	fcall	_LCD1602_Pow
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(3+(?_LCD1602_Pow))^080h,w
	movwf	(?___aldiv+3)^080h
	movf	(2+(?_LCD1602_Pow))^080h,w
	movwf	(?___aldiv+2)^080h
	movf	(1+(?_LCD1602_Pow))^080h,w
	movwf	(?___aldiv+1)^080h
	movf	(0+(?_LCD1602_Pow))^080h,w
	movwf	(?___aldiv)^080h

	movf	(LCD1602_WriteNum@number)^080h,w
	movwf	0+(?___aldiv)^080h+04h
	movf	(LCD1602_WriteNum@number+1)^080h,w
	movwf	(0+(?___aldiv)^080h+04h)+1
	clrf	2+(0+(?___aldiv)^080h+04h)
	clrf	3+(0+(?___aldiv)^080h+04h)
	fcall	___aldiv
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(3+(?___aldiv))^080h,w
	movwf	3+(?___almod)^080h+04h
	movf	(2+(?___aldiv))^080h,w
	movwf	2+(?___almod)^080h+04h
	movf	(1+(?___aldiv))^080h,w
	movwf	1+(?___almod)^080h+04h
	movf	(0+(?___aldiv))^080h,w
	movwf	0+(?___almod)^080h+04h

	fcall	___almod
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(((0+(?___almod))^080h)),w
	addlw	030h
	fcall	_LCD1602_WriteData
	line	141
	
l13290:	
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_LCD1602_WriteNum+0)^080h+0
	movf	(??_LCD1602_WriteNum+0)^080h+0,w
	addwf	(LCD1602_WriteNum@i)^080h,f
	goto	l13292
	
l1503:	
	
l13292:	
	movf	(LCD1602_WriteNum@lenth)^080h,w
	subwf	(LCD1602_WriteNum@i)^080h,w
	skipc
	goto	u5371
	goto	u5370
u5371:
	goto	l13288
u5370:
	goto	l1506
	
l1505:	
	line	146
	
l1506:	
	return
	opt stack 0
GLOBAL	__end_of_LCD1602_WriteNum
	__end_of_LCD1602_WriteNum:
;; =============== function _LCD1602_WriteNum ends ============

	signat	_LCD1602_WriteNum,16504
	global	_LCD1602_WriteString
psect	text1021,local,class=CODE,delta=2
global __ptext1021
__ptext1021:

;; *************** function _LCD1602_WriteString *****************
;; Defined at:
;;		line 84 in file "D:\6_pic_project\00_Design_Flow_Car\Driver\LCD1602.c"
;; Parameters:    Size  Location     Type
;;  row             1    wreg     unsigned char 
;;  column          1    3[BANK1 ] unsigned char 
;;  String          1    4[BANK1 ] PTR unsigned char 
;;		 -> STR_2(7), STR_1(6), 
;; Auto vars:     Size  Location     Type
;;  row             1    7[BANK1 ] unsigned char 
;;  Location        1    6[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       2       0       0
;;      Locals:         0       0       2       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       5       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_LCD1602_WriteCommand
;;		_LCD1602_WriteData
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1021
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\LCD1602.c"
	line	84
	global	__size_of_LCD1602_WriteString
	__size_of_LCD1602_WriteString	equ	__end_of_LCD1602_WriteString-_LCD1602_WriteString
	
_LCD1602_WriteString:	
	opt	stack 1
; Regs used in _LCD1602_WriteString: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;LCD1602_WriteString@row stored from wreg
	line	86
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(LCD1602_WriteString@row)^080h
	
l13260:	
;LCD1602.c: 85: unsigned char Location;
;LCD1602.c: 86: if(row == 1)
	movf	(LCD1602_WriteString@row)^080h,w
	xorlw	01h
	skipz
	goto	u5321
	goto	u5320
u5321:
	goto	l13264
u5320:
	line	88
	
l13262:	
;LCD1602.c: 87: {
;LCD1602.c: 88: Location = 0x80 + column;
	movf	(LCD1602_WriteString@column)^080h,w
	addlw	080h
	movwf	(??_LCD1602_WriteString+0)^080h+0
	movf	(??_LCD1602_WriteString+0)^080h+0,w
	movwf	(LCD1602_WriteString@Location)^080h
	line	89
;LCD1602.c: 89: }
	goto	l13268
	line	90
	
l1485:	
	
l13264:	
;LCD1602.c: 90: else if(row == 2)
	movf	(LCD1602_WriteString@row)^080h,w
	xorlw	02h
	skipz
	goto	u5331
	goto	u5330
u5331:
	goto	l13268
u5330:
	line	92
	
l13266:	
;LCD1602.c: 91: {
;LCD1602.c: 92: Location = 0xC0 + column;
	movf	(LCD1602_WriteString@column)^080h,w
	addlw	0C0h
	movwf	(??_LCD1602_WriteString+0)^080h+0
	movf	(??_LCD1602_WriteString+0)^080h+0,w
	movwf	(LCD1602_WriteString@Location)^080h
	goto	l13268
	line	93
	
l1487:	
	goto	l13268
	line	94
	
l1486:	
	
l13268:	
;LCD1602.c: 93: }
;LCD1602.c: 94: LCD1602_WriteCommand(Location);
	movf	(LCD1602_WriteString@Location)^080h,w
	fcall	_LCD1602_WriteCommand
	line	97
;LCD1602.c: 97: while(*String != '\0')
	goto	l13274
	
l1489:	
	line	99
	
l13270:	
;LCD1602.c: 98: {
;LCD1602.c: 99: LCD1602_WriteData(*String++);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(LCD1602_WriteString@String)^080h,w
	movwf	fsr0
	fcall	stringdir
	fcall	_LCD1602_WriteData
	
l13272:	
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_LCD1602_WriteString+0)^080h+0
	movf	(??_LCD1602_WriteString+0)^080h+0,w
	addwf	(LCD1602_WriteString@String)^080h,f
	goto	l13274
	line	100
	
l1488:	
	line	97
	
l13274:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(LCD1602_WriteString@String)^080h,w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u5341
	goto	u5340
u5341:
	goto	l13270
u5340:
	goto	l1491
	
l1490:	
	line	101
	
l1491:	
	return
	opt stack 0
GLOBAL	__end_of_LCD1602_WriteString
	__end_of_LCD1602_WriteString:
;; =============== function _LCD1602_WriteString ends ============

	signat	_LCD1602_WriteString,12408
	global	_LCD1602_Init
psect	text1022,local,class=CODE,delta=2
global __ptext1022
__ptext1022:

;; *************** function _LCD1602_Init *****************
;; Defined at:
;;		line 45 in file "D:\6_pic_project\00_Design_Flow_Car\Driver\LCD1602.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_LCD1602_Delay
;;		_LCD1602_WriteCommand
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1022
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\LCD1602.c"
	line	45
	global	__size_of_LCD1602_Init
	__size_of_LCD1602_Init	equ	__end_of_LCD1602_Init-_LCD1602_Init
	
_LCD1602_Init:	
	opt	stack 1
; Regs used in _LCD1602_Init: [wreg+status,2+status,0+pclath+cstack]
	line	46
	
l13246:	
;LCD1602.c: 46: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	47
	
l13248:	
;LCD1602.c: 47: LCD1602_Delay();
	fcall	_LCD1602_Delay
	line	48
	
l13250:	
;LCD1602.c: 48: LCD1602_WriteCommand(0x01);
	movlw	(01h)
	fcall	_LCD1602_WriteCommand
	line	49
	
l13252:	
;LCD1602.c: 49: LCD1602_WriteCommand(0x38);
	movlw	(038h)
	fcall	_LCD1602_WriteCommand
	line	50
	
l13254:	
;LCD1602.c: 50: LCD1602_WriteCommand(0x0C);
	movlw	(0Ch)
	fcall	_LCD1602_WriteCommand
	line	51
	
l13256:	
;LCD1602.c: 51: LCD1602_WriteCommand(0x06);
	movlw	(06h)
	fcall	_LCD1602_WriteCommand
	line	52
	
l13258:	
;LCD1602.c: 52: LCD1602_WriteCommand(0x80);
	movlw	(080h)
	fcall	_LCD1602_WriteCommand
	line	53
	
l1476:	
	return
	opt stack 0
GLOBAL	__end_of_LCD1602_Init
	__end_of_LCD1602_Init:
;; =============== function _LCD1602_Init ends ============

	signat	_LCD1602_Init,88
	global	_LCD1602_Pow
psect	text1023,local,class=CODE,delta=2
global __ptext1023
__ptext1023:

;; *************** function _LCD1602_Pow *****************
;; Defined at:
;;		line 110 in file "D:\6_pic_project\00_Design_Flow_Car\Driver\LCD1602.c"
;; Parameters:    Size  Location     Type
;;  X               1    wreg     unsigned char 
;;  Y               1   39[BANK1 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  X               1   47[BANK1 ] unsigned char 
;;  result          4   49[BANK1 ] long 
;;  i               1   48[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   39[BANK1 ] long 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       4       0       0
;;      Locals:         0       0       6       0       0
;;      Temps:          0       0       4       0       0
;;      Totals:         0       0      14       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___lmul
;; This function is called by:
;;		_LCD1602_WriteNum
;;		_LCD1602_WriteLongNum
;; This function uses a non-reentrant model
;;
psect	text1023
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\LCD1602.c"
	line	110
	global	__size_of_LCD1602_Pow
	__size_of_LCD1602_Pow	equ	__end_of_LCD1602_Pow-_LCD1602_Pow
	
_LCD1602_Pow:	
	opt	stack 1
; Regs used in _LCD1602_Pow: [wreg+status,2+status,0+pclath+cstack]
;LCD1602_Pow@X stored from wreg
	line	112
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(LCD1602_Pow@X)^080h
	
l13232:	
;LCD1602.c: 111: unsigned char i;
;LCD1602.c: 112: long result=1;
	movlw	0
	movwf	(LCD1602_Pow@result+3)^080h
	movlw	0
	movwf	(LCD1602_Pow@result+2)^080h
	movlw	0
	movwf	(LCD1602_Pow@result+1)^080h
	movlw	01h
	movwf	(LCD1602_Pow@result)^080h

	line	113
	
l13234:	
;LCD1602.c: 113: for(i=0;i<Y;i++)
	clrf	(LCD1602_Pow@i)^080h
	goto	l13240
	line	114
	
l1495:	
	line	115
	
l13236:	
;LCD1602.c: 114: {
;LCD1602.c: 115: result*=X;
	movf	(LCD1602_Pow@X)^080h,w
	movwf	(??_LCD1602_Pow+0)^080h+0
	clrf	((??_LCD1602_Pow+0)^080h+0+1)
	clrf	((??_LCD1602_Pow+0)^080h+0+2)
	clrf	((??_LCD1602_Pow+0)^080h+0+3)
	movf	3+(??_LCD1602_Pow+0)^080h+0,w
	movwf	(?___lmul+3)^080h
	movf	2+(??_LCD1602_Pow+0)^080h+0,w
	movwf	(?___lmul+2)^080h
	movf	1+(??_LCD1602_Pow+0)^080h+0,w
	movwf	(?___lmul+1)^080h
	movf	0+(??_LCD1602_Pow+0)^080h+0,w
	movwf	(?___lmul)^080h

	movf	(LCD1602_Pow@result+3)^080h,w
	movwf	3+(?___lmul)^080h+04h
	movf	(LCD1602_Pow@result+2)^080h,w
	movwf	2+(?___lmul)^080h+04h
	movf	(LCD1602_Pow@result+1)^080h,w
	movwf	1+(?___lmul)^080h+04h
	movf	(LCD1602_Pow@result)^080h,w
	movwf	0+(?___lmul)^080h+04h

	fcall	___lmul
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(3+(?___lmul))^080h,w
	movwf	(LCD1602_Pow@result+3)^080h
	movf	(2+(?___lmul))^080h,w
	movwf	(LCD1602_Pow@result+2)^080h
	movf	(1+(?___lmul))^080h,w
	movwf	(LCD1602_Pow@result+1)^080h
	movf	(0+(?___lmul))^080h,w
	movwf	(LCD1602_Pow@result)^080h

	line	113
	
l13238:	
	movlw	(01h)
	movwf	(??_LCD1602_Pow+0)^080h+0
	movf	(??_LCD1602_Pow+0)^080h+0,w
	addwf	(LCD1602_Pow@i)^080h,f
	goto	l13240
	
l1494:	
	
l13240:	
	movf	(LCD1602_Pow@Y)^080h,w
	subwf	(LCD1602_Pow@i)^080h,w
	skipc
	goto	u5311
	goto	u5310
u5311:
	goto	l13236
u5310:
	goto	l13242
	
l1496:	
	line	117
	
l13242:	
;LCD1602.c: 116: }
;LCD1602.c: 117: return result;
	movf	(LCD1602_Pow@result+3)^080h,w
	movwf	(?_LCD1602_Pow+3)^080h
	movf	(LCD1602_Pow@result+2)^080h,w
	movwf	(?_LCD1602_Pow+2)^080h
	movf	(LCD1602_Pow@result+1)^080h,w
	movwf	(?_LCD1602_Pow+1)^080h
	movf	(LCD1602_Pow@result)^080h,w
	movwf	(?_LCD1602_Pow)^080h

	goto	l1497
	
l13244:	
	line	118
	
l1497:	
	return
	opt stack 0
GLOBAL	__end_of_LCD1602_Pow
	__end_of_LCD1602_Pow:
;; =============== function _LCD1602_Pow ends ============

	signat	_LCD1602_Pow,8316
	global	_LCD1602_WriteData
psect	text1024,local,class=CODE,delta=2
global __ptext1024
__ptext1024:

;; *************** function _LCD1602_WriteData *****************
;; Defined at:
;;		line 38 in file "D:\6_pic_project\00_Design_Flow_Car\Driver\LCD1602.c"
;; Parameters:    Size  Location     Type
;;  Data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Data            1    2[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       1       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_LCD1602_Delay
;; This function is called by:
;;		_LCD1602_WriteString
;;		_LCD1602_WriteNum
;;		_LCD1602_WriteChar
;;		_LCD1602_WriteLongNum
;; This function uses a non-reentrant model
;;
psect	text1024
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\LCD1602.c"
	line	38
	global	__size_of_LCD1602_WriteData
	__size_of_LCD1602_WriteData	equ	__end_of_LCD1602_WriteData-_LCD1602_WriteData
	
_LCD1602_WriteData:	
	opt	stack 1
; Regs used in _LCD1602_WriteData: [wreg+status,2+status,0+pclath+cstack]
;LCD1602_WriteData@Data stored from wreg
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(LCD1602_WriteData@Data)^080h
	line	39
	
l13220:	
;LCD1602.c: 39: PORTD=Data;
	movf	(LCD1602_WriteData@Data)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	40
	
l13222:	
;LCD1602.c: 40: RA5=1;RA2=0;RA3=0;LCD1602_Delay();RA3=1;
	bsf	(45/8),(45)&7
	
l13224:	
	bcf	(42/8),(42)&7
	
l13226:	
	bcf	(43/8),(43)&7
	
l13228:	
	fcall	_LCD1602_Delay
	
l13230:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(43/8),(43)&7
	line	41
	
l1473:	
	return
	opt stack 0
GLOBAL	__end_of_LCD1602_WriteData
	__end_of_LCD1602_WriteData:
;; =============== function _LCD1602_WriteData ends ============

	signat	_LCD1602_WriteData,4216
	global	_LCD1602_WriteCommand
psect	text1025,local,class=CODE,delta=2
global __ptext1025
__ptext1025:

;; *************** function _LCD1602_WriteCommand *****************
;; Defined at:
;;		line 26 in file "D:\6_pic_project\00_Design_Flow_Car\Driver\LCD1602.c"
;; Parameters:    Size  Location     Type
;;  Command         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Command         1    2[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       1       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_LCD1602_Delay
;; This function is called by:
;;		_LCD1602_Init
;;		_LCD1602_WriteString
;;		_LCD1602_WriteNum
;;		_LCD1602_WriteChar
;;		_LCD1602_WriteLongNum
;; This function uses a non-reentrant model
;;
psect	text1025
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\LCD1602.c"
	line	26
	global	__size_of_LCD1602_WriteCommand
	__size_of_LCD1602_WriteCommand	equ	__end_of_LCD1602_WriteCommand-_LCD1602_WriteCommand
	
_LCD1602_WriteCommand:	
	opt	stack 1
; Regs used in _LCD1602_WriteCommand: [wreg+status,2+status,0+pclath+cstack]
;LCD1602_WriteCommand@Command stored from wreg
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(LCD1602_WriteCommand@Command)^080h
	line	27
	
l13208:	
;LCD1602.c: 27: PORTD=Command;
	movf	(LCD1602_WriteCommand@Command)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	28
	
l13210:	
;LCD1602.c: 28: RA5=0;RA2=0;RA3=0;LCD1602_Delay();RA3=1;
	bcf	(45/8),(45)&7
	
l13212:	
	bcf	(42/8),(42)&7
	
l13214:	
	bcf	(43/8),(43)&7
	
l13216:	
	fcall	_LCD1602_Delay
	
l13218:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(43/8),(43)&7
	line	29
	
l1470:	
	return
	opt stack 0
GLOBAL	__end_of_LCD1602_WriteCommand
	__end_of_LCD1602_WriteCommand:
;; =============== function _LCD1602_WriteCommand ends ============

	signat	_LCD1602_WriteCommand,4216
	global	_printf
psect	text1026,local,class=CODE,delta=2
global __ptext1026
__ptext1026:

;; *************** function _printf *****************
;; Defined at:
;;		line 461 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  f               1    wreg     PTR const unsigned char 
;;		 -> STR_5(3), STR_4(11), STR_3(18), 
;; Auto vars:     Size  Location     Type
;;  f               1   20[BANK1 ] PTR const unsigned char 
;;		 -> STR_5(3), STR_4(11), STR_3(18), 
;;  _val            4   23[BANK1 ] struct .
;;  c               1   27[BANK1 ] char 
;;  ap              1   22[BANK1 ] PTR void [1]
;;		 -> ?_printf(2), 
;;  prec            1   21[BANK1 ] char 
;;  flag            1   19[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   14[BANK1 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       2       0       0
;;      Locals:         0       0       9       0       0
;;      Temps:          0       0       3       0       0
;;      Totals:         0       0      14       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_putch
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_main
;;		_Serial_PrintString
;; This function uses a non-reentrant model
;;
psect	text1026
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\doprnt.c"
	line	461
	global	__size_of_printf
	__size_of_printf	equ	__end_of_printf-_printf
	
_printf:	
	opt	stack 2
; Regs used in _printf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;printf@f stored from wreg
	line	537
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(printf@f)^080h
	
l13154:	
	movlw	(?_printf)&0ffh
	movwf	(??_printf+0)^080h+0
	movf	(??_printf+0)^080h+0,w
	movwf	(printf@ap)^080h
	line	540
	goto	l13206
	
l9238:	
	line	542
	
l13156:	
	movf	(printf@c)^080h,w
	xorlw	025h
	skipnz
	goto	u5231
	goto	u5230
u5231:
	goto	l9239
u5230:
	line	545
	
l13158:	
	movf	(printf@c)^080h,w
	fcall	_putch
	line	546
	goto	l13206
	line	547
	
l9239:	
	line	552
	clrf	(printf@flag)^080h
	line	638
	goto	l13168
	line	640
	
l9241:	
	line	641
	goto	l9257
	line	700
	
l9243:	
	goto	l13170
	line	701
	
l9244:	
	line	702
	goto	l13170
	line	787
	
l9246:	
	line	802
	
l13160:	
	movf	(printf@ap)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_printf+0)^080h+0
	movf	(??_printf+0)^080h+0,w
	movwf	(printf@c)^080h
	
l13162:	
	movlw	(02h)
	movwf	(??_printf+0)^080h+0
	movf	(??_printf+0)^080h+0,w
	addwf	(printf@ap)^080h,f
	goto	l13164
	line	805
	
l9247:	
	line	812
	
l13164:	
	movf	(printf@c)^080h,w
	fcall	_putch
	line	813
	goto	l13206
	line	825
	
l13166:	
	goto	l13170
	line	638
	
l9240:	
	
l13168:	
	movlw	01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(printf@f)^080h,f
	movlw	-01h
	addwf	(printf@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	movwf	(printf@c)^080h
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 105
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; jumptable            260     6 (fixed)
; rangetable           110     6 (fixed)
; spacedrange          218     9 (fixed)
; locatedrange         106     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l9257
	xorlw	99^0	; case 99
	skipnz
	goto	l13160
	xorlw	100^99	; case 100
	skipnz
	goto	l13170
	xorlw	105^100	; case 105
	skipnz
	goto	l13170
	goto	l13164
	opt asmopt_on

	line	825
	
l9245:	
	line	1254
	
l13170:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@ap)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(printf@_val)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(printf@_val+1)^080h
	
l13172:	
	movlw	(02h)
	movwf	(??_printf+0)^080h+0
	movf	(??_printf+0)^080h+0,w
	addwf	(printf@ap)^080h,f
	line	1256
	
l13174:	
	btfss	(printf@_val+1)^080h,7
	goto	u5241
	goto	u5240
u5241:
	goto	l13180
u5240:
	line	1257
	
l13176:	
	movlw	(03h)
	movwf	(??_printf+0)^080h+0
	movf	(??_printf+0)^080h+0,w
	iorwf	(printf@flag)^080h,f
	line	1258
	
l13178:	
	comf	(printf@_val)^080h,f
	comf	(printf@_val+1)^080h,f
	incf	(printf@_val)^080h,f
	skipnz
	incf	(printf@_val+1)^080h,f
	goto	l13180
	line	1259
	
l9248:	
	line	1300
	
l13180:	
	clrf	(printf@c)^080h
	bsf	status,0
	rlf	(printf@c)^080h,f
	
l13182:	
	movf	(printf@c)^080h,w
	xorlw	05h
	skipz
	goto	u5251
	goto	u5250
u5251:
	goto	l13186
u5250:
	goto	l13194
	
l13184:	
	goto	l13194
	line	1301
	
l9249:	
	
l13186:	
	movf	(printf@c)^080h,w
	movwf	(??_printf+0)^080h+0
	addwf	(??_printf+0)^080h+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_printf+1)^080h+0
	fcall	stringdir
	movwf	(??_printf+1)^080h+0+1
	movf	1+(??_printf+1)^080h+0,w
	subwf	(printf@_val+1)^080h,w
	skipz
	goto	u5265
	movf	0+(??_printf+1)^080h+0,w
	subwf	(printf@_val)^080h,w
u5265:
	skipnc
	goto	u5261
	goto	u5260
u5261:
	goto	l13190
u5260:
	goto	l13194
	line	1302
	
l13188:	
	goto	l13194
	
l9251:	
	line	1300
	
l13190:	
	movlw	(01h)
	movwf	(??_printf+0)^080h+0
	movf	(??_printf+0)^080h+0,w
	addwf	(printf@c)^080h,f
	
l13192:	
	movf	(printf@c)^080h,w
	xorlw	05h
	skipz
	goto	u5271
	goto	u5270
u5271:
	goto	l13186
u5270:
	goto	l13194
	
l9250:	
	line	1433
	
l13194:	
	movf	(printf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u5281
	goto	u5280
u5281:
	goto	l13198
u5280:
	line	1434
	
l13196:	
	movlw	(02Dh)
	fcall	_putch
	goto	l13198
	
l9252:	
	line	1467
	
l13198:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@c)^080h,w
	movwf	(??_printf+0)^080h+0
	movf	(??_printf+0)^080h+0,w
	movwf	(printf@prec)^080h
	line	1469
	goto	l13204
	
l9254:	
	line	1484
	
l13200:	
	movlw	low(0Ah)
	movwf	(?___lwmod)^080h
	movlw	high(0Ah)
	movwf	((?___lwmod)^080h)+1
	movf	(printf@prec)^080h,w
	movwf	(??_printf+0)^080h+0
	addwf	(??_printf+0)^080h+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___lwdiv)^080h
	fcall	stringdir
	movwf	(?___lwdiv+1)^080h
	movf	(printf@_val+1)^080h,w
	clrf	1+(?___lwdiv)^080h+02h
	addwf	1+(?___lwdiv)^080h+02h
	movf	(printf@_val)^080h,w
	clrf	0+(?___lwdiv)^080h+02h
	addwf	0+(?___lwdiv)^080h+02h

	fcall	___lwdiv
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?___lwdiv))^080h,w
	clrf	1+(?___lwmod)^080h+02h
	addwf	1+(?___lwmod)^080h+02h
	movf	(0+(?___lwdiv))^080h,w
	clrf	0+(?___lwmod)^080h+02h
	addwf	0+(?___lwmod)^080h+02h

	fcall	___lwmod
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___lwmod))^080h,w
	addlw	030h
	movwf	(??_printf+1)^080h+0
	movf	(??_printf+1)^080h+0,w
	movwf	(printf@c)^080h
	line	1516
	
l13202:	
	movf	(printf@c)^080h,w
	fcall	_putch
	goto	l13204
	line	1517
	
l9253:	
	line	1469
	
l13204:	
	movlw	(-1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_printf+0)^080h+0
	movf	(??_printf+0)^080h+0,w
	addwf	(printf@prec)^080h,f
	movf	((printf@prec)^080h),w
	xorlw	-1
	skipz
	goto	u5291
	goto	u5290
u5291:
	goto	l13200
u5290:
	goto	l13206
	
l9255:	
	goto	l13206
	line	1525
	
l9237:	
	line	540
	
l13206:	
	movlw	01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(printf@f)^080h,f
	movlw	-01h
	addwf	(printf@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_printf+0)^080h+0
	movf	(??_printf+0)^080h+0,w
	movwf	(printf@c)^080h
	movf	((printf@c)^080h),f
	skipz
	goto	u5301
	goto	u5300
u5301:
	goto	l13156
u5300:
	goto	l9257
	
l9256:	
	goto	l9257
	line	1527
	
l9242:	
	line	1533
;	Return value of _printf is never used
	
l9257:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
;; =============== function _printf ends ============

	signat	_printf,602
	global	_Delay_ms
psect	text1027,local,class=CODE,delta=2
global __ptext1027
__ptext1027:

;; *************** function _Delay_ms *****************
;; Defined at:
;;		line 4 in file "D:\6_pic_project\00_Design_Flow_Car\System\Delay.c"
;; Parameters:    Size  Location     Type
;;  x               2    0[BANK1 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       2       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1027
	file	"D:\6_pic_project\00_Design_Flow_Car\System\Delay.c"
	line	4
	global	__size_of_Delay_ms
	__size_of_Delay_ms	equ	__end_of_Delay_ms-_Delay_ms
	
_Delay_ms:	
	opt	stack 3
; Regs used in _Delay_ms: [wreg]
	line	5
	
l13150:	
;Delay.c: 5: while(x--)
	goto	l13152
	
l6457:	
	line	7
;Delay.c: 6: {
;Delay.c: 7: _nop();
	nop
	goto	l13152
	line	8
	
l6456:	
	line	5
	
l13152:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(Delay_ms@x)^080h,f
	movlw	high(01h)
	skipc
	decf	(Delay_ms@x+1)^080h,f
	subwf	(Delay_ms@x+1)^080h,f
	movlw	high(0FFFFh)
	xorwf	((Delay_ms@x+1)^080h),w
	skipz
	goto	u5225
	movlw	low(0FFFFh)
	xorwf	((Delay_ms@x)^080h),w
u5225:

	skipz
	goto	u5221
	goto	u5220
u5221:
	goto	l6457
u5220:
	goto	l6459
	
l6458:	
	line	9
	
l6459:	
	return
	opt stack 0
GLOBAL	__end_of_Delay_ms
	__end_of_Delay_ms:
;; =============== function _Delay_ms ends ============

	signat	_Delay_ms,4216
	global	___aldiv
psect	text1028,local,class=CODE,delta=2
global __ptext1028
__ptext1028:

;; *************** function ___aldiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\aldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4   13[BANK1 ] long 
;;  dividend        4   17[BANK1 ] long 
;; Auto vars:     Size  Location     Type
;;  quotient        4   24[BANK1 ] long 
;;  sign            1   23[BANK1 ] unsigned char 
;;  counter         1   22[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   13[BANK1 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       8       0       0
;;      Locals:         0       0       6       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0      15       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCD1602_WriteNum
;;		_LCD1602_WriteLongNum
;; This function uses a non-reentrant model
;;
psect	text1028
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\aldiv.c"
	line	5
	global	__size_of___aldiv
	__size_of___aldiv	equ	__end_of___aldiv-___aldiv
	
___aldiv:	
	opt	stack 2
; Regs used in ___aldiv: [wreg+status,2+status,0]
	line	9
	
l13046:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(___aldiv@sign)^080h
	line	10
	btfss	(___aldiv@divisor+3)^080h,7
	goto	u5041
	goto	u5040
u5041:
	goto	l13052
u5040:
	line	11
	
l13048:	
	comf	(___aldiv@divisor)^080h,f
	comf	(___aldiv@divisor+1)^080h,f
	comf	(___aldiv@divisor+2)^080h,f
	comf	(___aldiv@divisor+3)^080h,f
	incf	(___aldiv@divisor)^080h,f
	skipnz
	incf	(___aldiv@divisor+1)^080h,f
	skipnz
	incf	(___aldiv@divisor+2)^080h,f
	skipnz
	incf	(___aldiv@divisor+3)^080h,f
	line	12
	
l13050:	
	clrf	(___aldiv@sign)^080h
	bsf	status,0
	rlf	(___aldiv@sign)^080h,f
	goto	l13052
	line	13
	
l10135:	
	line	14
	
l13052:	
	btfss	(___aldiv@dividend+3)^080h,7
	goto	u5051
	goto	u5050
u5051:
	goto	l13058
u5050:
	line	15
	
l13054:	
	comf	(___aldiv@dividend)^080h,f
	comf	(___aldiv@dividend+1)^080h,f
	comf	(___aldiv@dividend+2)^080h,f
	comf	(___aldiv@dividend+3)^080h,f
	incf	(___aldiv@dividend)^080h,f
	skipnz
	incf	(___aldiv@dividend+1)^080h,f
	skipnz
	incf	(___aldiv@dividend+2)^080h,f
	skipnz
	incf	(___aldiv@dividend+3)^080h,f
	line	16
	
l13056:	
	movlw	(01h)
	movwf	(??___aldiv+0)^080h+0
	movf	(??___aldiv+0)^080h+0,w
	xorwf	(___aldiv@sign)^080h,f
	goto	l13058
	line	17
	
l10136:	
	line	18
	
l13058:	
	movlw	0
	movwf	(___aldiv@quotient+3)^080h
	movlw	0
	movwf	(___aldiv@quotient+2)^080h
	movlw	0
	movwf	(___aldiv@quotient+1)^080h
	movlw	0
	movwf	(___aldiv@quotient)^080h

	line	19
	
l13060:	
	movf	(___aldiv@divisor+3)^080h,w
	iorwf	(___aldiv@divisor+2)^080h,w
	iorwf	(___aldiv@divisor+1)^080h,w
	iorwf	(___aldiv@divisor)^080h,w
	skipnz
	goto	u5061
	goto	u5060
u5061:
	goto	l13080
u5060:
	line	20
	
l13062:	
	clrf	(___aldiv@counter)^080h
	bsf	status,0
	rlf	(___aldiv@counter)^080h,f
	line	21
	goto	l13066
	
l10139:	
	line	22
	
l13064:	
	movlw	01h
	movwf	(??___aldiv+0)^080h+0
u5075:
	clrc
	rlf	(___aldiv@divisor)^080h,f
	rlf	(___aldiv@divisor+1)^080h,f
	rlf	(___aldiv@divisor+2)^080h,f
	rlf	(___aldiv@divisor+3)^080h,f
	decfsz	(??___aldiv+0)^080h+0
	goto	u5075
	line	23
	movlw	(01h)
	movwf	(??___aldiv+0)^080h+0
	movf	(??___aldiv+0)^080h+0,w
	addwf	(___aldiv@counter)^080h,f
	goto	l13066
	line	24
	
l10138:	
	line	21
	
l13066:	
	btfss	(___aldiv@divisor+3)^080h,(31)&7
	goto	u5081
	goto	u5080
u5081:
	goto	l13064
u5080:
	goto	l13068
	
l10140:	
	goto	l13068
	line	25
	
l10141:	
	line	26
	
l13068:	
	movlw	01h
	movwf	(??___aldiv+0)^080h+0
u5095:
	clrc
	rlf	(___aldiv@quotient)^080h,f
	rlf	(___aldiv@quotient+1)^080h,f
	rlf	(___aldiv@quotient+2)^080h,f
	rlf	(___aldiv@quotient+3)^080h,f
	decfsz	(??___aldiv+0)^080h+0
	goto	u5095
	line	27
	
l13070:	
	movf	(___aldiv@divisor+3)^080h,w
	subwf	(___aldiv@dividend+3)^080h,w
	skipz
	goto	u5105
	movf	(___aldiv@divisor+2)^080h,w
	subwf	(___aldiv@dividend+2)^080h,w
	skipz
	goto	u5105
	movf	(___aldiv@divisor+1)^080h,w
	subwf	(___aldiv@dividend+1)^080h,w
	skipz
	goto	u5105
	movf	(___aldiv@divisor)^080h,w
	subwf	(___aldiv@dividend)^080h,w
u5105:
	skipc
	goto	u5101
	goto	u5100
u5101:
	goto	l13076
u5100:
	line	28
	
l13072:	
	movf	(___aldiv@divisor)^080h,w
	subwf	(___aldiv@dividend)^080h,f
	movf	(___aldiv@divisor+1)^080h,w
	skipc
	incfsz	(___aldiv@divisor+1)^080h,w
	subwf	(___aldiv@dividend+1)^080h,f
	movf	(___aldiv@divisor+2)^080h,w
	skipc
	incfsz	(___aldiv@divisor+2)^080h,w
	subwf	(___aldiv@dividend+2)^080h,f
	movf	(___aldiv@divisor+3)^080h,w
	skipc
	incfsz	(___aldiv@divisor+3)^080h,w
	subwf	(___aldiv@dividend+3)^080h,f
	line	29
	
l13074:	
	bsf	(___aldiv@quotient)^080h+(0/8),(0)&7
	goto	l13076
	line	30
	
l10142:	
	line	31
	
l13076:	
	movlw	01h
u5115:
	clrc
	rrf	(___aldiv@divisor+3)^080h,f
	rrf	(___aldiv@divisor+2)^080h,f
	rrf	(___aldiv@divisor+1)^080h,f
	rrf	(___aldiv@divisor)^080h,f
	addlw	-1
	skipz
	goto	u5115

	line	32
	
l13078:	
	movlw	low(01h)
	subwf	(___aldiv@counter)^080h,f
	btfss	status,2
	goto	u5121
	goto	u5120
u5121:
	goto	l13068
u5120:
	goto	l13080
	
l10143:	
	goto	l13080
	line	33
	
l10137:	
	line	34
	
l13080:	
	movf	(___aldiv@sign)^080h,w
	skipz
	goto	u5130
	goto	l13084
u5130:
	line	35
	
l13082:	
	comf	(___aldiv@quotient)^080h,f
	comf	(___aldiv@quotient+1)^080h,f
	comf	(___aldiv@quotient+2)^080h,f
	comf	(___aldiv@quotient+3)^080h,f
	incf	(___aldiv@quotient)^080h,f
	skipnz
	incf	(___aldiv@quotient+1)^080h,f
	skipnz
	incf	(___aldiv@quotient+2)^080h,f
	skipnz
	incf	(___aldiv@quotient+3)^080h,f
	goto	l13084
	
l10144:	
	line	36
	
l13084:	
	movf	(___aldiv@quotient+3)^080h,w
	movwf	(?___aldiv+3)^080h
	movf	(___aldiv@quotient+2)^080h,w
	movwf	(?___aldiv+2)^080h
	movf	(___aldiv@quotient+1)^080h,w
	movwf	(?___aldiv+1)^080h
	movf	(___aldiv@quotient)^080h,w
	movwf	(?___aldiv)^080h

	goto	l10145
	
l13086:	
	line	37
	
l10145:	
	return
	opt stack 0
GLOBAL	__end_of___aldiv
	__end_of___aldiv:
;; =============== function ___aldiv ends ============

	signat	___aldiv,8316
	global	___almod
psect	text1029,local,class=CODE,delta=2
global __ptext1029
__ptext1029:

;; *************** function ___almod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\almod.c"
;; Parameters:    Size  Location     Type
;;  divisor         4   28[BANK1 ] long 
;;  dividend        4   32[BANK1 ] long 
;; Auto vars:     Size  Location     Type
;;  sign            1   38[BANK1 ] unsigned char 
;;  counter         1   37[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   28[BANK1 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       8       0       0
;;      Locals:         0       0       2       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0      11       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCD1602_WriteNum
;;		_LCD1602_WriteLongNum
;; This function uses a non-reentrant model
;;
psect	text1029
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\almod.c"
	line	5
	global	__size_of___almod
	__size_of___almod	equ	__end_of___almod-___almod
	
___almod:	
	opt	stack 2
; Regs used in ___almod: [wreg+status,2+status,0]
	line	8
	
l13012:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(___almod@sign)^080h
	line	9
	btfss	(___almod@dividend+3)^080h,7
	goto	u4951
	goto	u4950
u4951:
	goto	l13018
u4950:
	line	10
	
l13014:	
	comf	(___almod@dividend)^080h,f
	comf	(___almod@dividend+1)^080h,f
	comf	(___almod@dividend+2)^080h,f
	comf	(___almod@dividend+3)^080h,f
	incf	(___almod@dividend)^080h,f
	skipnz
	incf	(___almod@dividend+1)^080h,f
	skipnz
	incf	(___almod@dividend+2)^080h,f
	skipnz
	incf	(___almod@dividend+3)^080h,f
	line	11
	
l13016:	
	clrf	(___almod@sign)^080h
	bsf	status,0
	rlf	(___almod@sign)^080h,f
	goto	l13018
	line	12
	
l10122:	
	line	13
	
l13018:	
	btfss	(___almod@divisor+3)^080h,7
	goto	u4961
	goto	u4960
u4961:
	goto	l13022
u4960:
	line	14
	
l13020:	
	comf	(___almod@divisor)^080h,f
	comf	(___almod@divisor+1)^080h,f
	comf	(___almod@divisor+2)^080h,f
	comf	(___almod@divisor+3)^080h,f
	incf	(___almod@divisor)^080h,f
	skipnz
	incf	(___almod@divisor+1)^080h,f
	skipnz
	incf	(___almod@divisor+2)^080h,f
	skipnz
	incf	(___almod@divisor+3)^080h,f
	goto	l13022
	
l10123:	
	line	15
	
l13022:	
	movf	(___almod@divisor+3)^080h,w
	iorwf	(___almod@divisor+2)^080h,w
	iorwf	(___almod@divisor+1)^080h,w
	iorwf	(___almod@divisor)^080h,w
	skipnz
	goto	u4971
	goto	u4970
u4971:
	goto	l13038
u4970:
	line	16
	
l13024:	
	clrf	(___almod@counter)^080h
	bsf	status,0
	rlf	(___almod@counter)^080h,f
	line	17
	goto	l13028
	
l10126:	
	line	18
	
l13026:	
	movlw	01h
	movwf	(??___almod+0)^080h+0
u4985:
	clrc
	rlf	(___almod@divisor)^080h,f
	rlf	(___almod@divisor+1)^080h,f
	rlf	(___almod@divisor+2)^080h,f
	rlf	(___almod@divisor+3)^080h,f
	decfsz	(??___almod+0)^080h+0
	goto	u4985
	line	19
	movlw	(01h)
	movwf	(??___almod+0)^080h+0
	movf	(??___almod+0)^080h+0,w
	addwf	(___almod@counter)^080h,f
	goto	l13028
	line	20
	
l10125:	
	line	17
	
l13028:	
	btfss	(___almod@divisor+3)^080h,(31)&7
	goto	u4991
	goto	u4990
u4991:
	goto	l13026
u4990:
	goto	l13030
	
l10127:	
	goto	l13030
	line	21
	
l10128:	
	line	22
	
l13030:	
	movf	(___almod@divisor+3)^080h,w
	subwf	(___almod@dividend+3)^080h,w
	skipz
	goto	u5005
	movf	(___almod@divisor+2)^080h,w
	subwf	(___almod@dividend+2)^080h,w
	skipz
	goto	u5005
	movf	(___almod@divisor+1)^080h,w
	subwf	(___almod@dividend+1)^080h,w
	skipz
	goto	u5005
	movf	(___almod@divisor)^080h,w
	subwf	(___almod@dividend)^080h,w
u5005:
	skipc
	goto	u5001
	goto	u5000
u5001:
	goto	l13034
u5000:
	line	23
	
l13032:	
	movf	(___almod@divisor)^080h,w
	subwf	(___almod@dividend)^080h,f
	movf	(___almod@divisor+1)^080h,w
	skipc
	incfsz	(___almod@divisor+1)^080h,w
	subwf	(___almod@dividend+1)^080h,f
	movf	(___almod@divisor+2)^080h,w
	skipc
	incfsz	(___almod@divisor+2)^080h,w
	subwf	(___almod@dividend+2)^080h,f
	movf	(___almod@divisor+3)^080h,w
	skipc
	incfsz	(___almod@divisor+3)^080h,w
	subwf	(___almod@dividend+3)^080h,f
	goto	l13034
	
l10129:	
	line	24
	
l13034:	
	movlw	01h
u5015:
	clrc
	rrf	(___almod@divisor+3)^080h,f
	rrf	(___almod@divisor+2)^080h,f
	rrf	(___almod@divisor+1)^080h,f
	rrf	(___almod@divisor)^080h,f
	addlw	-1
	skipz
	goto	u5015

	line	25
	
l13036:	
	movlw	low(01h)
	subwf	(___almod@counter)^080h,f
	btfss	status,2
	goto	u5021
	goto	u5020
u5021:
	goto	l13030
u5020:
	goto	l13038
	
l10130:	
	goto	l13038
	line	26
	
l10124:	
	line	27
	
l13038:	
	movf	(___almod@sign)^080h,w
	skipz
	goto	u5030
	goto	l13042
u5030:
	line	28
	
l13040:	
	comf	(___almod@dividend)^080h,f
	comf	(___almod@dividend+1)^080h,f
	comf	(___almod@dividend+2)^080h,f
	comf	(___almod@dividend+3)^080h,f
	incf	(___almod@dividend)^080h,f
	skipnz
	incf	(___almod@dividend+1)^080h,f
	skipnz
	incf	(___almod@dividend+2)^080h,f
	skipnz
	incf	(___almod@dividend+3)^080h,f
	goto	l13042
	
l10131:	
	line	29
	
l13042:	
	movf	(___almod@dividend+3)^080h,w
	movwf	(?___almod+3)^080h
	movf	(___almod@dividend+2)^080h,w
	movwf	(?___almod+2)^080h
	movf	(___almod@dividend+1)^080h,w
	movwf	(?___almod+1)^080h
	movf	(___almod@dividend)^080h,w
	movwf	(?___almod)^080h

	goto	l10132
	
l13044:	
	line	30
	
l10132:	
	return
	opt stack 0
GLOBAL	__end_of___almod
	__end_of___almod:
;; =============== function ___almod ends ============

	signat	___almod,8316
	global	___lmul
psect	text1030,local,class=CODE,delta=2
global __ptext1030
__ptext1030:

;; *************** function ___lmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      4    0[BANK1 ] unsigned long 
;;  multiplicand    4    4[BANK1 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  product         4    9[BANK1 ] unsigned long 
;; Return value:  Size  Location     Type
;;                  4    0[BANK1 ] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       8       0       0
;;      Locals:         0       0       4       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0      13       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCD1602_Pow
;; This function uses a non-reentrant model
;;
psect	text1030
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lmul.c"
	line	3
	global	__size_of___lmul
	__size_of___lmul	equ	__end_of___lmul-___lmul
	
___lmul:	
	opt	stack 1
; Regs used in ___lmul: [wreg+status,2+status,0]
	line	4
	
l12832:	
	movlw	0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(___lmul@product+3)^080h
	movlw	0
	movwf	(___lmul@product+2)^080h
	movlw	0
	movwf	(___lmul@product+1)^080h
	movlw	0
	movwf	(___lmul@product)^080h

	goto	l12834
	line	6
	
l10015:	
	line	7
	
l12834:	
	btfss	(___lmul@multiplier)^080h,(0)&7
	goto	u4551
	goto	u4550
u4551:
	goto	l12838
u4550:
	line	8
	
l12836:	
	movf	(___lmul@multiplicand)^080h,w
	addwf	(___lmul@product)^080h,f
	movf	(___lmul@multiplicand+1)^080h,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4561
	addwf	(___lmul@product+1)^080h,f
u4561:
	movf	(___lmul@multiplicand+2)^080h,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4562
	addwf	(___lmul@product+2)^080h,f
u4562:
	movf	(___lmul@multiplicand+3)^080h,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4563
	addwf	(___lmul@product+3)^080h,f
u4563:

	goto	l12838
	
l10016:	
	line	9
	
l12838:	
	movlw	01h
	movwf	(??___lmul+0)^080h+0
u4575:
	clrc
	rlf	(___lmul@multiplicand)^080h,f
	rlf	(___lmul@multiplicand+1)^080h,f
	rlf	(___lmul@multiplicand+2)^080h,f
	rlf	(___lmul@multiplicand+3)^080h,f
	decfsz	(??___lmul+0)^080h+0
	goto	u4575
	line	10
	
l12840:	
	movlw	01h
u4585:
	clrc
	rrf	(___lmul@multiplier+3)^080h,f
	rrf	(___lmul@multiplier+2)^080h,f
	rrf	(___lmul@multiplier+1)^080h,f
	rrf	(___lmul@multiplier)^080h,f
	addlw	-1
	skipz
	goto	u4585

	line	11
	movf	(___lmul@multiplier+3)^080h,w
	iorwf	(___lmul@multiplier+2)^080h,w
	iorwf	(___lmul@multiplier+1)^080h,w
	iorwf	(___lmul@multiplier)^080h,w
	skipz
	goto	u4591
	goto	u4590
u4591:
	goto	l12834
u4590:
	goto	l12842
	
l10017:	
	line	12
	
l12842:	
	movf	(___lmul@product+3)^080h,w
	movwf	(?___lmul+3)^080h
	movf	(___lmul@product+2)^080h,w
	movwf	(?___lmul+2)^080h
	movf	(___lmul@product+1)^080h,w
	movwf	(?___lmul+1)^080h
	movf	(___lmul@product)^080h,w
	movwf	(?___lmul)^080h

	goto	l10018
	
l12844:	
	line	13
	
l10018:	
	return
	opt stack 0
GLOBAL	__end_of___lmul
	__end_of___lmul:
;; =============== function ___lmul ends ============

	signat	___lmul,8316
	global	___lwmod
psect	text1031,local,class=CODE,delta=2
global __ptext1031
__ptext1031:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    8[BANK1 ] unsigned int 
;;  dividend        2   10[BANK1 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   13[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    8[BANK1 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       4       0       0
;;      Locals:         0       0       1       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text1031
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 2
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l12710:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___lwmod@divisor+1)^080h,w
	iorwf	(___lwmod@divisor)^080h,w
	skipnz
	goto	u4141
	goto	u4140
u4141:
	goto	l12728
u4140:
	line	9
	
l12712:	
	clrf	(___lwmod@counter)^080h
	bsf	status,0
	rlf	(___lwmod@counter)^080h,f
	line	10
	goto	l12718
	
l9958:	
	line	11
	
l12714:	
	movlw	01h
	
u4155:
	clrc
	rlf	(___lwmod@divisor)^080h,f
	rlf	(___lwmod@divisor+1)^080h,f
	addlw	-1
	skipz
	goto	u4155
	line	12
	
l12716:	
	movlw	(01h)
	movwf	(??___lwmod+0)^080h+0
	movf	(??___lwmod+0)^080h+0,w
	addwf	(___lwmod@counter)^080h,f
	goto	l12718
	line	13
	
l9957:	
	line	10
	
l12718:	
	btfss	(___lwmod@divisor+1)^080h,(15)&7
	goto	u4161
	goto	u4160
u4161:
	goto	l12714
u4160:
	goto	l12720
	
l9959:	
	goto	l12720
	line	14
	
l9960:	
	line	15
	
l12720:	
	movf	(___lwmod@divisor+1)^080h,w
	subwf	(___lwmod@dividend+1)^080h,w
	skipz
	goto	u4175
	movf	(___lwmod@divisor)^080h,w
	subwf	(___lwmod@dividend)^080h,w
u4175:
	skipc
	goto	u4171
	goto	u4170
u4171:
	goto	l12724
u4170:
	line	16
	
l12722:	
	movf	(___lwmod@divisor)^080h,w
	subwf	(___lwmod@dividend)^080h,f
	movf	(___lwmod@divisor+1)^080h,w
	skipc
	decf	(___lwmod@dividend+1)^080h,f
	subwf	(___lwmod@dividend+1)^080h,f
	goto	l12724
	
l9961:	
	line	17
	
l12724:	
	movlw	01h
	
u4185:
	clrc
	rrf	(___lwmod@divisor+1)^080h,f
	rrf	(___lwmod@divisor)^080h,f
	addlw	-1
	skipz
	goto	u4185
	line	18
	
l12726:	
	movlw	low(01h)
	subwf	(___lwmod@counter)^080h,f
	btfss	status,2
	goto	u4191
	goto	u4190
u4191:
	goto	l12720
u4190:
	goto	l12728
	
l9962:	
	goto	l12728
	line	19
	
l9956:	
	line	20
	
l12728:	
	movf	(___lwmod@dividend+1)^080h,w
	clrf	(?___lwmod+1)^080h
	addwf	(?___lwmod+1)^080h
	movf	(___lwmod@dividend)^080h,w
	clrf	(?___lwmod)^080h
	addwf	(?___lwmod)^080h

	goto	l9963
	
l12730:	
	line	21
	
l9963:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text1032,local,class=CODE,delta=2
global __ptext1032
__ptext1032:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK1 ] unsigned int 
;;  dividend        2    2[BANK1 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    5[BANK1 ] unsigned int 
;;  counter         1    7[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK1 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       4       0       0
;;      Locals:         0       0       3       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       8       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text1032
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 2
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l12684:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(___lwdiv@quotient)^080h
	clrf	(___lwdiv@quotient+1)^080h
	line	10
	
l12686:	
	movf	(___lwdiv@divisor+1)^080h,w
	iorwf	(___lwdiv@divisor)^080h,w
	skipnz
	goto	u4071
	goto	u4070
u4071:
	goto	l12706
u4070:
	line	11
	
l12688:	
	clrf	(___lwdiv@counter)^080h
	bsf	status,0
	rlf	(___lwdiv@counter)^080h,f
	line	12
	goto	l12694
	
l9948:	
	line	13
	
l12690:	
	movlw	01h
	
u4085:
	clrc
	rlf	(___lwdiv@divisor)^080h,f
	rlf	(___lwdiv@divisor+1)^080h,f
	addlw	-1
	skipz
	goto	u4085
	line	14
	
l12692:	
	movlw	(01h)
	movwf	(??___lwdiv+0)^080h+0
	movf	(??___lwdiv+0)^080h+0,w
	addwf	(___lwdiv@counter)^080h,f
	goto	l12694
	line	15
	
l9947:	
	line	12
	
l12694:	
	btfss	(___lwdiv@divisor+1)^080h,(15)&7
	goto	u4091
	goto	u4090
u4091:
	goto	l12690
u4090:
	goto	l12696
	
l9949:	
	goto	l12696
	line	16
	
l9950:	
	line	17
	
l12696:	
	movlw	01h
	
u4105:
	clrc
	rlf	(___lwdiv@quotient)^080h,f
	rlf	(___lwdiv@quotient+1)^080h,f
	addlw	-1
	skipz
	goto	u4105
	line	18
	movf	(___lwdiv@divisor+1)^080h,w
	subwf	(___lwdiv@dividend+1)^080h,w
	skipz
	goto	u4115
	movf	(___lwdiv@divisor)^080h,w
	subwf	(___lwdiv@dividend)^080h,w
u4115:
	skipc
	goto	u4111
	goto	u4110
u4111:
	goto	l12702
u4110:
	line	19
	
l12698:	
	movf	(___lwdiv@divisor)^080h,w
	subwf	(___lwdiv@dividend)^080h,f
	movf	(___lwdiv@divisor+1)^080h,w
	skipc
	decf	(___lwdiv@dividend+1)^080h,f
	subwf	(___lwdiv@dividend+1)^080h,f
	line	20
	
l12700:	
	bsf	(___lwdiv@quotient)^080h+(0/8),(0)&7
	goto	l12702
	line	21
	
l9951:	
	line	22
	
l12702:	
	movlw	01h
	
u4125:
	clrc
	rrf	(___lwdiv@divisor+1)^080h,f
	rrf	(___lwdiv@divisor)^080h,f
	addlw	-1
	skipz
	goto	u4125
	line	23
	
l12704:	
	movlw	low(01h)
	subwf	(___lwdiv@counter)^080h,f
	btfss	status,2
	goto	u4131
	goto	u4130
u4131:
	goto	l12696
u4130:
	goto	l12706
	
l9952:	
	goto	l12706
	line	24
	
l9946:	
	line	25
	
l12706:	
	movf	(___lwdiv@quotient+1)^080h,w
	clrf	(?___lwdiv+1)^080h
	addwf	(?___lwdiv+1)^080h
	movf	(___lwdiv@quotient)^080h,w
	clrf	(?___lwdiv)^080h
	addwf	(?___lwdiv)^080h

	goto	l9953
	
l12708:	
	line	26
	
l9953:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_putch
psect	text1033,local,class=CODE,delta=2
global __ptext1033
__ptext1033:

;; *************** function _putch *****************
;; Defined at:
;;		line 13 in file "D:\6_pic_project\00_Design_Flow_Car\Driver\Usart.c"
;; Parameters:    Size  Location     Type
;;  ch              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ch              1    0[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       1       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text1033
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\Usart.c"
	line	13
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
	opt	stack 2
; Regs used in _putch: [wreg]
;putch@ch stored from wreg
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(putch@ch)^080h
	line	14
	
l12666:	
;Usart.c: 14: TXREG=ch;
	movf	(putch@ch)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	15
;Usart.c: 15: while(TRMT==0);
	goto	l5754
	
l5755:	
	
l5754:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1217/8)^080h,(1217)&7
	goto	u4031
	goto	u4030
u4031:
	goto	l5754
u4030:
	goto	l5757
	
l5756:	
	line	16
	
l5757:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
;; =============== function _putch ends ============

	signat	_putch,4216
	global	_LCD1602_Delay
psect	text1034,local,class=CODE,delta=2
global __ptext1034
__ptext1034:

;; *************** function _LCD1602_Delay *****************
;; Defined at:
;;		line 11 in file "D:\6_pic_project\00_Design_Flow_Car\Driver\LCD1602.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    0[BANK1 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       2       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCD1602_WriteCommand
;;		_LCD1602_WriteData
;;		_LCD1602_Init
;; This function uses a non-reentrant model
;;
psect	text1034
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\LCD1602.c"
	line	11
	global	__size_of_LCD1602_Delay
	__size_of_LCD1602_Delay	equ	__end_of_LCD1602_Delay-_LCD1602_Delay
	
_LCD1602_Delay:	
	opt	stack 1
; Regs used in _LCD1602_Delay: [wreg+status,2+status,0]
	line	13
	
l12400:	
;LCD1602.c: 12: unsigned int i;
;LCD1602.c: 13: for(i=999;i>0;i--);
	movlw	low(03E7h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(LCD1602_Delay@i)^080h
	movlw	high(03E7h)
	movwf	((LCD1602_Delay@i)^080h)+1
	
l12402:	
	movf	((LCD1602_Delay@i+1)^080h),w
	iorwf	((LCD1602_Delay@i)^080h),w
	skipz
	goto	u3481
	goto	u3480
u3481:
	goto	l12406
u3480:
	goto	l1467
	
l12404:	
	goto	l1467
	
l1465:	
	
l12406:	
	movlw	low(01h)
	subwf	(LCD1602_Delay@i)^080h,f
	movlw	high(01h)
	skipc
	decf	(LCD1602_Delay@i+1)^080h,f
	subwf	(LCD1602_Delay@i+1)^080h,f
	
l12408:	
	movf	((LCD1602_Delay@i+1)^080h),w
	iorwf	((LCD1602_Delay@i)^080h),w
	skipz
	goto	u3491
	goto	u3490
u3491:
	goto	l12406
u3490:
	goto	l1467
	
l1466:	
	line	14
	
l1467:	
	return
	opt stack 0
GLOBAL	__end_of_LCD1602_Delay
	__end_of_LCD1602_Delay:
;; =============== function _LCD1602_Delay ends ============

	signat	_LCD1602_Delay,88
	global	_Velociy_PID_Init
psect	text1035,local,class=CODE,delta=2
global __ptext1035
__ptext1035:

;; *************** function _Velociy_PID_Init *****************
;; Defined at:
;;		line 22 in file "D:\6_pic_project\00_Design_Flow_Car\Driver\pid.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1035
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\pid.c"
	line	22
	global	__size_of_Velociy_PID_Init
	__size_of_Velociy_PID_Init	equ	__end_of_Velociy_PID_Init-_Velociy_PID_Init
	
_Velociy_PID_Init:	
	opt	stack 3
; Regs used in _Velociy_PID_Init: [wreg]
	line	23
	
l12398:	
;pid.c: 23: Velocity.Kp=5.8;
	movlw	0x9a
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_Velocity)^0180h
	movlw	0xb9
	movwf	(_Velocity+1)^0180h
	movlw	0x40
	movwf	(_Velocity+2)^0180h
	line	24
;pid.c: 24: Velocity.Ki=0.06;
	movlw	0xc3
	movwf	0+(_Velocity)^0180h+03h
	movlw	0x75
	movwf	1+(_Velocity)^0180h+03h
	movlw	0x3d
	movwf	2+(_Velocity)^0180h+03h
	line	25
;pid.c: 25: Velocity.Kd=0;
	movlw	0x0
	movwf	0+(_Velocity)^0180h+06h
	movlw	0x0
	movwf	1+(_Velocity)^0180h+06h
	movlw	0x0
	movwf	2+(_Velocity)^0180h+06h
	line	26
	
l9217:	
	return
	opt stack 0
GLOBAL	__end_of_Velociy_PID_Init
	__end_of_Velociy_PID_Init:
;; =============== function _Velociy_PID_Init ends ============

	signat	_Velociy_PID_Init,88
	global	_Encoder_Init
psect	text1036,local,class=CODE,delta=2
global __ptext1036
__ptext1036:

;; *************** function _Encoder_Init *****************
;; Defined at:
;;		line 4 in file "D:\6_pic_project\00_Design_Flow_Car\Driver\Encoder.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1036
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\Encoder.c"
	line	4
	global	__size_of_Encoder_Init
	__size_of_Encoder_Init	equ	__end_of_Encoder_Init-_Encoder_Init
	
_Encoder_Init:	
	opt	stack 3
; Regs used in _Encoder_Init: [wreg+status,2]
	line	5
	
l12388:	
;Encoder.c: 5: TRISB0=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1072/8)^080h,(1072)&7
	line	8
;Encoder.c: 8: GIE=1;
	bsf	(95/8),(95)&7
	line	9
;Encoder.c: 9: INTE=1;
	bsf	(92/8),(92)&7
	line	10
;Encoder.c: 10: INTF=0;
	bcf	(89/8),(89)&7
	line	12
	
l12390:	
;Encoder.c: 12: OPTION_REG=0B01000111;
	movlw	(047h)
	movwf	(129)^080h	;volatile
	line	15
	
l12392:	
;Encoder.c: 15: T0IE=1;
	bsf	(93/8),(93)&7
	line	16
	
l12394:	
;Encoder.c: 16: T0IF=0;
	bcf	(90/8),(90)&7
	line	17
	
l12396:	
;Encoder.c: 17: TMR0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(1)	;volatile
	line	18
	
l8526:	
	return
	opt stack 0
GLOBAL	__end_of_Encoder_Init
	__end_of_Encoder_Init:
;; =============== function _Encoder_Init ends ============

	signat	_Encoder_Init,88
	global	_Motor_CCP_PWM_Init
psect	text1037,local,class=CODE,delta=2
global __ptext1037
__ptext1037:

;; *************** function _Motor_CCP_PWM_Init *****************
;; Defined at:
;;		line 31 in file "D:\6_pic_project\00_Design_Flow_Car\Driver\Motor.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1037
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\Motor.c"
	line	31
	global	__size_of_Motor_CCP_PWM_Init
	__size_of_Motor_CCP_PWM_Init	equ	__end_of_Motor_CCP_PWM_Init-_Motor_CCP_PWM_Init
	
_Motor_CCP_PWM_Init:	
	opt	stack 3
; Regs used in _Motor_CCP_PWM_Init: [wreg+status,2]
	line	33
	
l12380:	
;Motor.c: 33: CCP1CON=0X0C;
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(23)	;volatile
	line	34
;Motor.c: 34: CCPR1L=50;
	movlw	(032h)
	movwf	(21)	;volatile
	line	35
;Motor.c: 35: PR2=100;
	movlw	(064h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	38
;Motor.c: 38: CCP2CON = 0x0c;
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(29)	;volatile
	line	39
;Motor.c: 39: CCPR2L = 50;
	movlw	(032h)
	movwf	(27)	;volatile
	line	42
	
l12382:	
;Motor.c: 42: T2CON=0;
	clrf	(18)	;volatile
	line	43
	
l12384:	
;Motor.c: 43: TMR2=0;
	clrf	(17)	;volatile
	line	44
	
l12386:	
;Motor.c: 44: TMR2ON=1;
	bsf	(146/8),(146)&7
	line	45
	
l4382:	
	return
	opt stack 0
GLOBAL	__end_of_Motor_CCP_PWM_Init
	__end_of_Motor_CCP_PWM_Init:
;; =============== function _Motor_CCP_PWM_Init ends ============

	signat	_Motor_CCP_PWM_Init,88
	global	_Motor_GPIO_Init
psect	text1038,local,class=CODE,delta=2
global __ptext1038
__ptext1038:

;; *************** function _Motor_GPIO_Init *****************
;; Defined at:
;;		line 21 in file "D:\6_pic_project\00_Design_Flow_Car\Driver\Motor.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1038
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\Motor.c"
	line	21
	global	__size_of_Motor_GPIO_Init
	__size_of_Motor_GPIO_Init	equ	__end_of_Motor_GPIO_Init-_Motor_GPIO_Init
	
_Motor_GPIO_Init:	
	opt	stack 3
; Regs used in _Motor_GPIO_Init: []
	line	22
	
l12378:	
;Motor.c: 22: TRISB4=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1076/8)^080h,(1076)&7
	line	23
;Motor.c: 23: TRISB5=0;
	bcf	(1077/8)^080h,(1077)&7
	line	24
;Motor.c: 24: TRISB6=0;
	bcf	(1078/8)^080h,(1078)&7
	line	25
;Motor.c: 25: TRISB7=0;
	bcf	(1079/8)^080h,(1079)&7
	line	26
;Motor.c: 26: TRISC1=0;
	bcf	(1081/8)^080h,(1081)&7
	line	27
;Motor.c: 27: TRISC2=0;
	bcf	(1082/8)^080h,(1082)&7
	line	28
	
l4379:	
	return
	opt stack 0
GLOBAL	__end_of_Motor_GPIO_Init
	__end_of_Motor_GPIO_Init:
;; =============== function _Motor_GPIO_Init ends ============

	signat	_Motor_GPIO_Init,88
	global	_Usart_Init
psect	text1039,local,class=CODE,delta=2
global __ptext1039
__ptext1039:

;; *************** function _Usart_Init *****************
;; Defined at:
;;		line 39 in file "D:\6_pic_project\00_Design_Flow_Car\Driver\Usart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1039
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\Usart.c"
	line	39
	global	__size_of_Usart_Init
	__size_of_Usart_Init	equ	__end_of_Usart_Init-_Usart_Init
	
_Usart_Init:	
	opt	stack 3
; Regs used in _Usart_Init: [wreg]
	line	40
	
l12370:	
;Usart.c: 40: TXSTA=0B00100100;
	movlw	(024h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(152)^080h	;volatile
	line	41
;Usart.c: 41: RCSTA=0B10010000;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	42
;Usart.c: 42: SPBRG=12;
	movlw	(0Ch)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	43
	
l12372:	
;Usart.c: 43: GIE=1;
	bsf	(95/8),(95)&7
	line	44
	
l12374:	
;Usart.c: 44: PEIE=1;
	bsf	(94/8),(94)&7
	line	45
	
l12376:	
;Usart.c: 45: RCIE=1;
	bsf	(1125/8)^080h,(1125)&7
	line	46
	
l5769:	
	return
	opt stack 0
GLOBAL	__end_of_Usart_Init
	__end_of_Usart_Init:
;; =============== function _Usart_Init ends ============

	signat	_Usart_Init,88
	global	_Usart_GPIO_Init
psect	text1040,local,class=CODE,delta=2
global __ptext1040
__ptext1040:

;; *************** function _Usart_GPIO_Init *****************
;; Defined at:
;;		line 28 in file "D:\6_pic_project\00_Design_Flow_Car\Driver\Usart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1040
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\Usart.c"
	line	28
	global	__size_of_Usart_GPIO_Init
	__size_of_Usart_GPIO_Init	equ	__end_of_Usart_GPIO_Init-_Usart_GPIO_Init
	
_Usart_GPIO_Init:	
	opt	stack 3
; Regs used in _Usart_GPIO_Init: []
	line	29
	
l12368:	
;Usart.c: 29: TRISC6=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1086/8)^080h,(1086)&7
	line	30
;Usart.c: 30: TRISC7=1;
	bsf	(1087/8)^080h,(1087)&7
	line	31
	
l5766:	
	return
	opt stack 0
GLOBAL	__end_of_Usart_GPIO_Init
	__end_of_Usart_GPIO_Init:
;; =============== function _Usart_GPIO_Init ends ============

	signat	_Usart_GPIO_Init,88
	global	_LCD1602_GPIO_Init
psect	text1041,local,class=CODE,delta=2
global __ptext1041
__ptext1041:

;; *************** function _LCD1602_GPIO_Init *****************
;; Defined at:
;;		line 180 in file "D:\6_pic_project\00_Design_Flow_Car\Driver\LCD1602.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1041
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\LCD1602.c"
	line	180
	global	__size_of_LCD1602_GPIO_Init
	__size_of_LCD1602_GPIO_Init	equ	__end_of_LCD1602_GPIO_Init-_LCD1602_GPIO_Init
	
_LCD1602_GPIO_Init:	
	opt	stack 3
; Regs used in _LCD1602_GPIO_Init: [wreg+status,2]
	line	181
	
l12362:	
;LCD1602.c: 181: TRISA2=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1066/8)^080h,(1066)&7
	line	182
;LCD1602.c: 182: TRISA5=0;
	bcf	(1069/8)^080h,(1069)&7
	line	183
;LCD1602.c: 183: TRISA3=0;
	bcf	(1067/8)^080h,(1067)&7
	line	184
	
l12364:	
;LCD1602.c: 184: TRISD=0x00;
	clrf	(136)^080h	;volatile
	line	185
	
l12366:	
;LCD1602.c: 185: ADCON1=0x07;
	movlw	(07h)
	movwf	(159)^080h	;volatile
	line	186
	
l1519:	
	return
	opt stack 0
GLOBAL	__end_of_LCD1602_GPIO_Init
	__end_of_LCD1602_GPIO_Init:
;; =============== function _LCD1602_GPIO_Init ends ============

	signat	_LCD1602_GPIO_Init,88
	global	_Motor_Speed_Set
psect	text1042,local,class=CODE,delta=2
global __ptext1042
__ptext1042:

;; *************** function _Motor_Speed_Set *****************
;; Defined at:
;;		line 71 in file "D:\6_pic_project\00_Design_Flow_Car\User\Car_demo\Car_demo.c"
;; Parameters:    Size  Location     Type
;;  Speed1          2    0[BANK1 ] int 
;;  Speed2          2    2[BANK1 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       4       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1042
	file	"D:\6_pic_project\00_Design_Flow_Car\User\Car_demo\Car_demo.c"
	line	71
	global	__size_of_Motor_Speed_Set
	__size_of_Motor_Speed_Set	equ	__end_of_Motor_Speed_Set-_Motor_Speed_Set
	
_Motor_Speed_Set:	
	opt	stack 3
; Regs used in _Motor_Speed_Set: [wreg+status,2+status,0+btemp+1]
	line	72
	
l12236:	
;Car_demo.c: 72: if(Speed1 > 0 )
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Motor_Speed_Set@Speed1+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3315
	movlw	low(01h)
	subwf	(Motor_Speed_Set@Speed1)^080h,w
u3315:

	skipc
	goto	u3311
	goto	u3310
u3311:
	goto	l749
u3310:
	line	74
	
l12238:	
;Car_demo.c: 73: {
;Car_demo.c: 74: RB4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(52/8),(52)&7
	line	75
;Car_demo.c: 75: RB5 = 0;
	bcf	(53/8),(53)&7
	line	76
	
l12240:	
;Car_demo.c: 76: CCPR1L=(unsigned char)Speed1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Motor_Speed_Set@Speed1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	line	77
;Car_demo.c: 77: }
	goto	l12244
	line	78
	
l749:	
	line	80
;Car_demo.c: 78: else
;Car_demo.c: 79: {
;Car_demo.c: 80: RB4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(52/8),(52)&7
	line	81
;Car_demo.c: 81: RB5 = 1;
	bsf	(53/8),(53)&7
	line	82
	
l12242:	
;Car_demo.c: 82: CCPR1L=(unsigned char)(-Speed1);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	decf	(Motor_Speed_Set@Speed1)^080h,w
	xorlw	0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	goto	l12244
	line	83
	
l750:	
	line	85
	
l12244:	
;Car_demo.c: 83: }
;Car_demo.c: 85: if(Speed2 >0 )
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Motor_Speed_Set@Speed2+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3325
	movlw	low(01h)
	subwf	(Motor_Speed_Set@Speed2)^080h,w
u3325:

	skipc
	goto	u3321
	goto	u3320
u3321:
	goto	l751
u3320:
	line	87
	
l12246:	
;Car_demo.c: 86: {
;Car_demo.c: 87: RB6 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(54/8),(54)&7
	line	88
;Car_demo.c: 88: RB7 = 0;
	bcf	(55/8),(55)&7
	line	89
	
l12248:	
;Car_demo.c: 89: CCPR2L=(unsigned char)Speed2;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Motor_Speed_Set@Speed2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(27)	;volatile
	line	90
;Car_demo.c: 90: }
	goto	l753
	line	91
	
l751:	
	line	93
;Car_demo.c: 91: else
;Car_demo.c: 92: {
;Car_demo.c: 93: RB6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(54/8),(54)&7
	line	94
;Car_demo.c: 94: RB7 = 1;
	bsf	(55/8),(55)&7
	line	95
	
l12250:	
;Car_demo.c: 95: CCPR2L=(unsigned char)(-Speed2);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	decf	(Motor_Speed_Set@Speed2)^080h,w
	xorlw	0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(27)	;volatile
	goto	l753
	line	96
	
l752:	
	line	97
	
l753:	
	return
	opt stack 0
GLOBAL	__end_of_Motor_Speed_Set
	__end_of_Motor_Speed_Set:
;; =============== function _Motor_Speed_Set ends ============

	signat	_Motor_Speed_Set,8312
	global	_Service
psect	text1043,local,class=CODE,delta=2
global __ptext1043
__ptext1043:

;; *************** function _Service *****************
;; Defined at:
;;		line 101 in file "D:\6_pic_project\00_Design_Flow_Car\User\Car_demo\Car_demo.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       6       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Trace_Proc
;;		_Trace_Write_Command
;;		i1_Motor_Speed_Set
;;		_Velocity_PID
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text1043
	file	"D:\6_pic_project\00_Design_Flow_Car\User\Car_demo\Car_demo.c"
	line	101
	global	__size_of_Service
	__size_of_Service	equ	__end_of_Service-_Service
	
_Service:	
	opt	stack 1
; Regs used in _Service: [allreg]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Service+2)
	movf	fsr0,w
	movwf	(??_Service+3)
	movf	pclath,w
	movwf	(??_Service+4)
	movf	btemp+1,w
	movwf	(??_Service+5)
	ljmp	_Service
psect	text1043
	line	102
	
i1l12252:	
;Car_demo.c: 102: Trace_Proc();
	fcall	_Trace_Proc
	line	103
	
i1l12254:	
;Car_demo.c: 103: ack=Trace_Write_Command();
	fcall	_Trace_Write_Command
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Service+0)+0
	movf	(??_Service+0)+0,w
	movwf	(_ack)
	line	105
	
i1l12256:	
;Car_demo.c: 105: Trace_Byte = PORTA & 0B00111100;
	movf	(5),w
	andlw	03Ch
	movwf	(??_Service+0)+0
	movf	(??_Service+0)+0,w
	movwf	(_Trace_Byte)
	line	106
	
i1l12258:	
;Car_demo.c: 106: PORTD = Trace_Byte;
	movf	(_Trace_Byte),w
	movwf	(8)	;volatile
	line	107
	
i1l12260:	
;Car_demo.c: 107: if(RCIF==1)
	btfss	(101/8),(101)&7
	goto	u333_21
	goto	u333_20
u333_21:
	goto	i1l756
u333_20:
	line	109
	
i1l12262:	
;Car_demo.c: 108: {
;Car_demo.c: 109: bluetooth=RCREG;
	movf	(26),w	;volatile
	movwf	(??_Service+0)+0
	movf	(??_Service+0)+0,w
	movwf	(_bluetooth)
	line	110
;Car_demo.c: 110: if(bluetooth == 'W'){Speed_Set=50;Turn=0;Motor_Flag=1;}
	movf	(_bluetooth),w
	xorlw	057h
	skipz
	goto	u334_21
	goto	u334_20
u334_21:
	goto	i1l12270
u334_20:
	
i1l12264:	
	movlw	low(032h)
	movwf	(_Speed_Set)
	movlw	high(032h)
	movwf	((_Speed_Set))+1
	
i1l12266:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_Turn)^080h
	clrf	(_Turn+1)^080h
	
i1l12268:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_Motor_Flag)
	bsf	status,0
	rlf	(_Motor_Flag),f
	goto	i1l12270
	
i1l757:	
	line	111
	
i1l12270:	
;Car_demo.c: 111: if(bluetooth == 'Q'){Speed_Set=0;Turn=0;Motor_Flag=0;}
	movf	(_bluetooth),w
	xorlw	051h
	skipz
	goto	u335_21
	goto	u335_20
u335_21:
	goto	i1l12276
u335_20:
	
i1l12272:	
	clrf	(_Speed_Set)
	clrf	(_Speed_Set+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_Turn)^080h
	clrf	(_Turn+1)^080h
	
i1l12274:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_Motor_Flag)
	goto	i1l12276
	
i1l758:	
	line	112
	
i1l12276:	
;Car_demo.c: 112: if(bluetooth == 'S'){Speed_Set=-50;Turn=0;Motor_Flag=1;}
	movf	(_bluetooth),w
	xorlw	053h
	skipz
	goto	u336_21
	goto	u336_20
u336_21:
	goto	i1l12284
u336_20:
	
i1l12278:	
	movlw	low(-50)
	movwf	(_Speed_Set)
	movlw	high(-50)
	movwf	((_Speed_Set))+1
	
i1l12280:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_Turn)^080h
	clrf	(_Turn+1)^080h
	
i1l12282:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_Motor_Flag)
	bsf	status,0
	rlf	(_Motor_Flag),f
	goto	i1l12284
	
i1l759:	
	line	113
	
i1l12284:	
;Car_demo.c: 113: if(bluetooth == 'A'){Turn=-20;Motor_Flag=2;}
	movf	(_bluetooth),w
	xorlw	041h
	skipz
	goto	u337_21
	goto	u337_20
u337_21:
	goto	i1l760
u337_20:
	
i1l12286:	
	movlw	low(-20)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_Turn)^080h
	movlw	high(-20)
	movwf	((_Turn)^080h)+1
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Service+0)+0
	movf	(??_Service+0)+0,w
	movwf	(_Motor_Flag)
	
i1l760:	
	line	114
;Car_demo.c: 114: if(bluetooth == 'D'){Turn=20;Motor_Flag=2;}
	movf	(_bluetooth),w
	xorlw	044h
	skipz
	goto	u338_21
	goto	u338_20
u338_21:
	goto	i1l12290
u338_20:
	
i1l12288:	
	movlw	low(014h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_Turn)^080h
	movlw	high(014h)
	movwf	((_Turn)^080h)+1
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Service+0)+0
	movf	(??_Service+0)+0,w
	movwf	(_Motor_Flag)
	goto	i1l12290
	
i1l761:	
	line	115
	
i1l12290:	
;Car_demo.c: 115: Motor_Speed_Set(PWM1,PWM2);
	movf	(_PWM1+1),w
	clrf	(?i1_Motor_Speed_Set+1)
	addwf	(?i1_Motor_Speed_Set+1)
	movf	(_PWM1),w
	clrf	(?i1_Motor_Speed_Set)
	addwf	(?i1_Motor_Speed_Set)

	movf	(_PWM2+1),w
	clrf	1+(?i1_Motor_Speed_Set)+02h
	addwf	1+(?i1_Motor_Speed_Set)+02h
	movf	(_PWM2),w
	clrf	0+(?i1_Motor_Speed_Set)+02h
	addwf	0+(?i1_Motor_Speed_Set)+02h

	fcall	i1_Motor_Speed_Set
	line	116
	
i1l12292:	
;Car_demo.c: 116: RCIF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(101/8),(101)&7
	line	117
;Car_demo.c: 117: }
	goto	i1l774
	line	118
	
i1l756:	
;Car_demo.c: 118: else if(T0IF==1)
	btfss	(90/8),(90)&7
	goto	u339_21
	goto	u339_20
u339_21:
	goto	i1l763
u339_20:
	line	120
	
i1l12294:	
;Car_demo.c: 119: {
;Car_demo.c: 120: TMR0=60;
	movlw	(03Ch)
	movwf	(1)	;volatile
	line	121
	
i1l12296:	
;Car_demo.c: 121: T0IF=0;
	bcf	(90/8),(90)&7
	line	123
;Car_demo.c: 123: Speed = Encoder_Counter;
	movf	(_Encoder_Counter),w
	movwf	(??_Service+0)+0
	clrf	(??_Service+0)+0+1
	movf	0+(??_Service+0)+0,w
	movwf	(_Speed)
	movf	1+(??_Service+0)+0,w
	movwf	(_Speed+1)
	line	124
	
i1l12298:	
;Car_demo.c: 124: Encoder_Counter=0;
	clrf	(_Encoder_Counter)
	line	126
	
i1l12300:	
;Car_demo.c: 126: PWM = Velocity_PID(Speed,Speed_Set);
	movf	(_Speed+1),w
	clrf	(?_Velocity_PID+1)
	addwf	(?_Velocity_PID+1)
	movf	(_Speed),w
	clrf	(?_Velocity_PID)
	addwf	(?_Velocity_PID)

	movf	(_Speed_Set+1),w
	clrf	1+(?_Velocity_PID)+02h
	addwf	1+(?_Velocity_PID)+02h
	movf	(_Speed_Set),w
	clrf	0+(?_Velocity_PID)+02h
	addwf	0+(?_Velocity_PID)+02h

	fcall	_Velocity_PID
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_Velocity_PID)),w
	clrf	(_PWM+1)
	addwf	(_PWM+1)
	movf	(0+(?_Velocity_PID)),w
	clrf	(_PWM)
	addwf	(_PWM)

	line	128
	
i1l12302:	
;Car_demo.c: 128: PWM1 = PWM;
	movf	(_PWM+1),w
	clrf	(_PWM1+1)
	addwf	(_PWM1+1)
	movf	(_PWM),w
	clrf	(_PWM1)
	addwf	(_PWM1)

	line	129
	
i1l12304:	
;Car_demo.c: 129: PWM2 = PWM;
	movf	(_PWM+1),w
	clrf	(_PWM2+1)
	addwf	(_PWM2+1)
	movf	(_PWM),w
	clrf	(_PWM2)
	addwf	(_PWM2)

	line	131
	
i1l12306:	
;Car_demo.c: 131: if(Motor_Flag == 1)
	movf	(_Motor_Flag),w
	xorlw	01h
	skipz
	goto	u340_21
	goto	u340_20
u340_21:
	goto	i1l12310
u340_20:
	line	133
	
i1l12308:	
;Car_demo.c: 132: {
;Car_demo.c: 133: Motor_Speed_Set(PWM1,PWM2);
	movf	(_PWM1+1),w
	clrf	(?i1_Motor_Speed_Set+1)
	addwf	(?i1_Motor_Speed_Set+1)
	movf	(_PWM1),w
	clrf	(?i1_Motor_Speed_Set)
	addwf	(?i1_Motor_Speed_Set)

	movf	(_PWM2+1),w
	clrf	1+(?i1_Motor_Speed_Set)+02h
	addwf	1+(?i1_Motor_Speed_Set)+02h
	movf	(_PWM2),w
	clrf	0+(?i1_Motor_Speed_Set)+02h
	addwf	0+(?i1_Motor_Speed_Set)+02h

	fcall	i1_Motor_Speed_Set
	line	134
;Car_demo.c: 134: }
	goto	i1l774
	line	141
	
i1l764:	
	
i1l12310:	
;Car_demo.c: 141: else if(Motor_Flag == 5)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Motor_Flag),w
	xorlw	05h
	skipz
	goto	u341_21
	goto	u341_20
u341_21:
	goto	i1l12314
u341_20:
	line	143
	
i1l12312:	
;Car_demo.c: 142: {
;Car_demo.c: 143: Motor_Speed_Set(55,55);
	movlw	low(037h)
	movwf	(?i1_Motor_Speed_Set)
	movlw	high(037h)
	movwf	((?i1_Motor_Speed_Set))+1
	movlw	low(037h)
	movwf	0+(?i1_Motor_Speed_Set)+02h
	movlw	high(037h)
	movwf	(0+(?i1_Motor_Speed_Set)+02h)+1
	fcall	i1_Motor_Speed_Set
	line	144
;Car_demo.c: 144: }
	goto	i1l774
	line	145
	
i1l766:	
	
i1l12314:	
;Car_demo.c: 145: else if(Motor_Flag == 3)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Motor_Flag),w
	xorlw	03h
	skipz
	goto	u342_21
	goto	u342_20
u342_21:
	goto	i1l12318
u342_20:
	line	147
	
i1l12316:	
;Car_demo.c: 146: {
;Car_demo.c: 147: Motor_Speed_Set(60,40);
	movlw	low(03Ch)
	movwf	(?i1_Motor_Speed_Set)
	movlw	high(03Ch)
	movwf	((?i1_Motor_Speed_Set))+1
	movlw	low(028h)
	movwf	0+(?i1_Motor_Speed_Set)+02h
	movlw	high(028h)
	movwf	(0+(?i1_Motor_Speed_Set)+02h)+1
	fcall	i1_Motor_Speed_Set
	line	148
;Car_demo.c: 148: }
	goto	i1l774
	line	149
	
i1l768:	
	
i1l12318:	
;Car_demo.c: 149: else if(Motor_Flag == 4)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Motor_Flag),w
	xorlw	04h
	skipz
	goto	u343_21
	goto	u343_20
u343_21:
	goto	i1l12322
u343_20:
	line	151
	
i1l12320:	
;Car_demo.c: 150: {
;Car_demo.c: 151: Motor_Speed_Set(40,60);
	movlw	low(028h)
	movwf	(?i1_Motor_Speed_Set)
	movlw	high(028h)
	movwf	((?i1_Motor_Speed_Set))+1
	movlw	low(03Ch)
	movwf	0+(?i1_Motor_Speed_Set)+02h
	movlw	high(03Ch)
	movwf	(0+(?i1_Motor_Speed_Set)+02h)+1
	fcall	i1_Motor_Speed_Set
	line	152
;Car_demo.c: 152: }
	goto	i1l774
	line	153
	
i1l770:	
	line	155
	
i1l12322:	
;Car_demo.c: 153: else
;Car_demo.c: 154: {
;Car_demo.c: 155: Motor_Speed_Set(0,0);
	movlw	low(0)
	movwf	(?i1_Motor_Speed_Set)
	movlw	high(0)
	movwf	((?i1_Motor_Speed_Set))+1
	movlw	low(0)
	movwf	0+(?i1_Motor_Speed_Set)+02h
	movlw	high(0)
	movwf	(0+(?i1_Motor_Speed_Set)+02h)+1
	fcall	i1_Motor_Speed_Set
	goto	i1l774
	line	156
	
i1l771:	
	goto	i1l774
	
i1l769:	
	goto	i1l774
	
i1l767:	
	goto	i1l774
	
i1l765:	
	line	157
;Car_demo.c: 156: }
;Car_demo.c: 157: }
	goto	i1l774
	line	158
	
i1l763:	
;Car_demo.c: 158: else if(INTF==1)
	btfss	(89/8),(89)&7
	goto	u344_21
	goto	u344_20
u344_21:
	goto	i1l774
u344_20:
	line	160
	
i1l12324:	
;Car_demo.c: 159: {
;Car_demo.c: 160: Encoder_Counter++;
	movlw	(01h)
	movwf	(??_Service+0)+0
	movf	(??_Service+0)+0,w
	addwf	(_Encoder_Counter),f
	line	161
	
i1l12326:	
;Car_demo.c: 161: INTF=0;
	bcf	(89/8),(89)&7
	goto	i1l774
	line	162
	
i1l773:	
	goto	i1l774
	line	163
	
i1l772:	
	goto	i1l774
	
i1l762:	
	
i1l774:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_Service+5),w
	movwf	btemp+1
	movf	(??_Service+4),w
	movwf	pclath
	movf	(??_Service+3),w
	movwf	fsr0
	swapf	(??_Service+2)^00h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_Service
	__end_of_Service:
;; =============== function _Service ends ============

	signat	_Service,88
	global	_Trace_Write_Command
psect	text1044,local,class=CODE,delta=2
global __ptext1044
__ptext1044:

;; *************** function _Trace_Write_Command *****************
;; Defined at:
;;		line 203 in file "D:\6_pic_project\00_Design_Flow_Car\Driver\iic.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_I2CStart
;;		_I2CSendByte
;;		_I2CWaitAck
;;		_I2CStop
;; This function is called by:
;;		_Service
;; This function uses a non-reentrant model
;;
psect	text1044
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\iic.c"
	line	203
	global	__size_of_Trace_Write_Command
	__size_of_Trace_Write_Command	equ	__end_of_Trace_Write_Command-_Trace_Write_Command
	
_Trace_Write_Command:	
	opt	stack 1
; Regs used in _Trace_Write_Command: [wreg+status,2+status,0+pclath+cstack]
	line	204
	
i1l12328:	
;iic.c: 204: I2CStart();
	fcall	_I2CStart
	line	205
;iic.c: 205: I2CSendByte(0x4C<<1);
	movlw	(098h)
	fcall	_I2CSendByte
	line	207
;iic.c: 207: if(I2CWaitAck()){return 0xFF;}
	fcall	_I2CWaitAck
	xorlw	0
	skipnz
	goto	u345_21
	goto	u345_20
u345_21:
	goto	i1l12334
u345_20:
	
i1l12330:	
	movlw	(0FFh)
	goto	i1l3003
	
i1l12332:	
	goto	i1l3003
	
i1l3002:	
	line	209
	
i1l12334:	
;iic.c: 209: I2CSendByte(0xDD);
	movlw	(0DDh)
	fcall	_I2CSendByte
	line	211
;iic.c: 211: if(I2CWaitAck()){return 0xFE;}
	fcall	_I2CWaitAck
	xorlw	0
	skipnz
	goto	u346_21
	goto	u346_20
u346_21:
	goto	i1l12340
u346_20:
	
i1l12336:	
	movlw	(0FEh)
	goto	i1l3003
	
i1l12338:	
	goto	i1l3003
	
i1l3004:	
	line	212
	
i1l12340:	
;iic.c: 212: I2CStop();
	fcall	_I2CStop
	line	213
	
i1l3003:	
	return
	opt stack 0
GLOBAL	__end_of_Trace_Write_Command
	__end_of_Trace_Write_Command:
;; =============== function _Trace_Write_Command ends ============

	signat	_Trace_Write_Command,89
	global	_I2CWaitAck
psect	text1045,local,class=CODE,delta=2
global __ptext1045
__ptext1045:

;; *************** function _I2CWaitAck *****************
;; Defined at:
;;		line 83 in file "D:\6_pic_project\00_Design_Flow_Car\Driver\iic.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  ackbit          1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_I2C_Delay
;; This function is called by:
;;		_Trace_Write_Command
;;		_DAC_Output
;;		_IIC_ReadReg_Byte
;;		_IIC_WriteReg_Byte
;;		_IIC_WriteReg_Str
;;		_IIC_ReadReg_Str
;;		_Trace_Read_Data
;; This function uses a non-reentrant model
;;
psect	text1045
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\iic.c"
	line	83
	global	__size_of_I2CWaitAck
	__size_of_I2CWaitAck	equ	__end_of_I2CWaitAck-_I2CWaitAck
	
_I2CWaitAck:	
	opt	stack 1
; Regs used in _I2CWaitAck: [wreg+status,2+status,0+pclath+cstack]
	line	86
	
i1l12598:	
;iic.c: 84: unsigned char ackbit;
;iic.c: 86: RA1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(41/8),(41)&7
	line	87
	
i1l12600:	
;iic.c: 87: I2C_Delay(10);
	movlw	(0Ah)
	fcall	_I2C_Delay
	line	88
	
i1l12602:	
;iic.c: 88: ackbit = RA0;
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(40/8),(40)&7
	movlw	1
	movwf	(??_I2CWaitAck+0)+0
	movf	(??_I2CWaitAck+0)+0,w
	movwf	(I2CWaitAck@ackbit)
	line	89
	
i1l12604:	
;iic.c: 89: RA1 = 0;
	bcf	(41/8),(41)&7
	line	90
	
i1l12606:	
;iic.c: 90: I2C_Delay(10);
	movlw	(0Ah)
	fcall	_I2C_Delay
	line	92
;iic.c: 92: return ackbit;
	movf	(I2CWaitAck@ackbit),w
	goto	i1l2973
	
i1l12608:	
	line	93
	
i1l2973:	
	return
	opt stack 0
GLOBAL	__end_of_I2CWaitAck
	__end_of_I2CWaitAck:
;; =============== function _I2CWaitAck ends ============

	signat	_I2CWaitAck,89
	global	_I2CSendByte
psect	text1046,local,class=CODE,delta=2
global __ptext1046
__ptext1046:

;; *************** function _I2CSendByte *****************
;; Defined at:
;;		line 43 in file "D:\6_pic_project\00_Design_Flow_Car\Driver\iic.c"
;; Parameters:    Size  Location     Type
;;  byt             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  byt             1    2[COMMON] unsigned char 
;;  i               1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_I2C_Delay
;; This function is called by:
;;		_Trace_Write_Command
;;		_DAC_Output
;;		_IIC_ReadReg_Byte
;;		_IIC_WriteReg_Byte
;;		_IIC_WriteReg_Str
;;		_IIC_ReadReg_Str
;;		_Trace_Read_Data
;; This function uses a non-reentrant model
;;
psect	text1046
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\iic.c"
	line	43
	global	__size_of_I2CSendByte
	__size_of_I2CSendByte	equ	__end_of_I2CSendByte-_I2CSendByte
	
_I2CSendByte:	
	opt	stack 1
; Regs used in _I2CSendByte: [wreg+status,2+status,0+pclath+cstack]
;I2CSendByte@byt stored from wreg
	line	46
	movwf	(I2CSendByte@byt)
	
i1l12550:	
;iic.c: 44: unsigned char i;
;iic.c: 46: for(i=0; i<8; i++){
	clrf	(I2CSendByte@i)
	
i1l12552:	
	movlw	(08h)
	subwf	(I2CSendByte@i),w
	skipc
	goto	u391_21
	goto	u391_20
u391_21:
	goto	i1l2960
u391_20:
	goto	i1l2961
	
i1l12554:	
	goto	i1l2961
	
i1l2960:	
	line	47
;iic.c: 47: RA1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(41/8),(41)&7
	line	48
	
i1l12556:	
;iic.c: 48: I2C_Delay(10);
	movlw	(0Ah)
	fcall	_I2C_Delay
	line	49
	
i1l12558:	
;iic.c: 49: if(byt & 0x80){
	btfss	(I2CSendByte@byt),(7)&7
	goto	u392_21
	goto	u392_20
u392_21:
	goto	i1l2962
u392_20:
	line	50
	
i1l12560:	
;iic.c: 50: RA0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(40/8),(40)&7
	line	51
;iic.c: 51: }
	goto	i1l12562
	line	52
	
i1l2962:	
	line	53
;iic.c: 52: else{
;iic.c: 53: RA0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7
	goto	i1l12562
	line	54
	
i1l2963:	
	line	55
	
i1l12562:	
;iic.c: 54: }
;iic.c: 55: I2C_Delay(10);
	movlw	(0Ah)
	fcall	_I2C_Delay
	line	56
	
i1l12564:	
;iic.c: 56: RA1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(41/8),(41)&7
	line	57
	
i1l12566:	
;iic.c: 57: byt <<= 1;
	clrc
	rlf	(I2CSendByte@byt),f

	line	58
	
i1l12568:	
;iic.c: 58: I2C_Delay(10);
	movlw	(0Ah)
	fcall	_I2C_Delay
	line	46
	
i1l12570:	
	movlw	(01h)
	movwf	(??_I2CSendByte+0)+0
	movf	(??_I2CSendByte+0)+0,w
	addwf	(I2CSendByte@i),f
	
i1l12572:	
	movlw	(08h)
	subwf	(I2CSendByte@i),w
	skipc
	goto	u393_21
	goto	u393_20
u393_21:
	goto	i1l2960
u393_20:
	
i1l2961:	
	line	61
;iic.c: 59: }
;iic.c: 61: RA1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(41/8),(41)&7
	line	62
	
i1l2964:	
	return
	opt stack 0
GLOBAL	__end_of_I2CSendByte
	__end_of_I2CSendByte:
;; =============== function _I2CSendByte ends ============

	signat	_I2CSendByte,4216
	global	_I2CStop
psect	text1047,local,class=CODE,delta=2
global __ptext1047
__ptext1047:

;; *************** function _I2CStop *****************
;; Defined at:
;;		line 33 in file "D:\6_pic_project\00_Design_Flow_Car\Driver\iic.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_I2C_Delay
;; This function is called by:
;;		_Trace_Write_Command
;;		_DAC_Output
;;		_IIC_ReadReg_Byte
;;		_IIC_WriteReg_Byte
;;		_IIC_WriteReg_Str
;;		_IIC_ReadReg_Str
;;		_Trace_Read_Data
;; This function uses a non-reentrant model
;;
psect	text1047
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\iic.c"
	line	33
	global	__size_of_I2CStop
	__size_of_I2CStop	equ	__end_of_I2CStop-_I2CStop
	
_I2CStop:	
	opt	stack 1
; Regs used in _I2CStop: [wreg+status,2+status,0+pclath+cstack]
	line	34
	
i1l12544:	
;iic.c: 34: RA0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7
	line	35
;iic.c: 35: RA1 = 1;
	bsf	(41/8),(41)&7
	line	36
	
i1l12546:	
;iic.c: 36: I2C_Delay(10);
	movlw	(0Ah)
	fcall	_I2C_Delay
	line	37
	
i1l12548:	
;iic.c: 37: RA0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(40/8),(40)&7
	line	38
;iic.c: 38: I2C_Delay(10);
	movlw	(0Ah)
	fcall	_I2C_Delay
	line	39
	
i1l2957:	
	return
	opt stack 0
GLOBAL	__end_of_I2CStop
	__end_of_I2CStop:
;; =============== function _I2CStop ends ============

	signat	_I2CStop,88
	global	_I2CStart
psect	text1048,local,class=CODE,delta=2
global __ptext1048
__ptext1048:

;; *************** function _I2CStart *****************
;; Defined at:
;;		line 22 in file "D:\6_pic_project\00_Design_Flow_Car\Driver\iic.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_I2C_Delay
;; This function is called by:
;;		_Trace_Write_Command
;;		_DAC_Output
;;		_IIC_ReadReg_Byte
;;		_IIC_WriteReg_Byte
;;		_IIC_WriteReg_Str
;;		_IIC_ReadReg_Str
;;		_Trace_Read_Data
;; This function uses a non-reentrant model
;;
psect	text1048
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\iic.c"
	line	22
	global	__size_of_I2CStart
	__size_of_I2CStart	equ	__end_of_I2CStart-_I2CStart
	
_I2CStart:	
	opt	stack 1
; Regs used in _I2CStart: [wreg+status,2+status,0+pclath+cstack]
	line	23
	
i1l12536:	
;iic.c: 23: RA0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(40/8),(40)&7
	line	24
;iic.c: 24: RA1 = 1;
	bsf	(41/8),(41)&7
	line	25
	
i1l12538:	
;iic.c: 25: I2C_Delay(10);
	movlw	(0Ah)
	fcall	_I2C_Delay
	line	26
	
i1l12540:	
;iic.c: 26: RA0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7
	line	27
;iic.c: 27: I2C_Delay(10);
	movlw	(0Ah)
	fcall	_I2C_Delay
	line	28
	
i1l12542:	
;iic.c: 28: RA1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(41/8),(41)&7
	line	29
	
i1l2954:	
	return
	opt stack 0
GLOBAL	__end_of_I2CStart
	__end_of_I2CStart:
;; =============== function _I2CStart ends ============

	signat	_I2CStart,88
	global	_Velocity_PID
psect	text1049,local,class=CODE,delta=2
global __ptext1049
__ptext1049:

;; *************** function _Velocity_PID *****************
;; Defined at:
;;		line 44 in file "D:\6_pic_project\00_Design_Flow_Car\Driver\pid.c"
;; Parameters:    Size  Location     Type
;;  velocity        2   39[BANK0 ] int 
;;  velocity_cal    2   41[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  a               3   45[BANK0 ] float 
;; Return value:  Size  Location     Type
;;                  2   39[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       9       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___awtoft
;;		___ftneg
;;		___ftadd
;;		___ftmul
;;		_I_amplitude_limiting
;;		___fttol
;; This function is called by:
;;		_Service
;; This function uses a non-reentrant model
;;
psect	text1049
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\pid.c"
	line	44
	global	__size_of_Velocity_PID
	__size_of_Velocity_PID	equ	__end_of_Velocity_PID-_Velocity_PID
	
_Velocity_PID:	
	opt	stack 1
; Regs used in _Velocity_PID: [allreg]
	line	45
	
i1l12342:	
;pid.c: 45: float a = 0.3;
	movlw	0x9a
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Velocity_PID@a)
	movlw	0x99
	movwf	(Velocity_PID@a+1)
	movlw	0x3e
	movwf	(Velocity_PID@a+2)
	line	47
	
i1l12344:	
;pid.c: 47: if(velocity_calcu < 0)
	btfss	(Velocity_PID@velocity_calcu+1),7
	goto	u347_21
	goto	u347_20
u347_21:
	goto	i1l12348
u347_20:
	line	49
	
i1l12346:	
;pid.c: 48: {
;pid.c: 49: velocity = -velocity;
	comf	(Velocity_PID@velocity),f
	comf	(Velocity_PID@velocity+1),f
	incf	(Velocity_PID@velocity),f
	skipnz
	incf	(Velocity_PID@velocity+1),f
	goto	i1l12348
	line	50
	
i1l9225:	
	line	52
	
i1l12348:	
;pid.c: 50: }
;pid.c: 52: Velocity.error = velocity - velocity_calcu;
	comf	(Velocity_PID@velocity_calcu),w
	movwf	(??_Velocity_PID+0)+0
	comf	(Velocity_PID@velocity_calcu+1),w
	movwf	((??_Velocity_PID+0)+0+1)
	incf	(??_Velocity_PID+0)+0,f
	skipnz
	incf	((??_Velocity_PID+0)+0+1),f
	movf	(Velocity_PID@velocity),w
	addwf	0+(??_Velocity_PID+0)+0,w
	movwf	(?___awtoft)
	movf	(Velocity_PID@velocity+1),w
	skipnc
	incf	(Velocity_PID@velocity+1),w
	addwf	1+(??_Velocity_PID+0)+0,w
	movwf	1+(?___awtoft)
	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	0+(_Velocity)^0180h+09h
	movf	(1+(?___awtoft)),w
	movwf	1+(_Velocity)^0180h+09h
	movf	(2+(?___awtoft)),w
	movwf	2+(_Velocity)^0180h+09h
	line	53
	
i1l12350:	
;pid.c: 53: filt_velocity = a*Velocity.error+(1-a)*last_filt_velocity;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_last_filt_velocity)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_last_filt_velocity+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_last_filt_velocity+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul+2)
	movlw	0x0
	movwf	(?___ftadd)
	movlw	0x80
	movwf	(?___ftadd+1)
	movlw	0x3f
	movwf	(?___ftadd+2)
	movf	(Velocity_PID@a),w
	movwf	(?___ftneg)
	movf	(Velocity_PID@a+1),w
	movwf	(?___ftneg+1)
	movf	(Velocity_PID@a+2),w
	movwf	(?___ftneg+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftadd)+03h
	movf	(1+(?___ftneg)),w
	movwf	1+(?___ftadd)+03h
	movf	(2+(?___ftneg)),w
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	0+(?___ftmul)+03h
	movf	(1+(?___ftadd)),w
	movwf	1+(?___ftmul)+03h
	movf	(2+(?___ftadd)),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?___ftadd)
	movf	(1+(?___ftmul)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftmul)),w
	movwf	(?___ftadd+2)
	movf	(Velocity_PID@a),w
	movwf	(?___ftmul)
	movf	(Velocity_PID@a+1),w
	movwf	(?___ftmul+1)
	movf	(Velocity_PID@a+2),w
	movwf	(?___ftmul+2)
	movlw	(09h)
	addlw	_Velocity&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	0+(?___ftmul)+03h
	incf	fsr0,f
	movf	indf,w
	movwf	1+(?___ftmul)+03h
	incf	fsr0,f
	movf	indf,w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	0+(?___ftadd)+03h
	movf	(1+(?___ftmul)),w
	movwf	1+(?___ftadd)+03h
	movf	(2+(?___ftmul)),w
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(_filt_velocity)
	movf	(1+(?___ftadd)),w
	movwf	(_filt_velocity+1)
	movf	(2+(?___ftadd)),w
	movwf	(_filt_velocity+2)
	line	54
	
i1l12352:	
;pid.c: 54: Velocity.error_sum += filt_velocity ;
	movf	(_filt_velocity),w
	movwf	(?___ftadd)
	movf	(_filt_velocity+1),w
	movwf	(?___ftadd+1)
	movf	(_filt_velocity+2),w
	movwf	(?___ftadd+2)
	movlw	(0Fh)
	addlw	_Velocity&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	0+(?___ftadd)+03h
	incf	fsr0,f
	movf	indf,w
	movwf	1+(?___ftadd)+03h
	incf	fsr0,f
	movf	indf,w
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	0+(_Velocity)^0180h+0Fh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	1+(_Velocity)^0180h+0Fh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	2+(_Velocity)^0180h+0Fh
	line	55
	
i1l12354:	
;pid.c: 55: I_amplitude_limiting(20,&Velocity.error_sum);
	movlw	(_Velocity+0Fh)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Velocity_PID+0)+0
	movf	(??_Velocity_PID+0)+0,w
	movwf	(?_I_amplitude_limiting)
	movlw	(014h)
	fcall	_I_amplitude_limiting
	line	56
	
i1l12356:	
;pid.c: 56: last_filt_velocity = filt_velocity;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_filt_velocity),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_last_filt_velocity)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_filt_velocity+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_last_filt_velocity+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_filt_velocity+2),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_last_filt_velocity+2)^080h
	line	58
	
i1l12358:	
;pid.c: 58: return ((int)(filt_velocity * Velocity.Kp + Velocity.error_sum * Velocity.Ki);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_Velocity)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_Velocity+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_Velocity+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?___ftmul)+03h
	movf	(_filt_velocity),w
	movwf	(?___ftmul)
	movf	(_filt_velocity+1),w
	movwf	(?___ftmul+1)
	movf	(_filt_velocity+2),w
	movwf	(?___ftmul+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	0+(?___ftadd)+03h
	movf	(1+(?___ftmul)),w
	movwf	1+(?___ftadd)+03h
	movf	(2+(?___ftmul)),w
	movwf	2+(?___ftadd)+03h
	movlw	(0Fh)
	addlw	_Velocity&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	0+(?___ftmul)+03h
	incf	fsr0,f
	movf	indf,w
	movwf	1+(?___ftmul)+03h
	incf	fsr0,f
	movf	indf,w
	movwf	2+(?___ftmul)+03h
	movlw	(03h)
	addlw	_Velocity&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(?___ftmul)
	incf	fsr0,f
	movf	indf,w
	movwf	(?___ftmul+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(?___ftmul+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?___ftadd)
	movf	(1+(?___ftmul)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftmul)),w
	movwf	(?___ftadd+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(?___fttol)
	movf	(1+(?___ftadd)),w
	movwf	(?___fttol+1)
	movf	(2+(?___ftadd)),w
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	1+(((0+(?___fttol)))),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_Velocity_PID+1)
	addwf	(?_Velocity_PID+1)
	movf	0+(((0+(?___fttol)))),w
	clrf	(?_Velocity_PID)
	addwf	(?_Velocity_PID)

	goto	i1l9226
	
i1l12360:	
	line	59
	
i1l9226:	
	return
	opt stack 0
GLOBAL	__end_of_Velocity_PID
	__end_of_Velocity_PID:
;; =============== function _Velocity_PID ends ============

	signat	_Velocity_PID,8314
	global	___awtoft
psect	text1050,local,class=CODE,delta=2
global __ptext1050
__ptext1050:

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 33 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_Velocity_PID
;; This function uses a non-reentrant model
;;
psect	text1050
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt	stack 1
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
i1l12996:	
	clrf	(___awtoft@sign)
	line	37
	btfss	(___awtoft@c+1),7
	goto	u493_21
	goto	u493_20
u493_21:
	goto	i1l13000
u493_20:
	line	38
	
i1l12998:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	clrf	(___awtoft@sign)
	bsf	status,0
	rlf	(___awtoft@sign),f
	goto	i1l13000
	line	40
	
i1l10076:	
	line	41
	
i1l13000:	
	movf	(___awtoft@c),w
	movwf	(?___ftpack)
	movf	(___awtoft@c+1),w
	movwf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	movlw	(08Eh)
	movwf	(??___awtoft+0)+0
	movf	(??___awtoft+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___awtoft@sign),w
	movwf	(??___awtoft+1)+0
	movf	(??___awtoft+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___awtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___awtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___awtoft+2)
	goto	i1l10077
	
i1l13002:	
	line	42
	
i1l10077:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
;; =============== function ___awtoft ends ============

	signat	___awtoft,4219
	global	___ftmul
psect	text1051,local,class=CODE,delta=2
global __ptext1051
__ptext1051:

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   23[BANK0 ] float 
;;  f2              3   26[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   34[BANK0 ] unsigned um
;;  sign            1   38[BANK0 ] unsigned char 
;;  cntr            1   37[BANK0 ] unsigned char 
;;  exp             1   33[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   23[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_Velocity_PID
;; This function uses a non-reentrant model
;;
psect	text1051
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 1
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
i1l12890:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@exp)
	movf	((___ftmul@exp)),f
	skipz
	goto	u468_21
	goto	u468_20
u468_21:
	goto	i1l12896
u468_20:
	line	57
	
i1l12892:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	i1l10039
	
i1l12894:	
	goto	i1l10039
	
i1l10038:	
	line	58
	
i1l12896:	
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	movf	((___ftmul@sign)),f
	skipz
	goto	u469_21
	goto	u469_20
u469_21:
	goto	i1l12902
u469_20:
	line	59
	
i1l12898:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	i1l10039
	
i1l12900:	
	goto	i1l10039
	
i1l10040:	
	line	60
	
i1l12902:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	addwf	(___ftmul@exp),f
	line	61
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u470_25:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u470_20:
	addlw	-1
	skipz
	goto	u470_25
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	line	62
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u471_25:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u471_20:
	addlw	-1
	skipz
	goto	u471_25
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	xorwf	(___ftmul@sign),f
	line	63
	movlw	(080h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	andwf	(___ftmul@sign),f
	line	64
	
i1l12904:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
i1l12906:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
i1l12908:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
i1l12910:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	69
	
i1l12912:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	i1l12914
	line	70
	
i1l10041:	
	line	71
	
i1l12914:	
	btfss	(___ftmul@f1),(0)&7
	goto	u472_21
	goto	u472_20
u472_21:
	goto	i1l12918
u472_20:
	line	72
	
i1l12916:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u473_21
	addwf	(___ftmul@f3_as_product+1),f
u473_21:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u473_22
	addwf	(___ftmul@f3_as_product+2),f
u473_22:

	goto	i1l12918
	
i1l10042:	
	line	73
	
i1l12918:	
	movlw	01h
u474_25:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u474_25

	line	74
	
i1l12920:	
	movlw	01h
u475_25:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u475_25
	line	75
	
i1l12922:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u476_21
	goto	u476_20
u476_21:
	goto	i1l12914
u476_20:
	goto	i1l12924
	
i1l10043:	
	line	76
	
i1l12924:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	i1l12926
	line	77
	
i1l10044:	
	line	78
	
i1l12926:	
	btfss	(___ftmul@f1),(0)&7
	goto	u477_21
	goto	u477_20
u477_21:
	goto	i1l12930
u477_20:
	line	79
	
i1l12928:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u478_21
	addwf	(___ftmul@f3_as_product+1),f
u478_21:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u478_22
	addwf	(___ftmul@f3_as_product+2),f
u478_22:

	goto	i1l12930
	
i1l10045:	
	line	80
	
i1l12930:	
	movlw	01h
u479_25:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u479_25

	line	81
	
i1l12932:	
	movlw	01h
u480_25:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u480_25

	line	82
	
i1l12934:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u481_21
	goto	u481_20
u481_21:
	goto	i1l12926
u481_20:
	goto	i1l12936
	
i1l10046:	
	line	83
	
i1l12936:	
	movf	(___ftmul@f3_as_product),w
	movwf	(?___ftpack)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(?___ftpack+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(?___ftpack+2)
	movf	(___ftmul@exp),w
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___ftmul@sign),w
	movwf	(??___ftmul+1)+0
	movf	(??___ftmul+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	goto	i1l10039
	
i1l12938:	
	line	84
	
i1l10039:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftadd
psect	text1052,local,class=CODE,delta=2
global __ptext1052
__ptext1052:

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 87 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   10[BANK0 ] float 
;;  f2              3   13[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   22[BANK0 ] unsigned char 
;;  exp2            1   21[BANK0 ] unsigned char 
;;  sign            1   20[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   10[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      13       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_Velocity_PID
;;		___ftsub
;; This function uses a non-reentrant model
;;
psect	text1052
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
	opt	stack 1
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
i1l12732:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftadd@f1),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f1+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f1+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp1)
	line	91
	movf	(___ftadd@f2),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f2+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f2+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp2)
	line	92
	
i1l12734:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u420_20
	goto	i1l12740
u420_20:
	
i1l12736:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u421_21
	goto	u421_20
u421_21:
	goto	i1l12744
u421_20:
	
i1l12738:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u422_21
	goto	u422_20
u422_21:
	goto	i1l12744
u422_20:
	goto	i1l12740
	
i1l9986:	
	line	93
	
i1l12740:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	i1l9987
	
i1l12742:	
	goto	i1l9987
	
i1l9984:	
	line	94
	
i1l12744:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u423_20
	goto	i1l9990
u423_20:
	
i1l12746:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u424_21
	goto	u424_20
u424_21:
	goto	i1l12750
u424_20:
	
i1l12748:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u425_21
	goto	u425_20
u425_21:
	goto	i1l12750
u425_20:
	
i1l9990:	
	line	95
	goto	i1l9987
	
i1l9988:	
	line	96
	
i1l12750:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
i1l12752:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u426_21
	goto	u426_20
u426_21:
	goto	i1l9991
u426_20:
	line	98
	
i1l12754:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
i1l9991:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u427_21
	goto	u427_20
u427_21:
	goto	i1l9992
u427_20:
	line	100
	
i1l12756:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
i1l9992:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
i1l12758:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
i1l12760:	
	bsf	(___ftadd@f2)+(15/8),(15)&7
	line	104
	movlw	0FFh
	andwf	(___ftadd@f2),f
	movlw	0FFh
	andwf	(___ftadd@f2+1),f
	movlw	0
	andwf	(___ftadd@f2+2),f
	line	106
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u428_21
	goto	u428_20
u428_21:
	goto	i1l12772
u428_20:
	goto	i1l12762
	line	109
	
i1l9994:	
	line	110
	
i1l12762:	
	movlw	01h
u429_25:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u429_25
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
i1l12764:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u430_21
	goto	u430_20
u430_21:
	goto	i1l12770
u430_20:
	
i1l12766:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u431_21
	goto	u431_20
u431_21:
	goto	i1l12762
u431_20:
	goto	i1l12770
	
i1l9996:	
	goto	i1l12770
	
i1l9997:	
	line	113
	goto	i1l12770
	
i1l9999:	
	line	114
	
i1l12768:	
	movlw	01h
u432_25:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u432_25

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	i1l12770
	line	116
	
i1l9998:	
	line	113
	
i1l12770:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u433_21
	goto	u433_20
u433_21:
	goto	i1l12768
u433_20:
	goto	i1l10001
	
i1l10000:	
	line	117
	goto	i1l10001
	
i1l9993:	
	
i1l12772:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u434_21
	goto	u434_20
u434_21:
	goto	i1l10001
u434_20:
	goto	i1l12774
	line	120
	
i1l10003:	
	line	121
	
i1l12774:	
	movlw	01h
u435_25:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u435_25
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
i1l12776:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u436_21
	goto	u436_20
u436_21:
	goto	i1l12782
u436_20:
	
i1l12778:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u437_21
	goto	u437_20
u437_21:
	goto	i1l12774
u437_20:
	goto	i1l12782
	
i1l10005:	
	goto	i1l12782
	
i1l10006:	
	line	124
	goto	i1l12782
	
i1l10008:	
	line	125
	
i1l12780:	
	movlw	01h
u438_25:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u438_25

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	i1l12782
	line	127
	
i1l10007:	
	line	124
	
i1l12782:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u439_21
	goto	u439_20
u439_21:
	goto	i1l12780
u439_20:
	goto	i1l10001
	
i1l10009:	
	goto	i1l10001
	line	128
	
i1l10002:	
	line	129
	
i1l10001:	
	btfss	(___ftadd@sign),(7)&7
	goto	u440_21
	goto	u440_20
u440_21:
	goto	i1l12786
u440_20:
	line	131
	
i1l12784:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	movlw	01h
	addwf	(___ftadd@f1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+2),f
	goto	i1l12786
	line	133
	
i1l10010:	
	line	134
	
i1l12786:	
	btfss	(___ftadd@sign),(6)&7
	goto	u441_21
	goto	u441_20
u441_21:
	goto	i1l12790
u441_20:
	line	136
	
i1l12788:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	goto	i1l12790
	line	138
	
i1l10011:	
	line	139
	
i1l12790:	
	clrf	(___ftadd@sign)
	line	140
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u442_21
	addwf	(___ftadd@f2+1),f
u442_21:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u442_22
	addwf	(___ftadd@f2+2),f
u442_22:

	line	141
	
i1l12792:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u443_21
	goto	u443_20
u443_21:
	goto	i1l12798
u443_20:
	line	142
	
i1l12794:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	line	144
	
i1l12796:	
	clrf	(___ftadd@sign)
	bsf	status,0
	rlf	(___ftadd@sign),f
	goto	i1l12798
	line	145
	
i1l10012:	
	line	146
	
i1l12798:	
	movf	(___ftadd@f2),w
	movwf	(?___ftpack)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftpack+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftpack+2)
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___ftadd@sign),w
	movwf	(??___ftadd+1)+0
	movf	(??___ftadd+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	goto	i1l9987
	
i1l12800:	
	line	148
	
i1l9987:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
;; =============== function ___ftadd ends ============

	signat	___ftadd,8315
	global	_I2C_Delay
psect	text1053,local,class=CODE,delta=2
global __ptext1053
__ptext1053:

;; *************** function _I2C_Delay *****************
;; Defined at:
;;		line 10 in file "D:\6_pic_project\00_Design_Flow_Car\Driver\iic.c"
;; Parameters:    Size  Location     Type
;;  n               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  n               1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2CStart
;;		_I2CStop
;;		_I2CSendByte
;;		_I2CWaitAck
;;		_I2CReceiveByte
;;		_I2CSendAck
;;		_IIC_WriteReg_Str
;; This function uses a non-reentrant model
;;
psect	text1053
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\iic.c"
	line	10
	global	__size_of_I2C_Delay
	__size_of_I2C_Delay	equ	__end_of_I2C_Delay-_I2C_Delay
	
_I2C_Delay:	
	opt	stack 1
; Regs used in _I2C_Delay: [wreg+status,2+status,0]
;I2C_Delay@n stored from wreg
	line	13
	movwf	(I2C_Delay@n)
	line	11
;iic.c: 11: do
	
i1l2949:	
	line	13
;iic.c: 12: {
;iic.c: 13: _nop();_nop();_nop();_nop();_nop();
	nop
	nop
	nop
	nop
	nop
	line	14
;iic.c: 14: _nop();_nop();_nop();_nop();_nop();
	nop
	nop
	nop
	nop
	nop
	line	15
;iic.c: 15: _nop();_nop();_nop();_nop();_nop();
	nop
	nop
	nop
	nop
	nop
	line	17
	
i1l12534:	
;iic.c: 16: }
;iic.c: 17: while(n--);
	movlw	low(01h)
	subwf	(I2C_Delay@n),f
	movf	((I2C_Delay@n)),w
	xorlw	0FFh
	skipz
	goto	u390_21
	goto	u390_20
u390_21:
	goto	i1l2949
u390_20:
	goto	i1l2951
	
i1l2950:	
	line	18
	
i1l2951:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Delay
	__end_of_I2C_Delay:
;; =============== function _I2C_Delay ends ============

	signat	_I2C_Delay,4216
	global	i1_Motor_Speed_Set
psect	text1054,local,class=CODE,delta=2
global __ptext1054
__ptext1054:

;; *************** function i1_Motor_Speed_Set *****************
;; Defined at:
;;		line 71 in file "D:\6_pic_project\00_Design_Flow_Car\User\Car_demo\Car_demo.c"
;; Parameters:    Size  Location     Type
;;  Motor_Speed_    2    0[COMMON] int 
;;  Motor_Speed_    2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Service
;; This function uses a non-reentrant model
;;
psect	text1054
	file	"D:\6_pic_project\00_Design_Flow_Car\User\Car_demo\Car_demo.c"
	line	71
	global	__size_ofi1_Motor_Speed_Set
	__size_ofi1_Motor_Speed_Set	equ	__end_ofi1_Motor_Speed_Set-i1_Motor_Speed_Set
	
i1_Motor_Speed_Set:	
	opt	stack 3
; Regs used in i1_Motor_Speed_Set: [wreg+status,2+status,0+btemp+1]
	line	72
	
i1l13134:	
;Car_demo.c: 72: if(Speed1 > 0 )
	movf	(i1Motor_Speed_Set@Speed1+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u520_25
	movlw	low(01h)
	subwf	(i1Motor_Speed_Set@Speed1),w
u520_25:

	skipc
	goto	u520_21
	goto	u520_20
u520_21:
	goto	i1l749
u520_20:
	line	74
	
i1l13136:	
;Car_demo.c: 73: {
;Car_demo.c: 74: RB4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(52/8),(52)&7
	line	75
;Car_demo.c: 75: RB5 = 0;
	bcf	(53/8),(53)&7
	line	76
	
i1l13138:	
;Car_demo.c: 76: CCPR1L=(unsigned char)Speed1;
	movf	(i1Motor_Speed_Set@Speed1),w
	movwf	(21)	;volatile
	line	77
;Car_demo.c: 77: }
	goto	i1l13142
	line	78
	
i1l749:	
	line	80
;Car_demo.c: 78: else
;Car_demo.c: 79: {
;Car_demo.c: 80: RB4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(52/8),(52)&7
	line	81
;Car_demo.c: 81: RB5 = 1;
	bsf	(53/8),(53)&7
	line	82
	
i1l13140:	
;Car_demo.c: 82: CCPR1L=(unsigned char)(-Speed1);
	decf	(i1Motor_Speed_Set@Speed1),w
	xorlw	0ffh
	movwf	(21)	;volatile
	goto	i1l13142
	line	83
	
i1l750:	
	line	85
	
i1l13142:	
;Car_demo.c: 83: }
;Car_demo.c: 85: if(Speed2 >0 )
	movf	(i1Motor_Speed_Set@Speed2+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u521_25
	movlw	low(01h)
	subwf	(i1Motor_Speed_Set@Speed2),w
u521_25:

	skipc
	goto	u521_21
	goto	u521_20
u521_21:
	goto	i1l751
u521_20:
	line	87
	
i1l13144:	
;Car_demo.c: 86: {
;Car_demo.c: 87: RB6 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(54/8),(54)&7
	line	88
;Car_demo.c: 88: RB7 = 0;
	bcf	(55/8),(55)&7
	line	89
	
i1l13146:	
;Car_demo.c: 89: CCPR2L=(unsigned char)Speed2;
	movf	(i1Motor_Speed_Set@Speed2),w
	movwf	(27)	;volatile
	line	90
;Car_demo.c: 90: }
	goto	i1l753
	line	91
	
i1l751:	
	line	93
;Car_demo.c: 91: else
;Car_demo.c: 92: {
;Car_demo.c: 93: RB6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(54/8),(54)&7
	line	94
;Car_demo.c: 94: RB7 = 1;
	bsf	(55/8),(55)&7
	line	95
	
i1l13148:	
;Car_demo.c: 95: CCPR2L=(unsigned char)(-Speed2);
	decf	(i1Motor_Speed_Set@Speed2),w
	xorlw	0ffh
	movwf	(27)	;volatile
	goto	i1l753
	line	96
	
i1l752:	
	line	97
	
i1l753:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Motor_Speed_Set
	__end_ofi1_Motor_Speed_Set:
;; =============== function i1_Motor_Speed_Set ends ============

	signat	i1_Motor_Speed_Set,88
	global	___ftneg
psect	text1055,local,class=CODE,delta=2
global __ptext1055
__ptext1055:

;; *************** function ___ftneg *****************
;; Defined at:
;;		line 16 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftneg.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[COMMON] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Velocity_PID
;; This function uses a non-reentrant model
;;
psect	text1055
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftneg.c"
	line	16
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
	opt	stack 2
; Regs used in ___ftneg: [wreg]
	line	17
	
i1l13004:	
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u494_21
	goto	u494_20
u494_21:
	goto	i1l13008
u494_20:
	line	18
	
i1l13006:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	goto	i1l13008
	
i1l10103:	
	line	19
	
i1l13008:	
	goto	i1l10104
	
i1l13010:	
	line	20
	
i1l10104:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
;; =============== function ___ftneg ends ============

	signat	___ftneg,4219
	global	___fttol
psect	text1056,local,class=CODE,delta=2
global __ptext1056
__ptext1056:

;; *************** function ___fttol *****************
;; Defined at:
;;		line 45 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3    8[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  lval            4    5[BANK0 ] unsigned long 
;;  exp1            1    9[BANK0 ] unsigned char 
;;  sign1           1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    8[COMMON] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         4      10       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Velocity_PID
;; This function uses a non-reentrant model
;;
psect	text1056
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 2
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
i1l12940:	
	movf	(___fttol@f1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@exp1)
	movf	((___fttol@exp1)),f
	skipz
	goto	u482_21
	goto	u482_20
u482_21:
	goto	i1l12946
u482_20:
	line	50
	
i1l12942:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	i1l10050
	
i1l12944:	
	goto	i1l10050
	
i1l10049:	
	line	51
	
i1l12946:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u483_25:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u483_20:
	addlw	-1
	skipz
	goto	u483_25
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
i1l12948:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
i1l12950:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
i1l12952:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
i1l12954:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
i1l12956:	
	btfss	(___fttol@exp1),7
	goto	u484_21
	goto	u484_20
u484_21:
	goto	i1l12966
u484_20:
	line	57
	
i1l12958:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u485_21
	goto	u485_20
u485_21:
	goto	i1l12964
u485_20:
	line	58
	
i1l12960:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	i1l10050
	
i1l12962:	
	goto	i1l10050
	
i1l10052:	
	goto	i1l12964
	line	59
	
i1l10053:	
	line	60
	
i1l12964:	
	movlw	01h
u486_25:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u486_25

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u487_21
	goto	u487_20
u487_21:
	goto	i1l12964
u487_20:
	goto	i1l12976
	
i1l10054:	
	line	62
	goto	i1l12976
	
i1l10051:	
	line	63
	
i1l12966:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u488_21
	goto	u488_20
u488_21:
	goto	i1l12974
u488_20:
	line	64
	
i1l12968:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	i1l10050
	
i1l12970:	
	goto	i1l10050
	
i1l10056:	
	line	65
	goto	i1l12974
	
i1l10058:	
	line	66
	
i1l12972:	
	movlw	01h
	movwf	(??___fttol+0)+0
u489_25:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u489_25
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	i1l12974
	line	68
	
i1l10057:	
	line	65
	
i1l12974:	
	movf	(___fttol@exp1),f
	skipz
	goto	u490_21
	goto	u490_20
u490_21:
	goto	i1l12972
u490_20:
	goto	i1l12976
	
i1l10059:	
	goto	i1l12976
	line	69
	
i1l10055:	
	line	70
	
i1l12976:	
	movf	(___fttol@sign1),w
	skipz
	goto	u491_20
	goto	i1l12980
u491_20:
	line	71
	
i1l12978:	
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	goto	i1l12980
	
i1l10060:	
	line	72
	
i1l12980:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	i1l10050
	
i1l12982:	
	line	73
	
i1l10050:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text1057,local,class=CODE,delta=2
global __ptext1057
__ptext1057:

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMMON] unsigned um
;;  exp             1    3[COMMON] unsigned char 
;;  sign            1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         5       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftadd
;;		___ftmul
;;		___awtoft
;;		___ftdiv
;;		___lbtoft
;;		___abtoft
;;		___lwtoft
;;		___altoft
;;		___lltoft
;;		___attoft
;;		___lttoft
;; This function uses a non-reentrant model
;;
psect	text1057
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 1
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
i1l12802:	
	movf	(___ftpack@exp),w
	skipz
	goto	u444_20
	goto	i1l12806
u444_20:
	
i1l12804:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u445_21
	goto	u445_20
u445_21:
	goto	i1l12812
u445_20:
	goto	i1l12806
	
i1l10274:	
	line	65
	
i1l12806:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	i1l10275
	
i1l12808:	
	goto	i1l10275
	
i1l10272:	
	line	66
	goto	i1l12812
	
i1l10277:	
	line	67
	
i1l12810:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u446_25:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u446_25

	goto	i1l12812
	line	69
	
i1l10276:	
	line	66
	
i1l12812:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u447_21
	goto	u447_20
u447_21:
	goto	i1l12810
u447_20:
	goto	i1l10279
	
i1l10278:	
	line	70
	goto	i1l10279
	
i1l10280:	
	line	71
	
i1l12814:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
i1l12816:	
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+2),f
	line	73
	
i1l12818:	
	movlw	01h
u448_25:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u448_25

	line	74
	
i1l10279:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u449_21
	goto	u449_20
u449_21:
	goto	i1l12814
u449_20:
	goto	i1l12822
	
i1l10281:	
	line	75
	goto	i1l12822
	
i1l10283:	
	line	76
	
i1l12820:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u450_25:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u450_25
	goto	i1l12822
	line	78
	
i1l10282:	
	line	75
	
i1l12822:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u451_21
	goto	u451_20
u451_21:
	goto	i1l12820
u451_20:
	
i1l10284:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u452_21
	goto	u452_20
u452_21:
	goto	i1l10285
u452_20:
	line	80
	
i1l12824:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
i1l10285:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
i1l12826:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u453_25:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u453_20:
	addlw	-1
	skipz
	goto	u453_25
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
i1l12828:	
	movf	(___ftpack@sign),w
	skipz
	goto	u454_20
	goto	i1l10286
u454_20:
	line	84
	
i1l12830:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
i1l10286:	
	line	85
	line	86
	
i1l10275:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	_I_amplitude_limiting
psect	text1058,local,class=CODE,delta=2
global __ptext1058
__ptext1058:

;; *************** function _I_amplitude_limiting *****************
;; Defined at:
;;		line 30 in file "D:\6_pic_project\00_Design_Flow_Car\Driver\pid.c"
;; Parameters:    Size  Location     Type
;;  number          1    wreg     unsigned char 
;;  Error_sum       1    0[COMMON] PTR unsigned char 
;;		 -> Velocity(24), 
;; Auto vars:     Size  Location     Type
;;  number          1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Velocity_PID
;; This function uses a non-reentrant model
;;
psect	text1058
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\pid.c"
	line	30
	global	__size_of_I_amplitude_limiting
	__size_of_I_amplitude_limiting	equ	__end_of_I_amplitude_limiting-_I_amplitude_limiting
	
_I_amplitude_limiting:	
	opt	stack 2
; Regs used in _I_amplitude_limiting: [wreg-fsr0h+status,2+status,0]
;I_amplitude_limiting@number stored from wreg
	movwf	(I_amplitude_limiting@number)
	line	31
	
i1l12676:	
;pid.c: 31: if(*Error_sum > number)
	movf	(I_amplitude_limiting@Error_sum),w
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	subwf	(I_amplitude_limiting@number),w
	skipnc
	goto	u405_21
	goto	u405_20
u405_21:
	goto	i1l12680
u405_20:
	line	33
	
i1l12678:	
;pid.c: 32: {
;pid.c: 33: *Error_sum = number;
	movf	(I_amplitude_limiting@number),w
	movwf	(??_I_amplitude_limiting+0)+0
	movf	(I_amplitude_limiting@Error_sum),w
	movwf	fsr0
	movf	(??_I_amplitude_limiting+0)+0,w
	movwf	indf
	goto	i1l12680
	line	34
	
i1l9220:	
	line	36
	
i1l12680:	
;pid.c: 34: }
;pid.c: 36: if(*Error_sum <- number)
	movf	(I_amplitude_limiting@number),w
	movwf	(??_I_amplitude_limiting+0)+0
	clrf	(??_I_amplitude_limiting+0)+0+1
	comf	(??_I_amplitude_limiting+0)+0,f
	comf	(??_I_amplitude_limiting+0)+1,f
	incf	(??_I_amplitude_limiting+0)+0,f
	skipnz
	incf	(??_I_amplitude_limiting+0)+1,f
	movf	(I_amplitude_limiting@Error_sum),w
	movwf	fsr0
	movf	1+(??_I_amplitude_limiting+0)+0,w
	xorlw	80h
	sublw	080h
	skipz
	goto	u406_25
	movf	0+(??_I_amplitude_limiting+0)+0,w
	subwf	indf,w
u406_25:

	skipnc
	goto	u406_21
	goto	u406_20
u406_21:
	goto	i1l9222
u406_20:
	line	38
	
i1l12682:	
;pid.c: 37: {
;pid.c: 38: *Error_sum = -number;
	decf	(I_amplitude_limiting@number),w
	xorlw	0ffh
	movwf	(??_I_amplitude_limiting+0)+0
	movf	(I_amplitude_limiting@Error_sum),w
	movwf	fsr0
	movf	(??_I_amplitude_limiting+0)+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	goto	i1l9222
	line	39
	
i1l9221:	
	line	40
	
i1l9222:	
	return
	opt stack 0
GLOBAL	__end_of_I_amplitude_limiting
	__end_of_I_amplitude_limiting:
;; =============== function _I_amplitude_limiting ends ============

	signat	_I_amplitude_limiting,8312
	global	_Trace_Proc
psect	text1059,local,class=CODE,delta=2
global __ptext1059
__ptext1059:

;; *************** function _Trace_Proc *****************
;; Defined at:
;;		line 53 in file "D:\6_pic_project\00_Design_Flow_Car\User\Car_demo\Car_demo.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  740[COMMON] int 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Service
;; This function uses a non-reentrant model
;;
psect	text1059
	file	"D:\6_pic_project\00_Design_Flow_Car\User\Car_demo\Car_demo.c"
	line	53
	global	__size_of_Trace_Proc
	__size_of_Trace_Proc	equ	__end_of_Trace_Proc-_Trace_Proc
	
_Trace_Proc:	
	opt	stack 3
; Regs used in _Trace_Proc: [wreg]
	line	55
	
i1l12226:	
;Car_demo.c: 55: if(RE2==0 && RE1 == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(74/8),(74)&7
	goto	u327_21
	goto	u327_20
u327_21:
	goto	i1l741
u327_20:
	
i1l12228:	
	btfsc	(73/8),(73)&7
	goto	u328_21
	goto	u328_20
u328_21:
	goto	i1l741
u328_20:
	line	57
	
i1l12230:	
;Car_demo.c: 56: {
;Car_demo.c: 57: Motor_Flag=5;
	movlw	(05h)
	movwf	(??_Trace_Proc+0)+0
	movf	(??_Trace_Proc+0)+0,w
	movwf	(_Motor_Flag)
	line	58
;Car_demo.c: 58: }
	goto	i1l746
	line	59
	
i1l741:	
;Car_demo.c: 59: else if(RE0 == 0)
	btfsc	(72/8),(72)&7
	goto	u329_21
	goto	u329_20
u329_21:
	goto	i1l743
u329_20:
	line	62
	
i1l12232:	
;Car_demo.c: 60: {
;Car_demo.c: 62: Motor_Flag=3;
	movlw	(03h)
	movwf	(??_Trace_Proc+0)+0
	movf	(??_Trace_Proc+0)+0,w
	movwf	(_Motor_Flag)
	line	63
;Car_demo.c: 63: }
	goto	i1l746
	line	64
	
i1l743:	
;Car_demo.c: 64: else if(RA4 == 0)
	btfsc	(44/8),(44)&7
	goto	u330_21
	goto	u330_20
u330_21:
	goto	i1l746
u330_20:
	line	66
	
i1l12234:	
;Car_demo.c: 65: {
;Car_demo.c: 66: Motor_Flag=4;
	movlw	(04h)
	movwf	(??_Trace_Proc+0)+0
	movf	(??_Trace_Proc+0)+0,w
	movwf	(_Motor_Flag)
	goto	i1l746
	line	67
	
i1l745:	
	goto	i1l746
	line	68
	
i1l744:	
	goto	i1l746
	
i1l742:	
	
i1l746:	
	return
	opt stack 0
GLOBAL	__end_of_Trace_Proc
	__end_of_Trace_Proc:
;; =============== function _Trace_Proc ends ============

	signat	_Trace_Proc,90
psect	text1060,local,class=CODE,delta=2
global __ptext1060
__ptext1060:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
