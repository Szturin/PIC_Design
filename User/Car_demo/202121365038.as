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
	FNCALL	_main,_csb_init
	FNCALL	_main,_Delay_ms
	FNCALL	_main,_printf
	FNCALL	_main,_Motor_Speed_Set
	FNCALL	_main,_Encoder_Init
	FNCALL	_main,_Start_PD
	FNCALL	_main,_Trace_PID
	FNCALL	_Trace_PID,___awtoft
	FNCALL	_Trace_PID,___ftmul
	FNCALL	_Trace_PID,___wmul
	FNCALL	_Trace_PID,___ftadd
	FNCALL	_Trace_PID,___fttol
	FNCALL	_LCD1602_WriteString,_LCD1602_WriteCommand
	FNCALL	_LCD1602_WriteString,_LCD1602_WriteData
	FNCALL	_LCD1602_Init,_LCD1602_Delay
	FNCALL	_LCD1602_Init,_LCD1602_WriteCommand
	FNCALL	___awtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftadd,___ftpack
	FNCALL	_printf,_putch
	FNCALL	_LCD1602_WriteData,_LCD1602_Delay
	FNCALL	_LCD1602_WriteCommand,_LCD1602_Delay
	FNROOT	_main
	FNCALL	intlevel1,_Service
	global	intlevel1
	FNROOT	intlevel1
	global	_table
	global	_Kp
psect	idataBANK1,class=CODE,space=0,delta=2
global __pidataBANK1
__pidataBANK1:
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\csb.c"
	line	9

;initializer for _table
	retlw	030h
	retlw	031h
	retlw	032h
	retlw	033h
	retlw	034h
	retlw	035h
	retlw	036h
	retlw	037h
	retlw	038h
	retlw	039h
	retlw	041h
	retlw	042h
	retlw	043h
	retlw	044h
	retlw	045h
	retlw	046h
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\pid.c"
	line	14

;initializer for _Kp
	retlw	0xcd
	retlw	0x4c
	retlw	0x40

	global	_Encoder_Counter
	global	_Turn_PWM
	global	_Circle_Mode
	global	_IO_flag
	global	_Key_Val
	global	_Speed_left
	global	_Speed_right
	global	_Start_Find_flag
	global	_Stop_Flag
	global	_Trace_Byte
	global	_bluetooth
	global	_mod
	global	_x
	global	_y
	global	_RBIF_FLAG
	global	_yz
	global	_Counter_temp
	global	_Kd
	global	_PWM
	global	_PWM1
	global	_PWM2
	global	_Speed
	global	_Speed_Set
	global	_Timer0_Counter
	global	_Turn
	global	_dis
	global	_distance
	global	_err_difference
	global	_last_err
	global	_odomoter_counter
	global	_turn_err
	global	_Bifurcate_Flag
	global	_KeyNum
	global	_Motor_Flag
	global	_Speed_Velcolity
	global	_Speed_measure1
	global	_Speed_measure2
	global	_m
	global	_CCP1CON
_CCP1CON	set	23
	global	_CCP2CON
_CCP2CON	set	29
	global	_CCPR1L
_CCPR1L	set	21
	global	_CCPR2L
_CCPR2L	set	27
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
	global	_RC0
_RC0	set	56
	global	_RC3
_RC3	set	59
	global	_RC4
_RC4	set	60
	global	_RC5
_RC5	set	61
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
	global	_TMR1ON
_TMR1ON	set	128
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
	global	_TRISB3
_TRISB3	set	1075
	global	_TRISB4
_TRISB4	set	1076
	global	_TRISB5
_TRISB5	set	1077
	global	_TRISB6
_TRISB6	set	1078
	global	_TRISB7
_TRISB7	set	1079
	global	_TRISC0
_TRISC0	set	1080
	global	_TRISC1
_TRISC1	set	1081
	global	_TRISC2
_TRISC2	set	1082
	global	_TRISC3
_TRISC3	set	1083
	global	_TRISC4
_TRISC4	set	1084
	global	_TRISC5
_TRISC5	set	1085
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
	
STR_4:	
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
	
STR_3:	
	retlw	83	;'S'
	retlw	112	;'p'
	retlw	101	;'e'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_2:	
	retlw	67	;'C'
	retlw	65	;'A'
	retlw	82	;'R'
	retlw	32	;' '
	retlw	49	;'1'
	retlw	0
psect	strings
	
STR_1:	
	retlw	37	;'%'
	retlw	99	;'c'
	retlw	0
psect	strings
	file	"202121365038.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bitbssCOMMON,class=COMMON,bit,space=1
global __pbitbssCOMMON
__pbitbssCOMMON:
_RBIF_FLAG:
       ds      1

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_bluetooth:
       ds      1

_mod:
       ds      1

_x:
       ds      1

_y:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_Encoder_Counter:
       ds      2

_Turn_PWM:
       ds      2

_Circle_Mode:
       ds      1

_IO_flag:
       ds      1

_Key_Val:
       ds      1

_Speed_left:
       ds      1

_Speed_right:
       ds      1

_Start_Find_flag:
       ds      1

_Stop_Flag:
       ds      1

_Trace_Byte:
       ds      1

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_yz:
       ds      8

_Counter_temp:
       ds      2

_Kd:
       ds      2

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

_Timer0_Counter:
       ds      2

_Turn:
       ds      2

_dis:
       ds      2

_distance:
       ds      2

_err_difference:
       ds      2

_last_err:
       ds      2

_odomoter_counter:
       ds      2

_turn_err:
       ds      2

_Bifurcate_Flag:
       ds      1

_KeyNum:
       ds      1

_Motor_Flag:
       ds      1

_Speed_Velcolity:
       ds      1

_Speed_measure1:
       ds      1

_Speed_measure2:
       ds      1

_m:
       ds      1

psect	dataBANK1,class=BANK1,space=1
global __pdataBANK1
__pdataBANK1:
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\csb.c"
	line	9
_table:
       ds      16

psect	dataBANK1
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\pid.c"
	line	14
_Kp:
       ds      3

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

; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+0Ch)
	fcall	clear_ram
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+02Dh)
	fcall	clear_ram
global btemp
psect inittext,class=CODE,delta=2
global init_fetch,btemp
;	Called with low address in FSR and high address in W
init_fetch:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram:
	fcall init_fetch
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram
; Initialize objects allocated to BANK1
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK1
	movlw low(__pdataBANK1+19)
	movwf btemp-1,f
	movlw high(__pidataBANK1)
	movwf btemp,f
	movlw low(__pidataBANK1)
	movwf btemp+1,f
	movlw low(__pdataBANK1)
	movwf fsr,f
	fcall init_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1
global __pcstackBANK1
__pcstackBANK1:
	global	??_main
??_main:	; 0 bytes @ 0x0
	ds	4
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_LCD1602_Delay
?_LCD1602_Delay:	; 0 bytes @ 0x0
	global	?_LCD1602_WriteCommand
?_LCD1602_WriteCommand:	; 0 bytes @ 0x0
	global	?_LCD1602_WriteData
?_LCD1602_WriteData:	; 0 bytes @ 0x0
	global	?_LCD1602_Init
?_LCD1602_Init:	; 0 bytes @ 0x0
	global	?_LCD1602_GPIO_Init
?_LCD1602_GPIO_Init:	; 0 bytes @ 0x0
	global	?_Motor_GPIO_Init
?_Motor_GPIO_Init:	; 0 bytes @ 0x0
	global	?_Motor_CCP_PWM_Init
?_Motor_CCP_PWM_Init:	; 0 bytes @ 0x0
	global	?_putch
?_putch:	; 0 bytes @ 0x0
	global	?_Usart_GPIO_Init
?_Usart_GPIO_Init:	; 0 bytes @ 0x0
	global	?_Usart_Init
?_Usart_Init:	; 0 bytes @ 0x0
	global	?_Encoder_Init
?_Encoder_Init:	; 0 bytes @ 0x0
	global	?_csb_init
?_csb_init:	; 0 bytes @ 0x0
	global	?_Service
?_Service:	; 0 bytes @ 0x0
	global	??_Service
??_Service:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	ds	5
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_LCD1602_Delay
??_LCD1602_Delay:	; 0 bytes @ 0x0
	global	??_LCD1602_GPIO_Init
??_LCD1602_GPIO_Init:	; 0 bytes @ 0x0
	global	??_Motor_GPIO_Init
??_Motor_GPIO_Init:	; 0 bytes @ 0x0
	global	??_Motor_CCP_PWM_Init
??_Motor_CCP_PWM_Init:	; 0 bytes @ 0x0
	global	?_Motor_Speed_Set
?_Motor_Speed_Set:	; 0 bytes @ 0x0
	global	??_putch
??_putch:	; 0 bytes @ 0x0
	global	??_Usart_GPIO_Init
??_Usart_GPIO_Init:	; 0 bytes @ 0x0
	global	??_Usart_Init
??_Usart_Init:	; 0 bytes @ 0x0
	global	?_Delay_ms
?_Delay_ms:	; 0 bytes @ 0x0
	global	??_Encoder_Init
??_Encoder_Init:	; 0 bytes @ 0x0
	global	??_csb_init
??_csb_init:	; 0 bytes @ 0x0
	global	?_Start_PD
?_Start_PD:	; 2 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	putch@ch
putch@ch:	; 1 bytes @ 0x0
	global	LCD1602_Delay@i
LCD1602_Delay@i:	; 2 bytes @ 0x0
	global	Motor_Speed_Set@Speed1
Motor_Speed_Set@Speed1:	; 2 bytes @ 0x0
	global	Delay_ms@x
Delay_ms@x:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds	1
	global	?_printf
?_printf:	; 2 bytes @ 0x1
	ds	1
	global	??_LCD1602_WriteCommand
??_LCD1602_WriteCommand:	; 0 bytes @ 0x2
	global	??_LCD1602_WriteData
??_LCD1602_WriteData:	; 0 bytes @ 0x2
	global	??_Delay_ms
??_Delay_ms:	; 0 bytes @ 0x2
	global	??_Start_PD
??_Start_PD:	; 0 bytes @ 0x2
	global	LCD1602_WriteCommand@Command
LCD1602_WriteCommand@Command:	; 1 bytes @ 0x2
	global	LCD1602_WriteData@Data
LCD1602_WriteData@Data:	; 1 bytes @ 0x2
	global	Motor_Speed_Set@Speed2
Motor_Speed_Set@Speed2:	; 2 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	ds	1
	global	??_printf
??_printf:	; 0 bytes @ 0x3
	global	??_LCD1602_Init
??_LCD1602_Init:	; 0 bytes @ 0x3
	global	?_LCD1602_WriteString
?_LCD1602_WriteString:	; 0 bytes @ 0x3
	global	LCD1602_WriteString@column
LCD1602_WriteString@column:	; 1 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	ds	1
	global	??_Motor_Speed_Set
??_Motor_Speed_Set:	; 0 bytes @ 0x4
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	LCD1602_WriteString@String
LCD1602_WriteString@String:	; 1 bytes @ 0x4
	global	printf@flag
printf@flag:	; 1 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	1
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x5
	global	??_LCD1602_WriteString
??_LCD1602_WriteString:	; 0 bytes @ 0x5
	global	printf@ap
printf@ap:	; 1 bytes @ 0x5
	ds	1
	global	LCD1602_WriteString@Location
LCD1602_WriteString@Location:	; 1 bytes @ 0x6
	global	printf@f
printf@f:	; 1 bytes @ 0x6
	ds	1
	global	LCD1602_WriteString@row
LCD1602_WriteString@row:	; 1 bytes @ 0x7
	global	printf@c
printf@c:	; 1 bytes @ 0x7
	ds	1
	global	?___fttol
?___fttol:	; 4 bytes @ 0x8
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x8
	ds	2
	global	Start_PD@Trace_Mode
Start_PD@Trace_Mode:	; 1 bytes @ 0xA
	ds	2
	global	??___fttol
??___fttol:	; 0 bytes @ 0xC
	ds	4
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x10
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x11
	ds	4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x15
	ds	1
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x16
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x16
	ds	3
	global	??___awtoft
??___awtoft:	; 0 bytes @ 0x19
	ds	2
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0x1B
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x1C
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x1C
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x1F
	ds	3
	global	??___ftmul
??___ftmul:	; 0 bytes @ 0x22
	ds	4
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x26
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x27
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x2A
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x2B
	ds	1
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x2C
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x2C
	ds	3
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x2F
	ds	3
	global	??___ftadd
??___ftadd:	; 0 bytes @ 0x32
	ds	4
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x36
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x37
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x38
	ds	1
	global	?_Trace_PID
?_Trace_PID:	; 2 bytes @ 0x39
	ds	2
	global	??_Trace_PID
??_Trace_PID:	; 0 bytes @ 0x3B
	ds	8
;;Data sizes: Strings 34, constant 0, data 19, bss 61, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      5      10
;; BANK0           80     67      79
;; BANK1           80      4      68
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___ftpack	float  size(1) Largest target is 0
;;
;; ?_Trace_PID	int  size(1) Largest target is 0
;;
;; ?___fttol	long  size(1) Largest target is 0
;;
;; ?___ftmul	float  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?___ftadd	float  size(1) Largest target is 0
;;
;; ?___awtoft	float  size(1) Largest target is 0
;;
;; printf@f	PTR const unsigned char  size(1) Largest target is 18
;;		 -> STR_4(CODE[18]), STR_1(CODE[3]), 
;;
;; ?_printf	int  size(1) Largest target is 0
;;
;; printf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_printf(BANK0[2]), 
;;
;; S12139$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; LCD1602_WriteString@String	PTR unsigned char  size(1) Largest target is 7
;;		 -> STR_3(CODE[7]), STR_2(CODE[6]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _Service in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_Trace_PID
;;   _Trace_PID->___ftadd
;;   _LCD1602_WriteString->_LCD1602_WriteCommand
;;   _LCD1602_WriteString->_LCD1602_WriteData
;;   _LCD1602_Init->_LCD1602_WriteCommand
;;   ___awtoft->___fttol
;;   ___ftmul->___awtoft
;;   ___ftadd->___ftmul
;;   _printf->_putch
;;   _LCD1602_WriteData->_LCD1602_Delay
;;   _LCD1602_WriteCommand->_LCD1602_Delay
;;   ___fttol->___ftpack
;;
;; Critical Paths under _Service in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
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
;;Main: autosize = 0, tempsize = 4, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 4     4      0    4247
;;                                              0 BANK1      4     4      0
;;                  _LCD1602_GPIO_Init
;;                       _LCD1602_Init
;;                _LCD1602_WriteString
;;                    _Usart_GPIO_Init
;;                         _Usart_Init
;;                    _Motor_GPIO_Init
;;                 _Motor_CCP_PWM_Init
;;                           _csb_init
;;                           _Delay_ms
;;                             _printf
;;                    _Motor_Speed_Set
;;                       _Encoder_Init
;;                           _Start_PD
;;                          _Trace_PID
;; ---------------------------------------------------------------------------------
;; (1) _Trace_PID                                           10     8      2    3170
;;                                             57 BANK0     10     8      2
;;                           ___awtoft
;;                            ___ftmul
;;                             ___wmul
;;                            ___ftadd
;;                            ___fttol
;; ---------------------------------------------------------------------------------
;; (1) _LCD1602_WriteString                                  5     3      2     424
;;                                              3 BANK0      5     3      2
;;               _LCD1602_WriteCommand
;;                  _LCD1602_WriteData
;; ---------------------------------------------------------------------------------
;; (1) _LCD1602_Init                                         0     0      0     167
;;                      _LCD1602_Delay
;;               _LCD1602_WriteCommand
;; ---------------------------------------------------------------------------------
;; (2) ___awtoft                                             6     3      3     445
;;                                             22 BANK0      6     3      3
;;                           ___ftpack
;;                             ___wmul (ARG)
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___ftmul                                             16    10      6     800
;;                                             28 BANK0     16    10      6
;;                           ___ftpack
;;                           ___awtoft (ARG)
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___ftadd                                             13     7      6    1537
;;                                             44 BANK0     13     7      6
;;                           ___ftpack
;;                            ___ftmul (ARG)
;;                           ___awtoft (ARG)
;;                             ___wmul (ARG)
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (1) _Delay_ms                                             2     0      2      31
;;                                              0 BANK0      2     0      2
;; ---------------------------------------------------------------------------------
;; (1) _printf                                              12    10      2     235
;;                                              1 BANK0      7     5      2
;;                              _putch
;; ---------------------------------------------------------------------------------
;; (2) _LCD1602_WriteData                                    1     1      0      99
;;                                              2 BANK0      1     1      0
;;                      _LCD1602_Delay
;; ---------------------------------------------------------------------------------
;; (2) _LCD1602_WriteCommand                                 1     1      0      99
;;                                              2 BANK0      1     1      0
;;                      _LCD1602_Delay
;; ---------------------------------------------------------------------------------
;; (2) ___fttol                                             14    10      4     252
;;                                              8 BANK0     14    10      4
;;                           ___ftpack (ARG)
;;                             ___wmul (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___ftpack                                             8     3      5     312
;;                                              0 BANK0      8     3      5
;; ---------------------------------------------------------------------------------
;; (2) ___wmul                                               6     2      4     136
;;                                              0 BANK0      6     2      4
;; ---------------------------------------------------------------------------------
;; (1) _Start_PD                                            11     9      2      34
;;                                              0 BANK0     11     9      2
;; ---------------------------------------------------------------------------------
;; (1) _csb_init                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _Encoder_Init                                         0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _Usart_Init                                           0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _Usart_GPIO_Init                                      0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _putch                                                1     1      0      31
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _Motor_Speed_Set                                      4     0      4     186
;;                                              0 BANK0      4     0      4
;; ---------------------------------------------------------------------------------
;; (1) _Motor_CCP_PWM_Init                                   0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _Motor_GPIO_Init                                      0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _LCD1602_GPIO_Init                                    0     0      0       0
;; ---------------------------------------------------------------------------------
;; (3) _LCD1602_Delay                                        2     2      0      68
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (4) _Service                                              5     5      0       0
;;                                              0 COMMON     5     5      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
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
;;   _csb_init
;;   _Delay_ms
;;   _printf
;;     _putch
;;   _Motor_Speed_Set
;;   _Encoder_Init
;;   _Start_PD
;;   _Trace_PID
;;     ___awtoft
;;       ___ftpack
;;       ___wmul (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___wmul (ARG)
;;     ___ftmul
;;       ___ftpack
;;       ___awtoft (ARG)
;;         ___ftpack
;;         ___wmul (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___wmul (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___wmul (ARG)
;;     ___wmul
;;     ___ftadd
;;       ___ftpack
;;       ___ftmul (ARG)
;;         ___ftpack
;;         ___awtoft (ARG)
;;           ___ftpack
;;           ___wmul (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___wmul (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___wmul (ARG)
;;       ___awtoft (ARG)
;;         ___ftpack
;;         ___wmul (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___wmul (ARG)
;;       ___wmul (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___wmul (ARG)
;;     ___fttol
;;       ___ftpack (ARG)
;;       ___wmul (ARG)
;;
;; _Service (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0       0       9        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      4      44       7       85.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      A0      12        0.0%
;;ABS                  0      0      9D       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       3       2        0.0%
;;BANK0               50     43      4F       5       98.8%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      5       A       1       71.4%
;;BITCOMMON            E      0       1       0        7.1%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 129 in file "D:\6_pic_project\00_Design_Flow_Car\User\Car_demo\Car_demo.c"
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
;;      Temps:          0       0       4       0       0
;;      Totals:         0       0       4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_LCD1602_GPIO_Init
;;		_LCD1602_Init
;;		_LCD1602_WriteString
;;		_Usart_GPIO_Init
;;		_Usart_Init
;;		_Motor_GPIO_Init
;;		_Motor_CCP_PWM_Init
;;		_csb_init
;;		_Delay_ms
;;		_printf
;;		_Motor_Speed_Set
;;		_Encoder_Init
;;		_Start_PD
;;		_Trace_PID
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\6_pic_project\00_Design_Flow_Car\User\Car_demo\Car_demo.c"
	line	129
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	131
	
l14404:	
;Car_demo.c: 131: TRISB1=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1073/8)^080h,(1073)&7
	line	134
;Car_demo.c: 134: TRISA0=0;
	bcf	(1064/8)^080h,(1064)&7
	line	135
;Car_demo.c: 135: TRISA1=0;
	bcf	(1065/8)^080h,(1065)&7
	line	136
;Car_demo.c: 136: TRISE0=1;
	bsf	(1096/8)^080h,(1096)&7
	line	137
;Car_demo.c: 137: TRISE1=1;
	bsf	(1097/8)^080h,(1097)&7
	line	138
;Car_demo.c: 138: TRISE2=1;
	bsf	(1098/8)^080h,(1098)&7
	line	139
;Car_demo.c: 139: TRISA4=1;
	bsf	(1068/8)^080h,(1068)&7
	line	140
;Car_demo.c: 140: TRISC0=1;
	bsf	(1080/8)^080h,(1080)&7
	line	141
;Car_demo.c: 141: TRISC3=1;
	bsf	(1083/8)^080h,(1083)&7
	line	142
;Car_demo.c: 142: TRISC4=1;
	bsf	(1084/8)^080h,(1084)&7
	line	143
;Car_demo.c: 143: TRISC5=1;
	bsf	(1085/8)^080h,(1085)&7
	line	144
;Car_demo.c: 144: TRISB3=1;
	bsf	(1075/8)^080h,(1075)&7
	line	146
	
l14406:	
;Car_demo.c: 146: LCD1602_GPIO_Init();
	fcall	_LCD1602_GPIO_Init
	line	147
;Car_demo.c: 147: LCD1602_Init();
	fcall	_LCD1602_Init
	line	148
	
l14408:	
;Car_demo.c: 148: LCD1602_WriteString(1,0,"CAR 1");
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_LCD1602_WriteString)
	movlw	((STR_2-__stringbase))&0ffh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(0+?_LCD1602_WriteString+01h)
	movlw	(01h)
	fcall	_LCD1602_WriteString
	line	149
	
l14410:	
;Car_demo.c: 149: LCD1602_WriteString(2,0,"Speed:");
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_LCD1602_WriteString)
	movlw	((STR_3-__stringbase))&0ffh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(0+?_LCD1602_WriteString+01h)
	movlw	(02h)
	fcall	_LCD1602_WriteString
	line	151
	
l14412:	
;Car_demo.c: 151: Usart_GPIO_Init();
	fcall	_Usart_GPIO_Init
	line	152
	
l14414:	
;Car_demo.c: 152: Usart_Init();
	fcall	_Usart_Init
	line	154
;Car_demo.c: 154: Motor_GPIO_Init();
	fcall	_Motor_GPIO_Init
	line	155
	
l14416:	
;Car_demo.c: 155: Motor_CCP_PWM_Init();
	fcall	_Motor_CCP_PWM_Init
	line	156
	
l14418:	
;Car_demo.c: 156: csb_init();
	fcall	_csb_init
	line	158
	
l14420:	
;Car_demo.c: 158: Delay_ms(5000);
	movlw	low(01388h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Delay_ms)
	movlw	high(01388h)
	movwf	((?_Delay_ms))+1
	fcall	_Delay_ms
	line	159
	
l14422:	
;Car_demo.c: 159: printf("串口初始化完成!\r\n");
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_printf
	line	160
	
l14424:	
;Car_demo.c: 160: Motor_Speed_Set(PWM1,PWM2);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_PWM1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_Motor_Speed_Set+1)
	addwf	(?_Motor_Speed_Set+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_PWM1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_Motor_Speed_Set)
	addwf	(?_Motor_Speed_Set)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_PWM2+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?_Motor_Speed_Set)+02h
	addwf	1+(?_Motor_Speed_Set)+02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_PWM2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(?_Motor_Speed_Set)+02h
	addwf	0+(?_Motor_Speed_Set)+02h

	fcall	_Motor_Speed_Set
	line	161
	
l14426:	
;Car_demo.c: 161: Encoder_Init();
	fcall	_Encoder_Init
	goto	l14428
	line	162
;Car_demo.c: 162: while(1)
	
l9978:	
	line	165
	
l14428:	
;Car_demo.c: 163: {
;Car_demo.c: 165: if(Circle_Mode == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Circle_Mode),f
	skipz
	goto	u6161
	goto	u6160
u6161:
	goto	l14444
u6160:
	line	167
	
l14430:	
;Car_demo.c: 166: {
;Car_demo.c: 167: Motor_Speed_Set(40,40);
	movlw	low(028h)
	movwf	(?_Motor_Speed_Set)
	movlw	high(028h)
	movwf	((?_Motor_Speed_Set))+1
	movlw	low(028h)
	movwf	0+(?_Motor_Speed_Set)+02h
	movlw	high(028h)
	movwf	(0+(?_Motor_Speed_Set)+02h)+1
	fcall	_Motor_Speed_Set
	line	169
	
l14432:	
;Car_demo.c: 169: if(Start_PD() == -99)
	fcall	_Start_PD
	movlw	high(-99)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(1+(?_Start_PD)),w
	skipz
	goto	u6175
	movlw	low(-99)
	xorwf	(0+(?_Start_PD)),w
u6175:

	skipz
	goto	u6171
	goto	u6170
u6171:
	goto	l14436
u6170:
	line	171
	
l14434:	
;Car_demo.c: 170: {
;Car_demo.c: 171: Start_Find_flag = 1;
	clrf	(_Start_Find_flag)
	bsf	status,0
	rlf	(_Start_Find_flag),f
	goto	l14436
	line	172
	
l9980:	
	line	174
	
l14436:	
;Car_demo.c: 172: }
;Car_demo.c: 174: if(Encoder_Counter > 200)
	movlw	high(0C9h)
	subwf	(_Encoder_Counter+1),w
	movlw	low(0C9h)
	skipnz
	subwf	(_Encoder_Counter),w
	skipc
	goto	u6181
	goto	u6180
u6181:
	goto	l14428
u6180:
	line	176
	
l14438:	
;Car_demo.c: 175: {
;Car_demo.c: 176: Start_Find_flag = 0;
	clrf	(_Start_Find_flag)
	line	177
	
l14440:	
;Car_demo.c: 177: Encoder_Counter=0;
	clrf	(_Encoder_Counter)
	clrf	(_Encoder_Counter+1)
	line	178
	
l14442:	
;Car_demo.c: 178: Circle_Mode = 1;
	clrf	(_Circle_Mode)
	bsf	status,0
	rlf	(_Circle_Mode),f
	goto	l14428
	line	179
	
l9981:	
	line	180
;Car_demo.c: 179: }
;Car_demo.c: 180: }
	goto	l14428
	line	181
	
l9979:	
	
l14444:	
;Car_demo.c: 181: else if(Circle_Mode == 1)
	movf	(_Circle_Mode),w
	xorlw	01h
	skipz
	goto	u6191
	goto	u6190
u6191:
	goto	l14470
u6190:
	line	183
	
l14446:	
;Car_demo.c: 182: {
;Car_demo.c: 183: if(Start_PD() == -99)
	fcall	_Start_PD
	movlw	high(-99)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(1+(?_Start_PD)),w
	skipz
	goto	u6205
	movlw	low(-99)
	xorwf	(0+(?_Start_PD)),w
u6205:

	skipz
	goto	u6201
	goto	u6200
u6201:
	goto	l14450
u6200:
	line	185
	
l14448:	
;Car_demo.c: 184: {
;Car_demo.c: 185: Start_Find_flag =1;
	clrf	(_Start_Find_flag)
	bsf	status,0
	rlf	(_Start_Find_flag),f
	goto	l14450
	line	186
	
l9984:	
	line	188
	
l14450:	
;Car_demo.c: 186: }
;Car_demo.c: 188: if(Start_Find_flag == 1)
	movf	(_Start_Find_flag),w
	xorlw	01h
	skipz
	goto	u6211
	goto	u6210
u6211:
	goto	l14462
u6210:
	line	190
	
l14452:	
;Car_demo.c: 189: {
;Car_demo.c: 190: Motor_Speed_Set(40,40);
	movlw	low(028h)
	movwf	(?_Motor_Speed_Set)
	movlw	high(028h)
	movwf	((?_Motor_Speed_Set))+1
	movlw	low(028h)
	movwf	0+(?_Motor_Speed_Set)+02h
	movlw	high(028h)
	movwf	(0+(?_Motor_Speed_Set)+02h)+1
	fcall	_Motor_Speed_Set
	line	191
	
l14454:	
;Car_demo.c: 191: if(Encoder_Counter > 200)
	movlw	high(0C9h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_Encoder_Counter+1),w
	movlw	low(0C9h)
	skipnz
	subwf	(_Encoder_Counter),w
	skipc
	goto	u6221
	goto	u6220
u6221:
	goto	l14428
u6220:
	line	193
	
l14456:	
;Car_demo.c: 192: {
;Car_demo.c: 193: IO_flag = 1;
	clrf	(_IO_flag)
	bsf	status,0
	rlf	(_IO_flag),f
	line	194
	
l14458:	
;Car_demo.c: 194: Encoder_Counter=0;
	clrf	(_Encoder_Counter)
	clrf	(_Encoder_Counter+1)
	line	195
	
l14460:	
;Car_demo.c: 195: Circle_Mode = 2;
	movlw	(02h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_Circle_Mode)
	goto	l14428
	line	196
	
l9986:	
	line	197
;Car_demo.c: 196: }
;Car_demo.c: 197: }
	goto	l14428
	line	198
	
l9985:	
	line	201
	
l14462:	
;Car_demo.c: 198: else
;Car_demo.c: 199: {
;Car_demo.c: 201: Turn_PWM = Trace_PID();
	fcall	_Trace_PID
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_Trace_PID)),w
	clrf	(_Turn_PWM+1)
	addwf	(_Turn_PWM+1)
	movf	(0+(?_Trace_PID)),w
	clrf	(_Turn_PWM)
	addwf	(_Turn_PWM)

	line	202
	
l14464:	
;Car_demo.c: 202: Speed_left = 40 - Turn_PWM;
	decf	(_Turn_PWM),w
	xorlw	0ffh
	addlw	028h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_Speed_left)
	line	203
	
l14466:	
;Car_demo.c: 203: Speed_right = 40 + Turn_PWM;
	movf	(_Turn_PWM),w
	addlw	028h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_Speed_right)
	line	204
	
l14468:	
;Car_demo.c: 204: Motor_Speed_Set(Speed_left,Speed_right);
	movf	(_Speed_left),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	clrf	(??_main+0)^080h+0+1
	movf	0+(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Motor_Speed_Set)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Motor_Speed_Set+1)
	movf	(_Speed_right),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+2)^080h+0
	clrf	(??_main+2)^080h+0+1
	movf	0+(??_main+2)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?_Motor_Speed_Set)+02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(??_main+2)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?_Motor_Speed_Set)+02h
	fcall	_Motor_Speed_Set
	goto	l14428
	line	205
	
l9987:	
	line	206
;Car_demo.c: 205: }
;Car_demo.c: 206: }
	goto	l14428
	line	207
	
l9983:	
	
l14470:	
;Car_demo.c: 207: else if(Circle_Mode == 2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Circle_Mode),w
	xorlw	02h
	skipz
	goto	u6231
	goto	u6230
u6231:
	goto	l14508
u6230:
	line	209
	
l14472:	
;Car_demo.c: 208: {
;Car_demo.c: 209: if(IO_flag == 0)
	movf	(_IO_flag),f
	skipz
	goto	u6241
	goto	u6240
u6241:
	goto	l14498
u6240:
	line	211
	
l14474:	
;Car_demo.c: 210: {
;Car_demo.c: 211: if(Start_PD() == -99)
	fcall	_Start_PD
	movlw	high(-99)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(1+(?_Start_PD)),w
	skipz
	goto	u6255
	movlw	low(-99)
	xorwf	(0+(?_Start_PD)),w
u6255:

	skipz
	goto	u6251
	goto	u6250
u6251:
	goto	l14478
u6250:
	line	213
	
l14476:	
;Car_demo.c: 212: {
;Car_demo.c: 213: Start_Find_flag = 1;
	clrf	(_Start_Find_flag)
	bsf	status,0
	rlf	(_Start_Find_flag),f
	goto	l14478
	line	214
	
l9991:	
	line	216
	
l14478:	
;Car_demo.c: 214: }
;Car_demo.c: 216: if(Start_Find_flag)
	movf	(_Start_Find_flag),w
	skipz
	goto	u6260
	goto	l14490
u6260:
	line	218
	
l14480:	
;Car_demo.c: 217: {
;Car_demo.c: 218: Motor_Speed_Set(40,40);
	movlw	low(028h)
	movwf	(?_Motor_Speed_Set)
	movlw	high(028h)
	movwf	((?_Motor_Speed_Set))+1
	movlw	low(028h)
	movwf	0+(?_Motor_Speed_Set)+02h
	movlw	high(028h)
	movwf	(0+(?_Motor_Speed_Set)+02h)+1
	fcall	_Motor_Speed_Set
	line	219
	
l14482:	
;Car_demo.c: 219: if(Encoder_Counter > 120)
	movlw	high(079h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_Encoder_Counter+1),w
	movlw	low(079h)
	skipnz
	subwf	(_Encoder_Counter),w
	skipc
	goto	u6271
	goto	u6270
u6271:
	goto	l14428
u6270:
	line	221
	
l14484:	
;Car_demo.c: 220: {
;Car_demo.c: 221: Start_Find_flag = 0;
	clrf	(_Start_Find_flag)
	line	222
;Car_demo.c: 222: IO_flag = 0;
	clrf	(_IO_flag)
	line	223
	
l14486:	
;Car_demo.c: 223: Encoder_Counter=0;
	clrf	(_Encoder_Counter)
	clrf	(_Encoder_Counter+1)
	line	224
	
l14488:	
;Car_demo.c: 224: Circle_Mode = 3;
	movlw	(03h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_Circle_Mode)
	goto	l14428
	line	225
	
l9993:	
	line	226
;Car_demo.c: 225: }
;Car_demo.c: 226: }
	goto	l14428
	line	227
	
l9992:	
	line	230
	
l14490:	
;Car_demo.c: 227: else
;Car_demo.c: 228: {
;Car_demo.c: 230: Turn_PWM = Trace_PID();
	fcall	_Trace_PID
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_Trace_PID)),w
	clrf	(_Turn_PWM+1)
	addwf	(_Turn_PWM+1)
	movf	(0+(?_Trace_PID)),w
	clrf	(_Turn_PWM)
	addwf	(_Turn_PWM)

	line	231
	
l14492:	
;Car_demo.c: 231: Speed_left = 40 - Turn_PWM;
	decf	(_Turn_PWM),w
	xorlw	0ffh
	addlw	028h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_Speed_left)
	line	232
	
l14494:	
;Car_demo.c: 232: Speed_right = 40 + Turn_PWM;
	movf	(_Turn_PWM),w
	addlw	028h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_Speed_right)
	line	233
	
l14496:	
;Car_demo.c: 233: Motor_Speed_Set(Speed_left,Speed_right);
	movf	(_Speed_left),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	clrf	(??_main+0)^080h+0+1
	movf	0+(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Motor_Speed_Set)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Motor_Speed_Set+1)
	movf	(_Speed_right),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+2)^080h+0
	clrf	(??_main+2)^080h+0+1
	movf	0+(??_main+2)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?_Motor_Speed_Set)+02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(??_main+2)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?_Motor_Speed_Set)+02h
	fcall	_Motor_Speed_Set
	goto	l14428
	line	234
	
l9994:	
	line	235
;Car_demo.c: 234: }
;Car_demo.c: 235: }
	goto	l14428
	line	236
	
l9990:	
	line	238
	
l14498:	
;Car_demo.c: 236: else
;Car_demo.c: 237: {
;Car_demo.c: 238: if(Encoder_Counter > 320)
	movlw	high(0141h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_Encoder_Counter+1),w
	movlw	low(0141h)
	skipnz
	subwf	(_Encoder_Counter),w
	skipc
	goto	u6281
	goto	u6280
u6281:
	goto	l14506
u6280:
	line	240
	
l14500:	
;Car_demo.c: 239: {
;Car_demo.c: 240: Start_Find_flag = 0;
	clrf	(_Start_Find_flag)
	line	241
	
l14502:	
;Car_demo.c: 241: Encoder_Counter=0;
	clrf	(_Encoder_Counter)
	clrf	(_Encoder_Counter+1)
	line	242
	
l14504:	
;Car_demo.c: 242: IO_flag = 0;
	clrf	(_IO_flag)
	goto	l14506
	line	243
	
l9996:	
	line	244
	
l14506:	
;Car_demo.c: 243: }
;Car_demo.c: 244: Motor_Speed_Set(20,60);
	movlw	low(014h)
	movwf	(?_Motor_Speed_Set)
	movlw	high(014h)
	movwf	((?_Motor_Speed_Set))+1
	movlw	low(03Ch)
	movwf	0+(?_Motor_Speed_Set)+02h
	movlw	high(03Ch)
	movwf	(0+(?_Motor_Speed_Set)+02h)+1
	fcall	_Motor_Speed_Set
	goto	l14428
	line	245
	
l9995:	
	line	246
;Car_demo.c: 245: }
;Car_demo.c: 246: }
	goto	l14428
	line	247
	
l9989:	
	
l14508:	
;Car_demo.c: 247: else if(Circle_Mode == 3)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Circle_Mode),w
	xorlw	03h
	skipz
	goto	u6291
	goto	u6290
u6291:
	goto	l14428
u6290:
	line	249
	
l14510:	
;Car_demo.c: 248: {
;Car_demo.c: 249: if(Start_PD() == -99)
	fcall	_Start_PD
	movlw	high(-99)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(1+(?_Start_PD)),w
	skipz
	goto	u6305
	movlw	low(-99)
	xorwf	(0+(?_Start_PD)),w
u6305:

	skipz
	goto	u6301
	goto	u6300
u6301:
	goto	l14514
u6300:
	line	251
	
l14512:	
;Car_demo.c: 250: {
;Car_demo.c: 251: Start_Find_flag = 1;
	clrf	(_Start_Find_flag)
	bsf	status,0
	rlf	(_Start_Find_flag),f
	line	252
;Car_demo.c: 252: Stop_Flag=1;
	clrf	(_Stop_Flag)
	bsf	status,0
	rlf	(_Stop_Flag),f
	goto	l14514
	line	253
	
l9999:	
	line	255
	
l14514:	
;Car_demo.c: 253: }
;Car_demo.c: 255: if(Stop_Flag == 1)
	movf	(_Stop_Flag),w
	xorlw	01h
	skipz
	goto	u6311
	goto	u6310
u6311:
	goto	l14518
u6310:
	line	257
	
l14516:	
;Car_demo.c: 256: {
;Car_demo.c: 257: Motor_Speed_Set(0,0);
	movlw	low(0)
	movwf	(?_Motor_Speed_Set)
	movlw	high(0)
	movwf	((?_Motor_Speed_Set))+1
	movlw	low(0)
	movwf	0+(?_Motor_Speed_Set)+02h
	movlw	high(0)
	movwf	(0+(?_Motor_Speed_Set)+02h)+1
	fcall	_Motor_Speed_Set
	line	258
;Car_demo.c: 258: }
	goto	l14428
	line	259
	
l10000:	
	line	261
	
l14518:	
;Car_demo.c: 259: else
;Car_demo.c: 260: {
;Car_demo.c: 261: Turn_PWM = Trace_PID();
	fcall	_Trace_PID
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_Trace_PID)),w
	clrf	(_Turn_PWM+1)
	addwf	(_Turn_PWM+1)
	movf	(0+(?_Trace_PID)),w
	clrf	(_Turn_PWM)
	addwf	(_Turn_PWM)

	line	262
	
l14520:	
;Car_demo.c: 262: Speed_left = 40 - Turn_PWM;
	decf	(_Turn_PWM),w
	xorlw	0ffh
	addlw	028h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_Speed_left)
	line	263
	
l14522:	
;Car_demo.c: 263: Speed_right = 40 + Turn_PWM;
	movf	(_Turn_PWM),w
	addlw	028h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_Speed_right)
	line	264
	
l14524:	
;Car_demo.c: 264: Motor_Speed_Set(Speed_left,Speed_right);
	movf	(_Speed_left),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	clrf	(??_main+0)^080h+0+1
	movf	0+(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Motor_Speed_Set)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Motor_Speed_Set+1)
	movf	(_Speed_right),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+2)^080h+0
	clrf	(??_main+2)^080h+0+1
	movf	0+(??_main+2)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?_Motor_Speed_Set)+02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(??_main+2)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?_Motor_Speed_Set)+02h
	fcall	_Motor_Speed_Set
	goto	l14428
	line	265
	
l10001:	
	goto	l14428
	line	266
	
l9998:	
	goto	l14428
	line	267
	
l9997:	
	goto	l14428
	
l9988:	
	goto	l14428
	
l9982:	
	goto	l14428
	
l10002:	
	line	162
	goto	l14428
	
l10003:	
	line	268
	
l10004:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_Trace_PID
psect	text994,local,class=CODE,delta=2
global __ptext994
__ptext994:

;; *************** function _Trace_PID *****************
;; Defined at:
;;		line 21 in file "D:\6_pic_project\00_Design_Flow_Car\Driver\pid.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2   57[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       8       0       0       0
;;      Totals:         0      10       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___awtoft
;;		___ftmul
;;		___wmul
;;		___ftadd
;;		___fttol
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text994
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\pid.c"
	line	21
	global	__size_of_Trace_PID
	__size_of_Trace_PID	equ	__end_of_Trace_PID-_Trace_PID
	
_Trace_PID:	
	opt	stack 4
; Regs used in _Trace_PID: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	22
	
l14362:	
;pid.c: 22: Trace_Byte = (RC0<<7|RC3<<6|RE0<<5|RE1<<4|RE2<<3|RA4<<2|RC4<<1|RC5);
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(61/8),(61)&7
	movlw	1
	movwf	(??_Trace_PID+0)+0
	movlw	0
	btfsc	(60/8),(60)&7
	movlw	1
	movwf	(??_Trace_PID+1)+0
	movlw	01h
u6105:
	clrc
	rlf	(??_Trace_PID+1)+0,f
	addlw	-1
	skipz
	goto	u6105
	movlw	0
	btfsc	(44/8),(44)&7
	movlw	1
	movwf	(??_Trace_PID+2)+0
	movlw	02h
u6115:
	clrc
	rlf	(??_Trace_PID+2)+0,f
	addlw	-1
	skipz
	goto	u6115
	movlw	0
	btfsc	(74/8),(74)&7
	movlw	1
	movwf	(??_Trace_PID+3)+0
	movlw	03h
u6125:
	clrc
	rlf	(??_Trace_PID+3)+0,f
	addlw	-1
	skipz
	goto	u6125
	movlw	0
	btfsc	(73/8),(73)&7
	movlw	1
	movwf	(??_Trace_PID+4)+0
	movlw	04h
u6135:
	clrc
	rlf	(??_Trace_PID+4)+0,f
	addlw	-1
	skipz
	goto	u6135
	movlw	0
	btfsc	(72/8),(72)&7
	movlw	1
	movwf	(??_Trace_PID+5)+0
	movlw	05h
u6145:
	clrc
	rlf	(??_Trace_PID+5)+0,f
	addlw	-1
	skipz
	goto	u6145
	movlw	0
	btfsc	(59/8),(59)&7
	movlw	1
	movwf	(??_Trace_PID+6)+0
	movlw	06h
u6155:
	clrc
	rlf	(??_Trace_PID+6)+0,f
	addlw	-1
	skipz
	goto	u6155
	movlw	0
	btfsc	(56/8),(56)&7
	movlw	(1 << (07h))
	iorwf	0+(??_Trace_PID+6)+0,w
	iorwf	0+(??_Trace_PID+5)+0,w
	iorwf	0+(??_Trace_PID+4)+0,w
	iorwf	0+(??_Trace_PID+3)+0,w
	iorwf	0+(??_Trace_PID+2)+0,w
	iorwf	0+(??_Trace_PID+1)+0,w
	iorwf	(??_Trace_PID+0)+0,w
	movwf	(??_Trace_PID+7)+0
	movf	(??_Trace_PID+7)+0,w
	movwf	(_Trace_Byte)
	line	24
;pid.c: 24: switch(Trace_Byte)
	goto	l14396
	line	27
;pid.c: 25: {
;pid.c: 27: case 0B11100111:
	
l8454:	
	line	28
	
l14364:	
;pid.c: 28: turn_err=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_turn_err)^080h
	clrf	(_turn_err+1)^080h
	line	29
;pid.c: 29: break;
	goto	l14398
	line	30
;pid.c: 30: case 0B11110111:
	
l8456:	
	line	31
	
l14366:	
;pid.c: 31: turn_err=-1;
	movlw	low(-1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_turn_err)^080h
	movlw	high(-1)
	movwf	((_turn_err)^080h)+1
	line	32
;pid.c: 32: break;
	goto	l14398
	line	33
;pid.c: 33: case 0B11101111:
	
l8457:	
	line	34
	
l14368:	
;pid.c: 34: turn_err=1;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_turn_err)^080h
	movlw	high(01h)
	movwf	((_turn_err)^080h)+1
	line	35
;pid.c: 35: break;
	goto	l14398
	line	37
;pid.c: 37: case 0B11001111:
	
l8458:	
	line	38
	
l14370:	
;pid.c: 38: turn_err=2;
	movlw	low(02h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_turn_err)^080h
	movlw	high(02h)
	movwf	((_turn_err)^080h)+1
	line	39
;pid.c: 39: break;
	goto	l14398
	line	40
;pid.c: 40: case 0B11011111:
	
l8459:	
	line	41
	
l14372:	
;pid.c: 41: turn_err=3;
	movlw	low(03h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_turn_err)^080h
	movlw	high(03h)
	movwf	((_turn_err)^080h)+1
	line	42
;pid.c: 42: break;
	goto	l14398
	line	43
;pid.c: 43: case 0B10011111:
	
l8460:	
	line	44
	
l14374:	
;pid.c: 44: turn_err=4;
	movlw	low(04h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_turn_err)^080h
	movlw	high(04h)
	movwf	((_turn_err)^080h)+1
	line	45
;pid.c: 45: break;
	goto	l14398
	line	46
;pid.c: 46: case 0B10111111:
	
l8461:	
	line	47
	
l14376:	
;pid.c: 47: turn_err=5;
	movlw	low(05h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_turn_err)^080h
	movlw	high(05h)
	movwf	((_turn_err)^080h)+1
	line	48
;pid.c: 48: break;
	goto	l14398
	line	49
;pid.c: 49: case 0B00111111:
	
l8462:	
	line	50
	
l14378:	
;pid.c: 50: turn_err=6;
	movlw	low(06h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_turn_err)^080h
	movlw	high(06h)
	movwf	((_turn_err)^080h)+1
	line	51
;pid.c: 51: break;
	goto	l14398
	line	52
;pid.c: 52: case 0B01111111:
	
l8463:	
	line	53
	
l14380:	
;pid.c: 53: turn_err=7;
	movlw	low(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_turn_err)^080h
	movlw	high(07h)
	movwf	((_turn_err)^080h)+1
	line	54
;pid.c: 54: break;
	goto	l14398
	line	57
;pid.c: 57: case 0B11110011:
	
l8464:	
	line	58
	
l14382:	
;pid.c: 58: turn_err=-2;
	movlw	low(-2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_turn_err)^080h
	movlw	high(-2)
	movwf	((_turn_err)^080h)+1
	line	59
;pid.c: 59: break;
	goto	l14398
	line	60
;pid.c: 60: case 0B11111011:
	
l8465:	
	line	61
	
l14384:	
;pid.c: 61: turn_err=-3;
	movlw	low(-3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_turn_err)^080h
	movlw	high(-3)
	movwf	((_turn_err)^080h)+1
	line	62
;pid.c: 62: break;
	goto	l14398
	line	63
;pid.c: 63: case 0B11111001:
	
l8466:	
	line	64
	
l14386:	
;pid.c: 64: turn_err=-4;
	movlw	low(-4)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_turn_err)^080h
	movlw	high(-4)
	movwf	((_turn_err)^080h)+1
	line	65
;pid.c: 65: break;
	goto	l14398
	line	66
;pid.c: 66: case 0B11111101:
	
l8467:	
	line	67
	
l14388:	
;pid.c: 67: turn_err=-5;
	movlw	low(-5)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_turn_err)^080h
	movlw	high(-5)
	movwf	((_turn_err)^080h)+1
	line	68
;pid.c: 68: break;
	goto	l14398
	line	69
;pid.c: 69: case 0B11111100:
	
l8468:	
	line	70
	
l14390:	
;pid.c: 70: turn_err=-6;
	movlw	low(-6)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_turn_err)^080h
	movlw	high(-6)
	movwf	((_turn_err)^080h)+1
	line	71
;pid.c: 71: break;
	goto	l14398
	line	72
;pid.c: 72: case 0B11111110:
	
l8469:	
	line	73
	
l14392:	
;pid.c: 73: turn_err=-7;
	movlw	low(-7)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_turn_err)^080h
	movlw	high(-7)
	movwf	((_turn_err)^080h)+1
	line	74
;pid.c: 74: break;
	goto	l14398
	line	75
	
l14394:	
;pid.c: 75: }
	goto	l14398
	line	24
	
l8453:	
	
l14396:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(_Trace_Byte),w
	; Switch size 1, requested type "space"
; Number of cases is 15, Range of values is 63 to 254
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           46    24 (average)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	63^0	; case 63
	skipnz
	goto	l14378
	xorlw	127^63	; case 127
	skipnz
	goto	l14380
	xorlw	159^127	; case 159
	skipnz
	goto	l14374
	xorlw	191^159	; case 191
	skipnz
	goto	l14376
	xorlw	207^191	; case 207
	skipnz
	goto	l14370
	xorlw	223^207	; case 223
	skipnz
	goto	l14372
	xorlw	231^223	; case 231
	skipnz
	goto	l14364
	xorlw	239^231	; case 239
	skipnz
	goto	l14368
	xorlw	243^239	; case 243
	skipnz
	goto	l14382
	xorlw	247^243	; case 247
	skipnz
	goto	l14366
	xorlw	249^247	; case 249
	skipnz
	goto	l14386
	xorlw	251^249	; case 251
	skipnz
	goto	l14384
	xorlw	252^251	; case 252
	skipnz
	goto	l14390
	xorlw	253^252	; case 253
	skipnz
	goto	l14388
	xorlw	254^253	; case 254
	skipnz
	goto	l14392
	goto	l14398
	opt asmopt_on

	line	75
	
l8455:	
	line	77
	
l14398:	
;pid.c: 77: err_difference= turn_err - last_err;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	comf	(_last_err)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Trace_PID+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	comf	(_last_err+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??_Trace_PID+0)+0+1)
	incf	(??_Trace_PID+0)+0,f
	skipnz
	incf	((??_Trace_PID+0)+0+1),f
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_turn_err)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	0+(??_Trace_PID+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_err_difference)^080h
	movf	(_turn_err+1)^080h,w
	skipnc
	incf	(_turn_err+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	1+(??_Trace_PID+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	1+(_err_difference)^080h
	line	79
;pid.c: 79: last_err= turn_err;
	movf	(_turn_err+1)^080h,w
	clrf	(_last_err+1)^080h
	addwf	(_last_err+1)^080h
	movf	(_turn_err)^080h,w
	clrf	(_last_err)^080h
	addwf	(_last_err)^080h

	line	81
	
l14400:	
;pid.c: 81: return (int)(turn_err*Kp + err_difference*Kd);
	movf	(_turn_err+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awtoft+1)
	addwf	(?___awtoft+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_turn_err)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awtoft)
	addwf	(?___awtoft)

	fcall	___awtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awtoft)),w
	movwf	0+(?___ftmul)+03h
	movf	(1+(?___awtoft)),w
	movwf	1+(?___ftmul)+03h
	movf	(2+(?___awtoft)),w
	movwf	2+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_Kp)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_Kp+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_Kp+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_Kd+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?___wmul)+02h
	addwf	1+(?___wmul)+02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_Kd)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(?___wmul)+02h
	addwf	0+(?___wmul)+02h

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_err_difference+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_err_difference)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___wmul)
	addwf	(?___wmul)

	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___wmul)),w
	clrf	(?___awtoft+1)
	addwf	(?___awtoft+1)
	movf	(0+(?___wmul)),w
	clrf	(?___awtoft)
	addwf	(?___awtoft)

	fcall	___awtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awtoft)),w
	movwf	(?___ftadd)
	movf	(1+(?___awtoft)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___awtoft)),w
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	clrf	(?_Trace_PID+1)
	addwf	(?_Trace_PID+1)
	movf	0+(((0+(?___fttol)))),w
	clrf	(?_Trace_PID)
	addwf	(?_Trace_PID)

	goto	l8470
	
l14402:	
	line	82
	
l8470:	
	return
	opt stack 0
GLOBAL	__end_of_Trace_PID
	__end_of_Trace_PID:
;; =============== function _Trace_PID ends ============

	signat	_Trace_PID,90
	global	_LCD1602_WriteString
psect	text995,local,class=CODE,delta=2
global __ptext995
__ptext995:

;; *************** function _LCD1602_WriteString *****************
;; Defined at:
;;		line 84 in file "D:\6_pic_project\00_Design_Flow_Car\Driver\LCD1602.c"
;; Parameters:    Size  Location     Type
;;  row             1    wreg     unsigned char 
;;  column          1    3[BANK0 ] unsigned char 
;;  String          1    4[BANK0 ] PTR unsigned char 
;;		 -> STR_3(7), STR_2(6), 
;; Auto vars:     Size  Location     Type
;;  row             1    7[BANK0 ] unsigned char 
;;  Location        1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_LCD1602_WriteCommand
;;		_LCD1602_WriteData
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text995
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\LCD1602.c"
	line	84
	global	__size_of_LCD1602_WriteString
	__size_of_LCD1602_WriteString	equ	__end_of_LCD1602_WriteString-_LCD1602_WriteString
	
_LCD1602_WriteString:	
	opt	stack 4
; Regs used in _LCD1602_WriteString: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;LCD1602_WriteString@row stored from wreg
	line	86
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD1602_WriteString@row)
	
l14346:	
;LCD1602.c: 85: unsigned char Location;
;LCD1602.c: 86: if(row == 1)
	movf	(LCD1602_WriteString@row),w
	xorlw	01h
	skipz
	goto	u6071
	goto	u6070
u6071:
	goto	l14350
u6070:
	line	88
	
l14348:	
;LCD1602.c: 87: {
;LCD1602.c: 88: Location = 0x80 + column;
	movf	(LCD1602_WriteString@column),w
	addlw	080h
	movwf	(??_LCD1602_WriteString+0)+0
	movf	(??_LCD1602_WriteString+0)+0,w
	movwf	(LCD1602_WriteString@Location)
	line	89
;LCD1602.c: 89: }
	goto	l14354
	line	90
	
l705:	
	
l14350:	
;LCD1602.c: 90: else if(row == 2)
	movf	(LCD1602_WriteString@row),w
	xorlw	02h
	skipz
	goto	u6081
	goto	u6080
u6081:
	goto	l14354
u6080:
	line	92
	
l14352:	
;LCD1602.c: 91: {
;LCD1602.c: 92: Location = 0xC0 + column;
	movf	(LCD1602_WriteString@column),w
	addlw	0C0h
	movwf	(??_LCD1602_WriteString+0)+0
	movf	(??_LCD1602_WriteString+0)+0,w
	movwf	(LCD1602_WriteString@Location)
	goto	l14354
	line	93
	
l707:	
	goto	l14354
	line	94
	
l706:	
	
l14354:	
;LCD1602.c: 93: }
;LCD1602.c: 94: LCD1602_WriteCommand(Location);
	movf	(LCD1602_WriteString@Location),w
	fcall	_LCD1602_WriteCommand
	line	97
;LCD1602.c: 97: while(*String != '\0')
	goto	l14360
	
l709:	
	line	99
	
l14356:	
;LCD1602.c: 98: {
;LCD1602.c: 99: LCD1602_WriteData(*String++);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCD1602_WriteString@String),w
	movwf	fsr0
	fcall	stringdir
	fcall	_LCD1602_WriteData
	
l14358:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCD1602_WriteString+0)+0
	movf	(??_LCD1602_WriteString+0)+0,w
	addwf	(LCD1602_WriteString@String),f
	goto	l14360
	line	100
	
l708:	
	line	97
	
l14360:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCD1602_WriteString@String),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u6091
	goto	u6090
u6091:
	goto	l14356
u6090:
	goto	l711
	
l710:	
	line	101
	
l711:	
	return
	opt stack 0
GLOBAL	__end_of_LCD1602_WriteString
	__end_of_LCD1602_WriteString:
;; =============== function _LCD1602_WriteString ends ============

	signat	_LCD1602_WriteString,12408
	global	_LCD1602_Init
psect	text996,local,class=CODE,delta=2
global __ptext996
__ptext996:

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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_LCD1602_Delay
;;		_LCD1602_WriteCommand
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text996
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\LCD1602.c"
	line	45
	global	__size_of_LCD1602_Init
	__size_of_LCD1602_Init	equ	__end_of_LCD1602_Init-_LCD1602_Init
	
_LCD1602_Init:	
	opt	stack 4
; Regs used in _LCD1602_Init: [wreg+status,2+status,0+pclath+cstack]
	line	46
	
l14332:	
;LCD1602.c: 46: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	47
	
l14334:	
;LCD1602.c: 47: LCD1602_Delay();
	fcall	_LCD1602_Delay
	line	48
	
l14336:	
;LCD1602.c: 48: LCD1602_WriteCommand(0x01);
	movlw	(01h)
	fcall	_LCD1602_WriteCommand
	line	49
	
l14338:	
;LCD1602.c: 49: LCD1602_WriteCommand(0x38);
	movlw	(038h)
	fcall	_LCD1602_WriteCommand
	line	50
	
l14340:	
;LCD1602.c: 50: LCD1602_WriteCommand(0x0C);
	movlw	(0Ch)
	fcall	_LCD1602_WriteCommand
	line	51
	
l14342:	
;LCD1602.c: 51: LCD1602_WriteCommand(0x06);
	movlw	(06h)
	fcall	_LCD1602_WriteCommand
	line	52
	
l14344:	
;LCD1602.c: 52: LCD1602_WriteCommand(0x80);
	movlw	(080h)
	fcall	_LCD1602_WriteCommand
	line	53
	
l696:	
	return
	opt stack 0
GLOBAL	__end_of_LCD1602_Init
	__end_of_LCD1602_Init:
;; =============== function _LCD1602_Init ends ============

	signat	_LCD1602_Init,88
	global	___awtoft
psect	text997,local,class=CODE,delta=2
global __ptext997
__ptext997:

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 33 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2   22[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   27[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   22[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_Trace_PID
;; This function uses a non-reentrant model
;;
psect	text997
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt	stack 4
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l14324:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awtoft@sign)
	line	37
	btfss	(___awtoft@c+1),7
	goto	u6061
	goto	u6060
u6061:
	goto	l14328
u6060:
	line	38
	
l14326:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	clrf	(___awtoft@sign)
	bsf	status,0
	rlf	(___awtoft@sign),f
	goto	l14328
	line	40
	
l10842:	
	line	41
	
l14328:	
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___awtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___awtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___awtoft+2)
	goto	l10843
	
l14330:	
	line	42
	
l10843:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
;; =============== function ___awtoft ends ============

	signat	___awtoft,4219
	global	___ftmul
psect	text998,local,class=CODE,delta=2
global __ptext998
__ptext998:

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   28[BANK0 ] float 
;;  f2              3   31[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   39[BANK0 ] unsigned um
;;  sign            1   43[BANK0 ] unsigned char 
;;  cntr            1   42[BANK0 ] unsigned char 
;;  exp             1   38[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   28[BANK0 ] float 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_Trace_PID
;;		_csb
;; This function uses a non-reentrant model
;;
psect	text998
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 4
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l14274:	
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
	goto	u5921
	goto	u5920
u5921:
	goto	l14280
u5920:
	line	57
	
l14276:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l10805
	
l14278:	
	goto	l10805
	
l10804:	
	line	58
	
l14280:	
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
	goto	u5931
	goto	u5930
u5931:
	goto	l14286
u5930:
	line	59
	
l14282:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l10805
	
l14284:	
	goto	l10805
	
l10806:	
	line	60
	
l14286:	
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
u5945:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u5940:
	addlw	-1
	skipz
	goto	u5945
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
u5955:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u5950:
	addlw	-1
	skipz
	goto	u5955
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
	
l14288:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l14290:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l14292:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l14294:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	69
	
l14296:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l14298
	line	70
	
l10807:	
	line	71
	
l14298:	
	btfss	(___ftmul@f1),(0)&7
	goto	u5961
	goto	u5960
u5961:
	goto	l14302
u5960:
	line	72
	
l14300:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u5971
	addwf	(___ftmul@f3_as_product+1),f
u5971:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u5972
	addwf	(___ftmul@f3_as_product+2),f
u5972:

	goto	l14302
	
l10808:	
	line	73
	
l14302:	
	movlw	01h
u5985:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u5985

	line	74
	
l14304:	
	movlw	01h
u5995:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u5995
	line	75
	
l14306:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u6001
	goto	u6000
u6001:
	goto	l14298
u6000:
	goto	l14308
	
l10809:	
	line	76
	
l14308:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l14310
	line	77
	
l10810:	
	line	78
	
l14310:	
	btfss	(___ftmul@f1),(0)&7
	goto	u6011
	goto	u6010
u6011:
	goto	l14314
u6010:
	line	79
	
l14312:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u6021
	addwf	(___ftmul@f3_as_product+1),f
u6021:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u6022
	addwf	(___ftmul@f3_as_product+2),f
u6022:

	goto	l14314
	
l10811:	
	line	80
	
l14314:	
	movlw	01h
u6035:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u6035

	line	81
	
l14316:	
	movlw	01h
u6045:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u6045

	line	82
	
l14318:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u6051
	goto	u6050
u6051:
	goto	l14310
u6050:
	goto	l14320
	
l10812:	
	line	83
	
l14320:	
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	goto	l10805
	
l14322:	
	line	84
	
l10805:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftadd
psect	text999,local,class=CODE,delta=2
global __ptext999
__ptext999:

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 87 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   44[BANK0 ] float 
;;  f2              3   47[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   56[BANK0 ] unsigned char 
;;  exp2            1   55[BANK0 ] unsigned char 
;;  sign            1   54[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   44[BANK0 ] float 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_Trace_PID
;;		___ftsub
;; This function uses a non-reentrant model
;;
psect	text999
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
	opt	stack 4
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l14204:	
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
	
l14206:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u5680
	goto	l14212
u5680:
	
l14208:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u5691
	goto	u5690
u5691:
	goto	l14216
u5690:
	
l14210:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u5701
	goto	u5700
u5701:
	goto	l14216
u5700:
	goto	l14212
	
l10752:	
	line	93
	
l14212:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l10753
	
l14214:	
	goto	l10753
	
l10750:	
	line	94
	
l14216:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u5710
	goto	l10756
u5710:
	
l14218:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u5721
	goto	u5720
u5721:
	goto	l14222
u5720:
	
l14220:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u5731
	goto	u5730
u5731:
	goto	l14222
u5730:
	
l10756:	
	line	95
	goto	l10753
	
l10754:	
	line	96
	
l14222:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l14224:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u5741
	goto	u5740
u5741:
	goto	l10757
u5740:
	line	98
	
l14226:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l10757:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u5751
	goto	u5750
u5751:
	goto	l10758
u5750:
	line	100
	
l14228:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l10758:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l14230:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l14232:	
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
	goto	u5761
	goto	u5760
u5761:
	goto	l14244
u5760:
	goto	l14234
	line	109
	
l10760:	
	line	110
	
l14234:	
	movlw	01h
u5775:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u5775
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
l14236:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u5781
	goto	u5780
u5781:
	goto	l14242
u5780:
	
l14238:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u5791
	goto	u5790
u5791:
	goto	l14234
u5790:
	goto	l14242
	
l10762:	
	goto	l14242
	
l10763:	
	line	113
	goto	l14242
	
l10765:	
	line	114
	
l14240:	
	movlw	01h
u5805:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u5805

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	l14242
	line	116
	
l10764:	
	line	113
	
l14242:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u5811
	goto	u5810
u5811:
	goto	l14240
u5810:
	goto	l10767
	
l10766:	
	line	117
	goto	l10767
	
l10759:	
	
l14244:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u5821
	goto	u5820
u5821:
	goto	l10767
u5820:
	goto	l14246
	line	120
	
l10769:	
	line	121
	
l14246:	
	movlw	01h
u5835:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u5835
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
l14248:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u5841
	goto	u5840
u5841:
	goto	l14254
u5840:
	
l14250:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u5851
	goto	u5850
u5851:
	goto	l14246
u5850:
	goto	l14254
	
l10771:	
	goto	l14254
	
l10772:	
	line	124
	goto	l14254
	
l10774:	
	line	125
	
l14252:	
	movlw	01h
u5865:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u5865

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	l14254
	line	127
	
l10773:	
	line	124
	
l14254:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u5871
	goto	u5870
u5871:
	goto	l14252
u5870:
	goto	l10767
	
l10775:	
	goto	l10767
	line	128
	
l10768:	
	line	129
	
l10767:	
	btfss	(___ftadd@sign),(7)&7
	goto	u5881
	goto	u5880
u5881:
	goto	l14258
u5880:
	line	131
	
l14256:	
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
	goto	l14258
	line	133
	
l10776:	
	line	134
	
l14258:	
	btfss	(___ftadd@sign),(6)&7
	goto	u5891
	goto	u5890
u5891:
	goto	l14262
u5890:
	line	136
	
l14260:	
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
	goto	l14262
	line	138
	
l10777:	
	line	139
	
l14262:	
	clrf	(___ftadd@sign)
	line	140
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u5901
	addwf	(___ftadd@f2+1),f
u5901:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u5902
	addwf	(___ftadd@f2+2),f
u5902:

	line	141
	
l14264:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u5911
	goto	u5910
u5911:
	goto	l14270
u5910:
	line	142
	
l14266:	
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
	
l14268:	
	clrf	(___ftadd@sign)
	bsf	status,0
	rlf	(___ftadd@sign),f
	goto	l14270
	line	145
	
l10778:	
	line	146
	
l14270:	
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	goto	l10753
	
l14272:	
	line	148
	
l10753:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
;; =============== function ___ftadd ends ============

	signat	___ftadd,8315
	global	_Delay_ms
psect	text1000,local,class=CODE,delta=2
global __ptext1000
__ptext1000:

;; *************** function _Delay_ms *****************
;; Defined at:
;;		line 4 in file "D:\6_pic_project\00_Design_Flow_Car\System\Delay.c"
;; Parameters:    Size  Location     Type
;;  x               2    0[BANK0 ] unsigned int 
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
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1000
	file	"D:\6_pic_project\00_Design_Flow_Car\System\Delay.c"
	line	4
	global	__size_of_Delay_ms
	__size_of_Delay_ms	equ	__end_of_Delay_ms-_Delay_ms
	
_Delay_ms:	
	opt	stack 6
; Regs used in _Delay_ms: [wreg]
	line	5
	
l14200:	
;Delay.c: 5: while(x--)
	goto	l14202
	
l5687:	
	line	7
;Delay.c: 6: {
;Delay.c: 7: _nop();
	nop
	goto	l14202
	line	8
	
l5686:	
	line	5
	
l14202:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(Delay_ms@x),f
	movlw	high(01h)
	skipc
	decf	(Delay_ms@x+1),f
	subwf	(Delay_ms@x+1),f
	movlw	high(0FFFFh)
	xorwf	((Delay_ms@x+1)),w
	skipz
	goto	u5675
	movlw	low(0FFFFh)
	xorwf	((Delay_ms@x)),w
u5675:

	skipz
	goto	u5671
	goto	u5670
u5671:
	goto	l5687
u5670:
	goto	l5689
	
l5688:	
	line	9
	
l5689:	
	return
	opt stack 0
GLOBAL	__end_of_Delay_ms
	__end_of_Delay_ms:
;; =============== function _Delay_ms ends ============

	signat	_Delay_ms,4216
	global	_printf
psect	text1001,local,class=CODE,delta=2
global __ptext1001
__ptext1001:

;; *************** function _printf *****************
;; Defined at:
;;		line 461 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  f               1    wreg     PTR const unsigned char 
;;		 -> STR_4(18), STR_1(3), 
;; Auto vars:     Size  Location     Type
;;  f               1    6[BANK0 ] PTR const unsigned char 
;;		 -> STR_4(18), STR_1(3), 
;;  _val            4    0        struct .
;;  c               1    7[BANK0 ] char 
;;  ap              1    5[BANK0 ] PTR void [1]
;;		 -> ?_printf(2), 
;;  flag            1    4[BANK0 ] unsigned char 
;;  prec            1    0        char 
;; Return value:  Size  Location     Type
;;                  2    1[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_putch
;; This function is called by:
;;		_main
;;		_Serial_PrintString
;; This function uses a non-reentrant model
;;
psect	text1001
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\doprnt.c"
	line	461
	global	__size_of_printf
	__size_of_printf	equ	__end_of_printf-_printf
	
_printf:	
	opt	stack 5
; Regs used in _printf: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;printf@f stored from wreg
	line	537
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printf@f)
	
l14182:	
	movlw	(?_printf)&0ffh
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@ap)
	line	540
	goto	l14198
	
l10014:	
	line	542
	
l14184:	
	movf	(printf@c),w
	xorlw	025h
	skipnz
	goto	u5651
	goto	u5650
u5651:
	goto	l10015
u5650:
	line	545
	
l14186:	
	movf	(printf@c),w
	fcall	_putch
	line	546
	goto	l14198
	line	547
	
l10015:	
	line	552
	clrf	(printf@flag)
	line	638
	goto	l14196
	line	640
	
l10017:	
	line	641
	goto	l10023
	line	787
	
l10019:	
	line	802
	
l14188:	
	movf	(printf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@c)
	
l14190:	
	movlw	(02h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@ap),f
	goto	l14192
	line	805
	
l10020:	
	line	812
	
l14192:	
	movf	(printf@c),w
	fcall	_putch
	line	813
	goto	l14198
	line	825
	
l14194:	
	goto	l14198
	line	638
	
l10016:	
	
l14196:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(printf@f),f
	movlw	-01h
	addwf	(printf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(printf@c)
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 99
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; jumptable            260     6 (fixed)
; rangetable           104     6 (fixed)
; spacedrange          206     9 (fixed)
; locatedrange         100     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l10023
	xorlw	99^0	; case 99
	skipnz
	goto	l14188
	goto	l14192
	opt asmopt_on

	line	825
	
l10021:	
	goto	l14198
	line	1525
	
l10013:	
	line	540
	
l14198:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(printf@f),f
	movlw	-01h
	addwf	(printf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@c)
	movf	((printf@c)),f
	skipz
	goto	u5661
	goto	u5660
u5661:
	goto	l14184
u5660:
	goto	l10023
	
l10022:	
	goto	l10023
	line	1527
	
l10018:	
	line	1533
;	Return value of _printf is never used
	
l10023:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
;; =============== function _printf ends ============

	signat	_printf,602
	global	_LCD1602_WriteData
psect	text1002,local,class=CODE,delta=2
global __ptext1002
__ptext1002:

;; *************** function _LCD1602_WriteData *****************
;; Defined at:
;;		line 38 in file "D:\6_pic_project\00_Design_Flow_Car\Driver\LCD1602.c"
;; Parameters:    Size  Location     Type
;;  Data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Data            1    2[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_LCD1602_Delay
;; This function is called by:
;;		_LCD1602_WriteString
;;		_LCD1602_WriteChar
;;		_LCD1602_WriteNum
;;		_LCD1602_WriteLongNum
;; This function uses a non-reentrant model
;;
psect	text1002
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\LCD1602.c"
	line	38
	global	__size_of_LCD1602_WriteData
	__size_of_LCD1602_WriteData	equ	__end_of_LCD1602_WriteData-_LCD1602_WriteData
	
_LCD1602_WriteData:	
	opt	stack 4
; Regs used in _LCD1602_WriteData: [wreg+status,2+status,0+pclath+cstack]
;LCD1602_WriteData@Data stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD1602_WriteData@Data)
	line	39
	
l14170:	
;LCD1602.c: 39: PORTD=Data;
	movf	(LCD1602_WriteData@Data),w
	movwf	(8)	;volatile
	line	40
	
l14172:	
;LCD1602.c: 40: RA5=1;RA2=0;RA3=0;LCD1602_Delay();RA3=1;
	bsf	(45/8),(45)&7
	
l14174:	
	bcf	(42/8),(42)&7
	
l14176:	
	bcf	(43/8),(43)&7
	
l14178:	
	fcall	_LCD1602_Delay
	
l14180:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(43/8),(43)&7
	line	41
	
l693:	
	return
	opt stack 0
GLOBAL	__end_of_LCD1602_WriteData
	__end_of_LCD1602_WriteData:
;; =============== function _LCD1602_WriteData ends ============

	signat	_LCD1602_WriteData,4216
	global	_LCD1602_WriteCommand
psect	text1003,local,class=CODE,delta=2
global __ptext1003
__ptext1003:

;; *************** function _LCD1602_WriteCommand *****************
;; Defined at:
;;		line 26 in file "D:\6_pic_project\00_Design_Flow_Car\Driver\LCD1602.c"
;; Parameters:    Size  Location     Type
;;  Command         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Command         1    2[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_LCD1602_Delay
;; This function is called by:
;;		_LCD1602_Init
;;		_LCD1602_WriteString
;;		_LCD1602_WriteChar
;;		_LCD1602_WriteNum
;;		_LCD1602_WriteLongNum
;; This function uses a non-reentrant model
;;
psect	text1003
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\LCD1602.c"
	line	26
	global	__size_of_LCD1602_WriteCommand
	__size_of_LCD1602_WriteCommand	equ	__end_of_LCD1602_WriteCommand-_LCD1602_WriteCommand
	
_LCD1602_WriteCommand:	
	opt	stack 4
; Regs used in _LCD1602_WriteCommand: [wreg+status,2+status,0+pclath+cstack]
;LCD1602_WriteCommand@Command stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD1602_WriteCommand@Command)
	line	27
	
l14158:	
;LCD1602.c: 27: PORTD=Command;
	movf	(LCD1602_WriteCommand@Command),w
	movwf	(8)	;volatile
	line	28
	
l14160:	
;LCD1602.c: 28: RA5=0;RA2=0;RA3=0;LCD1602_Delay();RA3=1;
	bcf	(45/8),(45)&7
	
l14162:	
	bcf	(42/8),(42)&7
	
l14164:	
	bcf	(43/8),(43)&7
	
l14166:	
	fcall	_LCD1602_Delay
	
l14168:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(43/8),(43)&7
	line	29
	
l690:	
	return
	opt stack 0
GLOBAL	__end_of_LCD1602_WriteCommand
	__end_of_LCD1602_WriteCommand:
;; =============== function _LCD1602_WriteCommand ends ============

	signat	_LCD1602_WriteCommand,4216
	global	___fttol
psect	text1004,local,class=CODE,delta=2
global __ptext1004
__ptext1004:

;; *************** function ___fttol *****************
;; Defined at:
;;		line 45 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3    8[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   17[BANK0 ] unsigned long 
;;  exp1            1   21[BANK0 ] unsigned char 
;;  sign1           1   16[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    8[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      14       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Trace_PID
;; This function uses a non-reentrant model
;;
psect	text1004
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 5
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l13338:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___fttol@f1),w
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
	goto	u4261
	goto	u4260
u4261:
	goto	l13344
u4260:
	line	50
	
l13340:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l10816
	
l13342:	
	goto	l10816
	
l10815:	
	line	51
	
l13344:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u4275:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u4270:
	addlw	-1
	skipz
	goto	u4275
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l13346:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l13348:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l13350:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l13352:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l13354:	
	btfss	(___fttol@exp1),7
	goto	u4281
	goto	u4280
u4281:
	goto	l13364
u4280:
	line	57
	
l13356:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u4291
	goto	u4290
u4291:
	goto	l13362
u4290:
	line	58
	
l13358:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l10816
	
l13360:	
	goto	l10816
	
l10818:	
	goto	l13362
	line	59
	
l10819:	
	line	60
	
l13362:	
	movlw	01h
u4305:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u4305

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u4311
	goto	u4310
u4311:
	goto	l13362
u4310:
	goto	l13374
	
l10820:	
	line	62
	goto	l13374
	
l10817:	
	line	63
	
l13364:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u4321
	goto	u4320
u4321:
	goto	l13372
u4320:
	line	64
	
l13366:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l10816
	
l13368:	
	goto	l10816
	
l10822:	
	line	65
	goto	l13372
	
l10824:	
	line	66
	
l13370:	
	movlw	01h
	movwf	(??___fttol+0)+0
u4335:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u4335
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l13372
	line	68
	
l10823:	
	line	65
	
l13372:	
	movf	(___fttol@exp1),f
	skipz
	goto	u4341
	goto	u4340
u4341:
	goto	l13370
u4340:
	goto	l13374
	
l10825:	
	goto	l13374
	line	69
	
l10821:	
	line	70
	
l13374:	
	movf	(___fttol@sign1),w
	skipz
	goto	u4350
	goto	l13378
u4350:
	line	71
	
l13376:	
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
	goto	l13378
	
l10826:	
	line	72
	
l13378:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l10816
	
l13380:	
	line	73
	
l10816:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text1005,local,class=CODE,delta=2
global __ptext1005
__ptext1005:

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[BANK0 ] unsigned um
;;  exp             1    3[BANK0 ] unsigned char 
;;  sign            1    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       5       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
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
psect	text1005
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 4
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l14026:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftpack@exp),w
	skipz
	goto	u5390
	goto	l14030
u5390:
	
l14028:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u5401
	goto	u5400
u5401:
	goto	l14036
u5400:
	goto	l14030
	
l11040:	
	line	65
	
l14030:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l11041
	
l14032:	
	goto	l11041
	
l11038:	
	line	66
	goto	l14036
	
l11043:	
	line	67
	
l14034:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u5415:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u5415

	goto	l14036
	line	69
	
l11042:	
	line	66
	
l14036:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u5421
	goto	u5420
u5421:
	goto	l14034
u5420:
	goto	l11045
	
l11044:	
	line	70
	goto	l11045
	
l11046:	
	line	71
	
l14038:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l14040:	
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
	
l14042:	
	movlw	01h
u5435:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u5435

	line	74
	
l11045:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u5441
	goto	u5440
u5441:
	goto	l14038
u5440:
	goto	l14046
	
l11047:	
	line	75
	goto	l14046
	
l11049:	
	line	76
	
l14044:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u5455:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u5455
	goto	l14046
	line	78
	
l11048:	
	line	75
	
l14046:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u5461
	goto	u5460
u5461:
	goto	l14044
u5460:
	
l11050:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u5471
	goto	u5470
u5471:
	goto	l11051
u5470:
	line	80
	
l14048:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l11051:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l14050:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u5485:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u5480:
	addlw	-1
	skipz
	goto	u5485
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l14052:	
	movf	(___ftpack@sign),w
	skipz
	goto	u5490
	goto	l11052
u5490:
	line	84
	
l14054:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l11052:	
	line	85
	line	86
	
l11041:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	___wmul
psect	text1006,local,class=CODE,delta=2
global __ptext1006
__ptext1006:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[BANK0 ] unsigned int 
;;  multiplicand    2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Trace_PID
;; This function uses a non-reentrant model
;;
psect	text1006
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 5
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l14014:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l14016
	line	6
	
l10706:	
	line	7
	
l14016:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u5351
	goto	u5350
u5351:
	goto	l10707
u5350:
	line	8
	
l14018:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l10707:	
	line	9
	movlw	01h
	
u5365:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u5365
	line	10
	
l14020:	
	movlw	01h
	
u5375:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u5375
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u5381
	goto	u5380
u5381:
	goto	l14016
u5380:
	goto	l14022
	
l10708:	
	line	12
	
l14022:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l10709
	
l14024:	
	line	13
	
l10709:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_Start_PD
psect	text1007,local,class=CODE,delta=2
global __ptext1007
__ptext1007:

;; *************** function _Start_PD *****************
;; Defined at:
;;		line 106 in file "D:\6_pic_project\00_Design_Flow_Car\User\Car_demo\Car_demo.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Trace_Mode      1   10[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       8       0       0       0
;;      Totals:         0      11       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1007
	file	"D:\6_pic_project\00_Design_Flow_Car\User\Car_demo\Car_demo.c"
	line	106
	global	__size_of_Start_PD
	__size_of_Start_PD	equ	__end_of_Start_PD-_Start_PD
	
_Start_PD:	
	opt	stack 6
; Regs used in _Start_PD: [wreg-fsr0h+status,2+status,0]
	line	107
	
l13996:	
;Car_demo.c: 107: unsigned char Trace_Mode = (RC0<<7|RC3<<6|RE0<<5|RE1<<4|RE2<<3|RA4<<2|RC4<<1|RC5);
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(61/8),(61)&7
	movlw	1
	movwf	(??_Start_PD+0)+0
	movlw	0
	btfsc	(60/8),(60)&7
	movlw	1
	movwf	(??_Start_PD+1)+0
	movlw	01h
u5295:
	clrc
	rlf	(??_Start_PD+1)+0,f
	addlw	-1
	skipz
	goto	u5295
	movlw	0
	btfsc	(44/8),(44)&7
	movlw	1
	movwf	(??_Start_PD+2)+0
	movlw	02h
u5305:
	clrc
	rlf	(??_Start_PD+2)+0,f
	addlw	-1
	skipz
	goto	u5305
	movlw	0
	btfsc	(74/8),(74)&7
	movlw	1
	movwf	(??_Start_PD+3)+0
	movlw	03h
u5315:
	clrc
	rlf	(??_Start_PD+3)+0,f
	addlw	-1
	skipz
	goto	u5315
	movlw	0
	btfsc	(73/8),(73)&7
	movlw	1
	movwf	(??_Start_PD+4)+0
	movlw	04h
u5325:
	clrc
	rlf	(??_Start_PD+4)+0,f
	addlw	-1
	skipz
	goto	u5325
	movlw	0
	btfsc	(72/8),(72)&7
	movlw	1
	movwf	(??_Start_PD+5)+0
	movlw	05h
u5335:
	clrc
	rlf	(??_Start_PD+5)+0,f
	addlw	-1
	skipz
	goto	u5335
	movlw	0
	btfsc	(59/8),(59)&7
	movlw	1
	movwf	(??_Start_PD+6)+0
	movlw	06h
u5345:
	clrc
	rlf	(??_Start_PD+6)+0,f
	addlw	-1
	skipz
	goto	u5345
	movlw	0
	btfsc	(56/8),(56)&7
	movlw	(1 << (07h))
	iorwf	0+(??_Start_PD+6)+0,w
	iorwf	0+(??_Start_PD+5)+0,w
	iorwf	0+(??_Start_PD+4)+0,w
	iorwf	0+(??_Start_PD+3)+0,w
	iorwf	0+(??_Start_PD+2)+0,w
	iorwf	0+(??_Start_PD+1)+0,w
	iorwf	(??_Start_PD+0)+0,w
	movwf	(??_Start_PD+7)+0
	movf	(??_Start_PD+7)+0,w
	movwf	(Start_PD@Trace_Mode)
	line	108
;Car_demo.c: 108: switch(Trace_Mode)
	goto	l14012
	line	110
;Car_demo.c: 109: {
;Car_demo.c: 110: case 0B11000001:
	
l9963:	
	goto	l13998
	line	111
	
l9964:	
	goto	l13998
	line	112
	
l9965:	
	goto	l13998
	line	113
	
l9966:	
	line	114
	
l13998:	
;Car_demo.c: 111: case 0B10000011:
;Car_demo.c: 112: case 0B00000000:
;Car_demo.c: 113: case 0B10000001:
;Car_demo.c: 114: return -99;
	movlw	low(-99)
	movwf	(?_Start_PD)
	movlw	high(-99)
	movwf	((?_Start_PD))+1
	goto	l9967
	
l14000:	
	goto	l9967
	line	115
;Car_demo.c: 115: case 0B01111110:
	
l9968:	
	goto	l14002
	line	116
	
l9969:	
	goto	l14002
	line	117
	
l9970:	
	goto	l14002
	line	118
	
l9971:	
	goto	l14002
	line	119
	
l9972:	
	goto	l14002
	line	120
	
l9973:	
	line	121
	
l14002:	
;Car_demo.c: 116: case 0B01111100:
;Car_demo.c: 117: case 0B00111100:
;Car_demo.c: 118: case 0B00111110:
;Car_demo.c: 119: case 0B00111101:
;Car_demo.c: 120: case 0B10111101:
;Car_demo.c: 121: return -66;
	movlw	low(-66)
	movwf	(?_Start_PD)
	movlw	high(-66)
	movwf	((?_Start_PD))+1
	goto	l9967
	
l14004:	
	goto	l9967
	line	122
;Car_demo.c: 122: default:
	
l9974:	
	line	123
	
l14006:	
;Car_demo.c: 123: return 0;
	clrf	(?_Start_PD)
	clrf	(?_Start_PD+1)
	goto	l9967
	
l14008:	
	goto	l9967
	line	124
	
l14010:	
;Car_demo.c: 124: }
	goto	l9967
	line	108
	
l9962:	
	
l14012:	
	movf	(Start_PD@Trace_Mode),w
	; Switch size 1, requested type "space"
; Number of cases is 10, Range of values is 0 to 193
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           31    16 (average)
; jumptable            260     6 (fixed)
; rangetable           198     6 (fixed)
; spacedrange          394     9 (fixed)
; locatedrange         194     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l13998
	xorlw	60^0	; case 60
	skipnz
	goto	l14002
	xorlw	61^60	; case 61
	skipnz
	goto	l14002
	xorlw	62^61	; case 62
	skipnz
	goto	l14002
	xorlw	124^62	; case 124
	skipnz
	goto	l14002
	xorlw	126^124	; case 126
	skipnz
	goto	l14002
	xorlw	129^126	; case 129
	skipnz
	goto	l13998
	xorlw	131^129	; case 131
	skipnz
	goto	l13998
	xorlw	189^131	; case 189
	skipnz
	goto	l14002
	xorlw	193^189	; case 193
	skipnz
	goto	l13998
	goto	l14006
	opt asmopt_on

	line	124
	
l9975:	
	line	125
	
l9967:	
	return
	opt stack 0
GLOBAL	__end_of_Start_PD
	__end_of_Start_PD:
;; =============== function _Start_PD ends ============

	signat	_Start_PD,90
	global	_csb_init
psect	text1008,local,class=CODE,delta=2
global __ptext1008
__ptext1008:

;; *************** function _csb_init *****************
;; Defined at:
;;		line 22 in file "D:\6_pic_project\00_Design_Flow_Car\Driver\csb.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1008
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\csb.c"
	line	22
	global	__size_of_csb_init
	__size_of_csb_init	equ	__end_of_csb_init-_csb_init
	
_csb_init:	
	opt	stack 6
; Regs used in _csb_init: [wreg+status,2]
	line	23
	
l13952:	
;csb.c: 23: GIE=1;
	bsf	(95/8),(95)&7
	line	24
;csb.c: 24: PEIE=1;
	bsf	(94/8),(94)&7
	line	26
;csb.c: 26: TMR1IF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(96/8),(96)&7
	line	28
;csb.c: 28: TRISA1=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1065/8)^080h,(1065)&7
	line	29
;csb.c: 29: TRISA0=0;
	bcf	(1064/8)^080h,(1064)&7
	line	30
	
l13954:	
;csb.c: 30: ADCON1=7;TRISD=0;
	movlw	(07h)
	movwf	(159)^080h	;volatile
	
l13956:	
	clrf	(136)^080h	;volatile
	line	32
	
l13958:	
;csb.c: 32: RA0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7
	line	33
	
l13960:	
;csb.c: 33: RA1 = 1;
	bsf	(41/8),(41)&7
	line	35
	
l13962:	
;csb.c: 35: T1CON=0B00000000;
	clrf	(16)	;volatile
	line	36
	
l13964:	
;csb.c: 36: TMR1H=0x00;
	clrf	(15)	;volatile
	line	37
	
l13966:	
;csb.c: 37: TMR1L=0x00;
	clrf	(14)	;volatile
	line	38
	
l13968:	
;csb.c: 38: TMR1ON=0x00;
	bcf	(128/8),(128)&7
	line	39
	
l9167:	
	return
	opt stack 0
GLOBAL	__end_of_csb_init
	__end_of_csb_init:
;; =============== function _csb_init ends ============

	signat	_csb_init,88
	global	_Encoder_Init
psect	text1009,local,class=CODE,delta=2
global __ptext1009
__ptext1009:

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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1009
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\Encoder.c"
	line	4
	global	__size_of_Encoder_Init
	__size_of_Encoder_Init	equ	__end_of_Encoder_Init-_Encoder_Init
	
_Encoder_Init:	
	opt	stack 6
; Regs used in _Encoder_Init: [wreg]
	line	5
	
l13944:	
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
	
l13946:	
;Encoder.c: 12: OPTION_REG=0B01000111;
	movlw	(047h)
	movwf	(129)^080h	;volatile
	line	15
	
l13948:	
;Encoder.c: 15: T0IE=1;
	bsf	(93/8),(93)&7
	line	16
	
l13950:	
;Encoder.c: 16: T0IF=0;
	bcf	(90/8),(90)&7
	line	17
;Encoder.c: 17: TMR0=60;
	movlw	(03Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	line	18
	
l7756:	
	return
	opt stack 0
GLOBAL	__end_of_Encoder_Init
	__end_of_Encoder_Init:
;; =============== function _Encoder_Init ends ============

	signat	_Encoder_Init,88
	global	_Usart_Init
psect	text1010,local,class=CODE,delta=2
global __ptext1010
__ptext1010:

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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1010
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\Usart.c"
	line	39
	global	__size_of_Usart_Init
	__size_of_Usart_Init	equ	__end_of_Usart_Init-_Usart_Init
	
_Usart_Init:	
	opt	stack 6
; Regs used in _Usart_Init: [wreg]
	line	40
	
l13936:	
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
	
l13938:	
;Usart.c: 43: GIE=1;
	bsf	(95/8),(95)&7
	line	44
	
l13940:	
;Usart.c: 44: PEIE=1;
	bsf	(94/8),(94)&7
	line	45
	
l13942:	
;Usart.c: 45: RCIE=1;
	bsf	(1125/8)^080h,(1125)&7
	line	46
	
l4999:	
	return
	opt stack 0
GLOBAL	__end_of_Usart_Init
	__end_of_Usart_Init:
;; =============== function _Usart_Init ends ============

	signat	_Usart_Init,88
	global	_Usart_GPIO_Init
psect	text1011,local,class=CODE,delta=2
global __ptext1011
__ptext1011:

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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1011
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\Usart.c"
	line	28
	global	__size_of_Usart_GPIO_Init
	__size_of_Usart_GPIO_Init	equ	__end_of_Usart_GPIO_Init-_Usart_GPIO_Init
	
_Usart_GPIO_Init:	
	opt	stack 6
; Regs used in _Usart_GPIO_Init: []
	line	29
	
l13934:	
;Usart.c: 29: TRISC6=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1086/8)^080h,(1086)&7
	line	30
;Usart.c: 30: TRISC7=1;
	bsf	(1087/8)^080h,(1087)&7
	line	31
	
l4996:	
	return
	opt stack 0
GLOBAL	__end_of_Usart_GPIO_Init
	__end_of_Usart_GPIO_Init:
;; =============== function _Usart_GPIO_Init ends ============

	signat	_Usart_GPIO_Init,88
	global	_putch
psect	text1012,local,class=CODE,delta=2
global __ptext1012
__ptext1012:

;; *************** function _putch *****************
;; Defined at:
;;		line 13 in file "D:\6_pic_project\00_Design_Flow_Car\Driver\Usart.c"
;; Parameters:    Size  Location     Type
;;  ch              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ch              1    0[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text1012
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\Usart.c"
	line	13
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
	opt	stack 5
; Regs used in _putch: [wreg]
;putch@ch stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(putch@ch)
	line	14
	
l13924:	
;Usart.c: 14: TXREG=ch;
	movf	(putch@ch),w
	movwf	(25)	;volatile
	line	15
;Usart.c: 15: while(TRMT==0);
	goto	l4984
	
l4985:	
	
l4984:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1217/8)^080h,(1217)&7
	goto	u5231
	goto	u5230
u5231:
	goto	l4984
u5230:
	goto	l4987
	
l4986:	
	line	16
	
l4987:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
;; =============== function _putch ends ============

	signat	_putch,4216
	global	_Motor_Speed_Set
psect	text1013,local,class=CODE,delta=2
global __ptext1013
__ptext1013:

;; *************** function _Motor_Speed_Set *****************
;; Defined at:
;;		line 60 in file "D:\6_pic_project\00_Design_Flow_Car\Driver\Motor.c"
;; Parameters:    Size  Location     Type
;;  Speed1          2    0[BANK0 ] int 
;;  Speed2          2    2[BANK0 ] int 
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
;;      Params:         0       4       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1013
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\Motor.c"
	line	60
	global	__size_of_Motor_Speed_Set
	__size_of_Motor_Speed_Set	equ	__end_of_Motor_Speed_Set-_Motor_Speed_Set
	
_Motor_Speed_Set:	
	opt	stack 6
; Regs used in _Motor_Speed_Set: [wreg+status,2+status,0+btemp+1]
	line	61
	
l13908:	
;Motor.c: 61: if(Speed1 > 0 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Motor_Speed_Set@Speed1+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u5215
	movlw	low(01h)
	subwf	(Motor_Speed_Set@Speed1),w
u5215:

	skipc
	goto	u5211
	goto	u5210
u5211:
	goto	l3608
u5210:
	line	63
	
l13910:	
;Motor.c: 62: {
;Motor.c: 63: RB4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(52/8),(52)&7
	line	64
;Motor.c: 64: RB5 = 0;
	bcf	(53/8),(53)&7
	line	65
	
l13912:	
;Motor.c: 65: CCPR1L=(unsigned char)Speed1;
	movf	(Motor_Speed_Set@Speed1),w
	movwf	(21)	;volatile
	line	66
;Motor.c: 66: }
	goto	l13916
	line	67
	
l3608:	
	line	69
;Motor.c: 67: else
;Motor.c: 68: {
;Motor.c: 69: RB4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(52/8),(52)&7
	line	70
;Motor.c: 70: RB5 = 1;
	bsf	(53/8),(53)&7
	line	71
	
l13914:	
;Motor.c: 71: CCPR1L=(unsigned char)(-Speed1);
	decf	(Motor_Speed_Set@Speed1),w
	xorlw	0ffh
	movwf	(21)	;volatile
	goto	l13916
	line	72
	
l3609:	
	line	74
	
l13916:	
;Motor.c: 72: }
;Motor.c: 74: if(Speed2 >0 )
	movf	(Motor_Speed_Set@Speed2+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u5225
	movlw	low(01h)
	subwf	(Motor_Speed_Set@Speed2),w
u5225:

	skipc
	goto	u5221
	goto	u5220
u5221:
	goto	l3610
u5220:
	line	76
	
l13918:	
;Motor.c: 75: {
;Motor.c: 76: RB6 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(54/8),(54)&7
	line	77
;Motor.c: 77: RB7 = 0;
	bcf	(55/8),(55)&7
	line	78
	
l13920:	
;Motor.c: 78: CCPR2L=(unsigned char)Speed2;
	movf	(Motor_Speed_Set@Speed2),w
	movwf	(27)	;volatile
	line	79
;Motor.c: 79: }
	goto	l3612
	line	80
	
l3610:	
	line	82
;Motor.c: 80: else
;Motor.c: 81: {
;Motor.c: 82: RB6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(54/8),(54)&7
	line	83
;Motor.c: 83: RB7 = 1;
	bsf	(55/8),(55)&7
	line	84
	
l13922:	
;Motor.c: 84: CCPR2L=(unsigned char)(-Speed2);
	decf	(Motor_Speed_Set@Speed2),w
	xorlw	0ffh
	movwf	(27)	;volatile
	goto	l3612
	line	85
	
l3611:	
	line	86
	
l3612:	
	return
	opt stack 0
GLOBAL	__end_of_Motor_Speed_Set
	__end_of_Motor_Speed_Set:
;; =============== function _Motor_Speed_Set ends ============

	signat	_Motor_Speed_Set,8312
	global	_Motor_CCP_PWM_Init
psect	text1014,local,class=CODE,delta=2
global __ptext1014
__ptext1014:

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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1014
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\Motor.c"
	line	31
	global	__size_of_Motor_CCP_PWM_Init
	__size_of_Motor_CCP_PWM_Init	equ	__end_of_Motor_CCP_PWM_Init-_Motor_CCP_PWM_Init
	
_Motor_CCP_PWM_Init:	
	opt	stack 6
; Regs used in _Motor_CCP_PWM_Init: [wreg+status,2]
	line	33
	
l13900:	
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
	
l13902:	
;Motor.c: 42: T2CON=0;
	clrf	(18)	;volatile
	line	43
	
l13904:	
;Motor.c: 43: TMR2=0;
	clrf	(17)	;volatile
	line	44
	
l13906:	
;Motor.c: 44: TMR2ON=1;
	bsf	(146/8),(146)&7
	line	45
	
l3602:	
	return
	opt stack 0
GLOBAL	__end_of_Motor_CCP_PWM_Init
	__end_of_Motor_CCP_PWM_Init:
;; =============== function _Motor_CCP_PWM_Init ends ============

	signat	_Motor_CCP_PWM_Init,88
	global	_Motor_GPIO_Init
psect	text1015,local,class=CODE,delta=2
global __ptext1015
__ptext1015:

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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1015
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\Motor.c"
	line	21
	global	__size_of_Motor_GPIO_Init
	__size_of_Motor_GPIO_Init	equ	__end_of_Motor_GPIO_Init-_Motor_GPIO_Init
	
_Motor_GPIO_Init:	
	opt	stack 6
; Regs used in _Motor_GPIO_Init: []
	line	22
	
l13898:	
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
	
l3599:	
	return
	opt stack 0
GLOBAL	__end_of_Motor_GPIO_Init
	__end_of_Motor_GPIO_Init:
;; =============== function _Motor_GPIO_Init ends ============

	signat	_Motor_GPIO_Init,88
	global	_LCD1602_GPIO_Init
psect	text1016,local,class=CODE,delta=2
global __ptext1016
__ptext1016:

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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1016
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\LCD1602.c"
	line	180
	global	__size_of_LCD1602_GPIO_Init
	__size_of_LCD1602_GPIO_Init	equ	__end_of_LCD1602_GPIO_Init-_LCD1602_GPIO_Init
	
_LCD1602_GPIO_Init:	
	opt	stack 6
; Regs used in _LCD1602_GPIO_Init: [wreg+status,2]
	line	181
	
l13892:	
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
	
l13894:	
;LCD1602.c: 184: TRISD=0x00;
	clrf	(136)^080h	;volatile
	line	185
	
l13896:	
;LCD1602.c: 185: ADCON1=0x07;
	movlw	(07h)
	movwf	(159)^080h	;volatile
	line	186
	
l739:	
	return
	opt stack 0
GLOBAL	__end_of_LCD1602_GPIO_Init
	__end_of_LCD1602_GPIO_Init:
;; =============== function _LCD1602_GPIO_Init ends ============

	signat	_LCD1602_GPIO_Init,88
	global	_LCD1602_Delay
psect	text1017,local,class=CODE,delta=2
global __ptext1017
__ptext1017:

;; *************** function _LCD1602_Delay *****************
;; Defined at:
;;		line 11 in file "D:\6_pic_project\00_Design_Flow_Car\Driver\LCD1602.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    0[BANK0 ] unsigned int 
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
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCD1602_WriteCommand
;;		_LCD1602_WriteData
;;		_LCD1602_Init
;; This function uses a non-reentrant model
;;
psect	text1017
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\LCD1602.c"
	line	11
	global	__size_of_LCD1602_Delay
	__size_of_LCD1602_Delay	equ	__end_of_LCD1602_Delay-_LCD1602_Delay
	
_LCD1602_Delay:	
	opt	stack 4
; Regs used in _LCD1602_Delay: [wreg+status,2+status,0]
	line	13
	
l13832:	
;LCD1602.c: 12: unsigned int i;
;LCD1602.c: 13: for(i=999;i>0;i--);
	movlw	low(03E7h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD1602_Delay@i)
	movlw	high(03E7h)
	movwf	((LCD1602_Delay@i))+1
	
l13834:	
	movf	((LCD1602_Delay@i+1)),w
	iorwf	((LCD1602_Delay@i)),w
	skipz
	goto	u5101
	goto	u5100
u5101:
	goto	l13838
u5100:
	goto	l687
	
l13836:	
	goto	l687
	
l685:	
	
l13838:	
	movlw	low(01h)
	subwf	(LCD1602_Delay@i),f
	movlw	high(01h)
	skipc
	decf	(LCD1602_Delay@i+1),f
	subwf	(LCD1602_Delay@i+1),f
	
l13840:	
	movf	((LCD1602_Delay@i+1)),w
	iorwf	((LCD1602_Delay@i)),w
	skipz
	goto	u5111
	goto	u5110
u5111:
	goto	l13838
u5110:
	goto	l687
	
l686:	
	line	14
	
l687:	
	return
	opt stack 0
GLOBAL	__end_of_LCD1602_Delay
	__end_of_LCD1602_Delay:
;; =============== function _LCD1602_Delay ends ============

	signat	_LCD1602_Delay,88
	global	_Service
psect	text1018,local,class=CODE,delta=2
global __ptext1018
__ptext1018:

;; *************** function _Service *****************
;; Defined at:
;;		line 76 in file "D:\6_pic_project\00_Design_Flow_Car\User\Car_demo\Car_demo.c"
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
;;      Temps:          5       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text1018
	file	"D:\6_pic_project\00_Design_Flow_Car\User\Car_demo\Car_demo.c"
	line	76
	global	__size_of_Service
	__size_of_Service	equ	__end_of_Service-_Service
	
_Service:	
	opt	stack 4
; Regs used in _Service: [wreg]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_Service+1)
	movf	fsr0,w
	movwf	(??_Service+2)
	movf	pclath,w
	movwf	(??_Service+3)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_Service+4)
	ljmp	_Service
psect	text1018
	line	78
	
i1l13218:	
;Car_demo.c: 78: if(RCIF==1)
	btfss	(101/8),(101)&7
	goto	u392_21
	goto	u392_20
u392_21:
	goto	i1l9950
u392_20:
	line	80
	
i1l13220:	
;Car_demo.c: 82: if(bluetooth == '#'){}
	movf	(26),w	;volatile
	movwf	(??_Service+0)+0
	movf	(??_Service+0)+0,w
	movwf	(_bluetooth)
	line	82
	
i1l9951:	
	line	83
;Car_demo.c: 83: RCIF=0;
	bcf	(101/8),(101)&7
	line	84
;Car_demo.c: 84: }
	goto	i1l9952
	line	85
	
i1l9950:	
;Car_demo.c: 85: else if(T0IF==1)
	btfss	(90/8),(90)&7
	goto	u393_21
	goto	u393_20
u393_21:
	goto	i1l9953
u393_20:
	line	87
	
i1l13222:	
;Car_demo.c: 86: {
;Car_demo.c: 87: TMR0=60;
	movlw	(03Ch)
	movwf	(1)	;volatile
	line	88
	
i1l13224:	
;Car_demo.c: 88: T0IF=0;
	bcf	(90/8),(90)&7
	line	89
;Car_demo.c: 89: }
	goto	i1l9952
	line	90
	
i1l9953:	
;Car_demo.c: 90: else if(INTF==1)
	btfss	(89/8),(89)&7
	goto	u394_21
	goto	u394_20
u394_21:
	goto	i1l9955
u394_20:
	line	92
	
i1l13226:	
;Car_demo.c: 91: {
;Car_demo.c: 92: if(Start_Find_flag)
	movf	(_Start_Find_flag),w
	skipz
	goto	u395_20
	goto	i1l13230
u395_20:
	line	94
	
i1l13228:	
;Car_demo.c: 93: {
;Car_demo.c: 94: Encoder_Counter++;
	movlw	low(01h)
	addwf	(_Encoder_Counter),f
	skipnc
	incf	(_Encoder_Counter+1),f
	movlw	high(01h)
	addwf	(_Encoder_Counter+1),f
	goto	i1l13230
	line	95
	
i1l9956:	
	line	96
	
i1l13230:	
;Car_demo.c: 95: }
;Car_demo.c: 96: INTF=0;
	bcf	(89/8),(89)&7
	line	97
;Car_demo.c: 97: }
	goto	i1l9952
	line	98
	
i1l9955:	
;Car_demo.c: 98: else if(RBIF == 1)
	btfss	(88/8),(88)&7
	goto	u396_21
	goto	u396_20
u396_21:
	goto	i1l9952
u396_20:
	line	100
	
i1l13232:	
;Car_demo.c: 99: {
;Car_demo.c: 100: RBIF=0;
	bcf	(88/8),(88)&7
	goto	i1l9952
	line	101
	
i1l9958:	
	goto	i1l9952
	line	102
	
i1l9957:	
	goto	i1l9952
	
i1l9954:	
	
i1l9952:	
;Car_demo.c: 101: }
;Car_demo.c: 102: TMR1IF=0;
	bcf	(96/8),(96)&7
	line	103
	
i1l9959:	
	movf	(??_Service+4),w
	movwf	btemp+1
	movf	(??_Service+3),w
	movwf	pclath
	movf	(??_Service+2),w
	movwf	fsr0
	swapf	(??_Service+1)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_Service
	__end_of_Service:
;; =============== function _Service ends ============

	signat	_Service,88
psect	text1019,local,class=CODE,delta=2
global __ptext1019
__ptext1019:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
