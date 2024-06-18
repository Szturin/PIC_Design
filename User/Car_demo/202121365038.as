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
	FNCALL	_main,_csb_init
	FNCALL	_main,_Motor_CCP_PWM_Init
	FNCALL	_main,_Delay_ms
	FNCALL	_main,_printf
	FNCALL	_main,_Motor_Speed_Set
	FNCALL	_main,_Encoder_Init
	FNCALL	_main,_Velociy_PID_Init
	FNCALL	_main,_csb
	FNCALL	_main,_Trace_PID
	FNCALL	_main,_LCD1602_WriteNum
	FNCALL	_LCD1602_WriteNum,_LCD1602_WriteCommand
	FNCALL	_LCD1602_WriteNum,_LCD1602_Pow
	FNCALL	_LCD1602_WriteNum,___aldiv
	FNCALL	_LCD1602_WriteNum,___almod
	FNCALL	_LCD1602_WriteNum,_LCD1602_WriteData
	FNCALL	_csb,_Delay12us
	FNCALL	_csb,___lwtoft
	FNCALL	_csb,___ftmul
	FNCALL	_LCD1602_WriteString,_LCD1602_WriteCommand
	FNCALL	_LCD1602_WriteString,_LCD1602_WriteData
	FNCALL	_LCD1602_Init,_LCD1602_Delay
	FNCALL	_LCD1602_Init,_LCD1602_WriteCommand
	FNCALL	_Trace_PID,___awtoft
	FNCALL	_Trace_PID,___ftmul
	FNCALL	_Trace_PID,___ftadd
	FNCALL	_Trace_PID,___fttol
	FNCALL	___lwtoft,___ftpack
	FNCALL	___awtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftadd,___ftpack
	FNCALL	_LCD1602_Pow,___lmul
	FNCALL	_LCD1602_WriteData,_LCD1602_Delay
	FNCALL	_LCD1602_WriteCommand,_LCD1602_Delay
	FNCALL	_printf,_putch
	FNCALL	_printf,___lwdiv
	FNCALL	_printf,___lwmod
	FNROOT	_main
	FNCALL	_Service,i1_Trace_PID
	FNCALL	_Service,i1_Motor_Speed_Set
	FNCALL	_Service,_Velocity_PID
	FNCALL	i1_Trace_PID,i1___awtoft
	FNCALL	i1_Trace_PID,i1___ftmul
	FNCALL	i1_Trace_PID,i1___ftadd
	FNCALL	i1_Trace_PID,i1___fttol
	FNCALL	_Velocity_PID,i1___awtoft
	FNCALL	_Velocity_PID,___ftneg
	FNCALL	_Velocity_PID,i1___ftadd
	FNCALL	_Velocity_PID,i1___ftmul
	FNCALL	_Velocity_PID,_I_amplitude_limiting
	FNCALL	_Velocity_PID,i1___fttol
	FNCALL	i1___awtoft,i1___ftpack
	FNCALL	i1___ftmul,i1___ftpack
	FNCALL	i1___ftadd,i1___ftpack
	FNCALL	intlevel1,_Service
	global	intlevel1
	FNROOT	intlevel1
	global	_table
psect	idataBANK3,class=CODE,space=0,delta=2
global __pidataBANK3
__pidataBANK3:
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
	global	Trace_PID@err_difference
	global	Trace_PID@last_err
	global	_Speed
	global	_Encoder_Counter
	global	_Speed_left
	global	_Speed_right
	global	_bluetooth
	global	_x
	global	_y
	global	_RBIF_FLAG
	global	_filt_velocity
	global	_last_filt_velocity
	global	_Counter_temp
	global	_PWM
	global	_PWM1
	global	_PWM2
	global	_Speed_Set
	global	_Timer0_Counter
	global	_Turn
	global	_dis
	global	_Key_Val
	global	_Motor_Flag
	global	_Speed_measure1
	global	_Speed_measure2
	global	_Trace_Byte
	global	_ack
	global	_distance
	global	Trace_PID@turn_err
	global	_m
	global	_Velocity
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
	global	_TRISA
_TRISA	set	133
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
Trace_PID@err_difference:
       ds      2

Trace_PID@last_err:
       ds      2

_Speed:
       ds      2

_Encoder_Counter:
       ds      1

_Speed_left:
       ds      1

_Speed_right:
       ds      1

_bluetooth:
       ds      1

_x:
       ds      1

_y:
       ds      1

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
Trace_PID@turn_err:
       ds      2

_m:
       ds      1

psect	bssBANK3,class=BANK3,space=1
global __pbssBANK3
__pbssBANK3:
_filt_velocity:
       ds      3

_last_filt_velocity:
       ds      3

_Counter_temp:
       ds      2

_PWM:
       ds      2

_PWM1:
       ds      2

_PWM2:
       ds      2

_Speed_Set:
       ds      2

_Timer0_Counter:
       ds      2

_Turn:
       ds      2

_dis:
       ds      2

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

_distance:
       ds      1

_Velocity:
       ds      24

psect	dataBANK3,class=BANK3,space=1
global __pdataBANK3
__pdataBANK3:
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\csb.c"
	line	9
_table:
       ds      16

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
	movlw	low((__pbssBANK0)+0Ch)
	fcall	clear_ram
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	((__pbssBANK1)+0)&07Fh
	clrf	((__pbssBANK1)+1)&07Fh
	clrf	((__pbssBANK1)+2)&07Fh
; Clear objects allocated to BANK3
psect cinit,class=CODE,delta=2
	bsf	status, 7	;select IRP bank2
	movlw	low(__pbssBANK3)
	movwf	fsr
	movlw	low((__pbssBANK3)+035h)
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
; Initialize objects allocated to BANK3
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK3
	movlw low(__pdataBANK3+16)
	movwf btemp-1,f
	movlw high(__pidataBANK3)
	movwf btemp,f
	movlw low(__pidataBANK3)
	movwf btemp+1,f
	movlw low(__pdataBANK3)
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
	global	?_Motor_Speed_Set
?_Motor_Speed_Set:	; 0 bytes @ 0x0
	global	??_LCD1602_GPIO_Init
??_LCD1602_GPIO_Init:	; 0 bytes @ 0x0
	global	??_Usart_GPIO_Init
??_Usart_GPIO_Init:	; 0 bytes @ 0x0
	global	??_Usart_Init
??_Usart_Init:	; 0 bytes @ 0x0
	global	??_Motor_GPIO_Init
??_Motor_GPIO_Init:	; 0 bytes @ 0x0
	global	??_csb_init
??_csb_init:	; 0 bytes @ 0x0
	global	??_Motor_CCP_PWM_Init
??_Motor_CCP_PWM_Init:	; 0 bytes @ 0x0
	global	?_Delay_ms
?_Delay_ms:	; 0 bytes @ 0x0
	global	??_Encoder_Init
??_Encoder_Init:	; 0 bytes @ 0x0
	global	??_Velociy_PID_Init
??_Velociy_PID_Init:	; 0 bytes @ 0x0
	global	??_LCD1602_Delay
??_LCD1602_Delay:	; 0 bytes @ 0x0
	global	??_putch
??_putch:	; 0 bytes @ 0x0
	global	??_Delay12us
??_Delay12us:	; 0 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	?___lmul
?___lmul:	; 4 bytes @ 0x0
	global	putch@ch
putch@ch:	; 1 bytes @ 0x0
	global	LCD1602_Delay@i
LCD1602_Delay@i:	; 2 bytes @ 0x0
	global	Motor_Speed_Set@Speed1
Motor_Speed_Set@Speed1:	; 2 bytes @ 0x0
	global	Delay_ms@x
Delay_ms@x:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	global	___lmul@multiplier
___lmul@multiplier:	; 4 bytes @ 0x0
	ds	1
	global	Delay12us@i
Delay12us@i:	; 1 bytes @ 0x1
	ds	1
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
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	ds	1
	global	??_Motor_Speed_Set
??_Motor_Speed_Set:	; 0 bytes @ 0x4
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	global	LCD1602_WriteString@String
LCD1602_WriteString@String:	; 1 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	___lmul@multiplicand
___lmul@multiplicand:	; 4 bytes @ 0x4
	ds	1
	global	??_LCD1602_WriteString
??_LCD1602_WriteString:	; 0 bytes @ 0x5
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x5
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
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x8
	global	?___fttol
?___fttol:	; 4 bytes @ 0x8
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x8
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x8
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x8
	ds	1
	global	___lmul@product
___lmul@product:	; 4 bytes @ 0x9
	ds	1
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0xA
	ds	1
	global	??___lwtoft
??___lwtoft:	; 0 bytes @ 0xB
	ds	1
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0xC
	global	??___fttol
??___fttol:	; 0 bytes @ 0xC
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
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x10
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x11
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
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x15
	ds	1
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x16
	global	printf@ap
printf@ap:	; 1 bytes @ 0x16
	global	___aldiv@counter
___aldiv@counter:	; 1 bytes @ 0x16
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x16
	ds	1
	global	___aldiv@sign
___aldiv@sign:	; 1 bytes @ 0x17
	global	printf@_val
printf@_val:	; 4 bytes @ 0x17
	ds	1
	global	___aldiv@quotient
___aldiv@quotient:	; 4 bytes @ 0x18
	ds	1
	global	??___awtoft
??___awtoft:	; 0 bytes @ 0x19
	ds	2
	global	printf@c
printf@c:	; 1 bytes @ 0x1B
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0x1B
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x1C
	global	?___almod
?___almod:	; 4 bytes @ 0x1C
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x1C
	global	___almod@divisor
___almod@divisor:	; 4 bytes @ 0x1C
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x1F
	ds	1
	global	___almod@dividend
___almod@dividend:	; 4 bytes @ 0x20
	ds	2
	global	??___ftmul
??___ftmul:	; 0 bytes @ 0x22
	ds	2
	global	??___almod
??___almod:	; 0 bytes @ 0x24
	ds	1
	global	___almod@counter
___almod@counter:	; 1 bytes @ 0x25
	ds	1
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x26
	global	___almod@sign
___almod@sign:	; 1 bytes @ 0x26
	ds	1
	global	?_LCD1602_Pow
?_LCD1602_Pow:	; 4 bytes @ 0x27
	global	LCD1602_Pow@Y
LCD1602_Pow@Y:	; 1 bytes @ 0x27
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x27
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x2A
	ds	1
	global	??_LCD1602_Pow
??_LCD1602_Pow:	; 0 bytes @ 0x2B
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x2B
	ds	1
	global	??_csb
??_csb:	; 0 bytes @ 0x2C
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x2C
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x2C
	ds	3
	global	LCD1602_Pow@X
LCD1602_Pow@X:	; 1 bytes @ 0x2F
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x2F
	ds	1
	global	LCD1602_Pow@i
LCD1602_Pow@i:	; 1 bytes @ 0x30
	global	csb@time
csb@time:	; 2 bytes @ 0x30
	ds	1
	global	LCD1602_Pow@result
LCD1602_Pow@result:	; 4 bytes @ 0x31
	ds	1
	global	??___ftadd
??___ftadd:	; 0 bytes @ 0x32
	global	csb@ah
csb@ah:	; 1 bytes @ 0x32
	ds	1
	global	csb@al
csb@al:	; 1 bytes @ 0x33
	ds	2
	global	?_LCD1602_WriteNum
?_LCD1602_WriteNum:	; 0 bytes @ 0x35
	global	LCD1602_WriteNum@column
LCD1602_WriteNum@column:	; 1 bytes @ 0x35
	ds	1
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x36
	global	LCD1602_WriteNum@number
LCD1602_WriteNum@number:	; 2 bytes @ 0x36
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x37
	ds	1
	global	LCD1602_WriteNum@lenth
LCD1602_WriteNum@lenth:	; 1 bytes @ 0x38
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x38
	ds	1
	global	??_LCD1602_WriteNum
??_LCD1602_WriteNum:	; 0 bytes @ 0x39
	global	?_Trace_PID
?_Trace_PID:	; 2 bytes @ 0x39
	ds	1
	global	LCD1602_WriteNum@Location
LCD1602_WriteNum@Location:	; 1 bytes @ 0x3A
	ds	1
	global	??_Trace_PID
??_Trace_PID:	; 0 bytes @ 0x3B
	global	LCD1602_WriteNum@row
LCD1602_WriteNum@row:	; 1 bytes @ 0x3B
	ds	1
	global	LCD1602_WriteNum@i
LCD1602_WriteNum@i:	; 1 bytes @ 0x3C
	ds	7
	global	Trace_PID@Kp
Trace_PID@Kp:	; 3 bytes @ 0x43
	ds	3
	global	Trace_PID@Kd
Trace_PID@Kd:	; 3 bytes @ 0x46
	ds	3
	global	??_main
??_main:	; 0 bytes @ 0x49
	ds	4
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
	global	?_csb_init
?_csb_init:	; 0 bytes @ 0x0
	global	?_Motor_CCP_PWM_Init
?_Motor_CCP_PWM_Init:	; 0 bytes @ 0x0
	global	?_Encoder_Init
?_Encoder_Init:	; 0 bytes @ 0x0
	global	?_Velociy_PID_Init
?_Velociy_PID_Init:	; 0 bytes @ 0x0
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
	global	?_putch
?_putch:	; 0 bytes @ 0x0
	global	?_I_amplitude_limiting
?_I_amplitude_limiting:	; 0 bytes @ 0x0
	global	?_Delay12us
?_Delay12us:	; 0 bytes @ 0x0
	global	?i1_Motor_Speed_Set
?i1_Motor_Speed_Set:	; 0 bytes @ 0x0
	global	?_csb
?_csb:	; 2 bytes @ 0x0
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0x0
	global	?i1___ftpack
?i1___ftpack:	; 3 bytes @ 0x0
	global	I_amplitude_limiting@Error_sum
I_amplitude_limiting@Error_sum:	; 1 bytes @ 0x0
	global	i1Motor_Speed_Set@Speed1
i1Motor_Speed_Set@Speed1:	; 2 bytes @ 0x0
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0x0
	global	i1___ftpack@arg
i1___ftpack@arg:	; 3 bytes @ 0x0
	ds	1
	global	??_I_amplitude_limiting
??_I_amplitude_limiting:	; 0 bytes @ 0x1
	ds	1
	global	i1Motor_Speed_Set@Speed2
i1Motor_Speed_Set@Speed2:	; 2 bytes @ 0x2
	ds	1
	global	??___ftneg
??___ftneg:	; 0 bytes @ 0x3
	global	I_amplitude_limiting@number
I_amplitude_limiting@number:	; 1 bytes @ 0x3
	global	i1___ftpack@exp
i1___ftpack@exp:	; 1 bytes @ 0x3
	ds	1
	global	??i1_Motor_Speed_Set
??i1_Motor_Speed_Set:	; 0 bytes @ 0x4
	global	i1___ftpack@sign
i1___ftpack@sign:	; 1 bytes @ 0x4
	ds	1
	global	??i1___ftpack
??i1___ftpack:	; 0 bytes @ 0x5
	ds	3
	global	?i1___fttol
?i1___fttol:	; 4 bytes @ 0x8
	global	i1___fttol@f1
i1___fttol@f1:	; 3 bytes @ 0x8
	ds	4
	global	??i1___awtoft
??i1___awtoft:	; 0 bytes @ 0xC
	ds	2
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??i1___fttol
??i1___fttol:	; 0 bytes @ 0x0
	ds	4
	global	i1___fttol@sign1
i1___fttol@sign1:	; 1 bytes @ 0x4
	ds	1
	global	i1___fttol@lval
i1___fttol@lval:	; 4 bytes @ 0x5
	ds	4
	global	i1___fttol@exp1
i1___fttol@exp1:	; 1 bytes @ 0x9
	ds	1
	global	?i1___awtoft
?i1___awtoft:	; 3 bytes @ 0xA
	global	i1___awtoft@c
i1___awtoft@c:	; 2 bytes @ 0xA
	ds	3
	global	i1___awtoft@sign
i1___awtoft@sign:	; 1 bytes @ 0xD
	ds	1
	global	?i1___ftmul
?i1___ftmul:	; 3 bytes @ 0xE
	global	i1___ftmul@f1
i1___ftmul@f1:	; 3 bytes @ 0xE
	ds	3
	global	i1___ftmul@f2
i1___ftmul@f2:	; 3 bytes @ 0x11
	ds	3
	global	??i1___ftmul
??i1___ftmul:	; 0 bytes @ 0x14
	ds	4
	global	i1___ftmul@exp
i1___ftmul@exp:	; 1 bytes @ 0x18
	ds	1
	global	i1___ftmul@f3_as_product
i1___ftmul@f3_as_product:	; 3 bytes @ 0x19
	ds	3
	global	i1___ftmul@cntr
i1___ftmul@cntr:	; 1 bytes @ 0x1C
	ds	1
	global	i1___ftmul@sign
i1___ftmul@sign:	; 1 bytes @ 0x1D
	ds	1
	global	?i1___ftadd
?i1___ftadd:	; 3 bytes @ 0x1E
	global	i1___ftadd@f1
i1___ftadd@f1:	; 3 bytes @ 0x1E
	ds	3
	global	i1___ftadd@f2
i1___ftadd@f2:	; 3 bytes @ 0x21
	ds	3
	global	??i1___ftadd
??i1___ftadd:	; 0 bytes @ 0x24
	ds	4
	global	i1___ftadd@sign
i1___ftadd@sign:	; 1 bytes @ 0x28
	ds	1
	global	i1___ftadd@exp2
i1___ftadd@exp2:	; 1 bytes @ 0x29
	ds	1
	global	i1___ftadd@exp1
i1___ftadd@exp1:	; 1 bytes @ 0x2A
	ds	1
	global	?_Velocity_PID
?_Velocity_PID:	; 2 bytes @ 0x2B
	global	?i1_Trace_PID
?i1_Trace_PID:	; 2 bytes @ 0x2B
	global	Velocity_PID@velocity
Velocity_PID@velocity:	; 2 bytes @ 0x2B
	ds	2
	global	??i1_Trace_PID
??i1_Trace_PID:	; 0 bytes @ 0x2D
	global	Velocity_PID@velocity_calcu
Velocity_PID@velocity_calcu:	; 2 bytes @ 0x2D
	ds	2
	global	??_Velocity_PID
??_Velocity_PID:	; 0 bytes @ 0x2F
	ds	2
	global	Velocity_PID@a
Velocity_PID@a:	; 3 bytes @ 0x31
	ds	4
	global	i1Trace_PID@Kp
i1Trace_PID@Kp:	; 3 bytes @ 0x35
	ds	3
	global	i1Trace_PID@Kd
i1Trace_PID@Kd:	; 3 bytes @ 0x38
	ds	3
	global	??_Service
??_Service:	; 0 bytes @ 0x3B
	ds	8
;;Data sizes: Strings 45, constant 10, data 16, bss 68, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     67      80
;; BANK1           80     77      80
;; BANK3           96      0      69
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?i1___ftpack	float  size(1) Largest target is 0
;;
;; ?i1_Trace_PID	int  size(1) Largest target is 0
;;
;; ?i1___fttol	long  size(1) Largest target is 0
;;
;; ?i1___ftmul	float  size(1) Largest target is 0
;;
;; ?i1___ftadd	float  size(1) Largest target is 0
;;
;; ?i1___awtoft	float  size(1) Largest target is 0
;;
;; ?___ftpack	float  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?_csb	unsigned int  size(1) Largest target is 0
;;
;; ?___lwtoft	float  size(1) Largest target is 0
;;
;; ?_Trace_PID	int  size(1) Largest target is 0
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
;; S12218$_cp	PTR const unsigned char  size(1) Largest target is 0
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
;;   i1_Trace_PID->i1___awtoft
;;   _Velocity_PID->i1___awtoft
;;   i1___awtoft->i1___fttol
;;   i1___ftmul->i1___awtoft
;;   i1___ftadd->i1___awtoft
;;   i1___fttol->i1___ftpack
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _Service in BANK0
;;
;;   _Service->i1_Trace_PID
;;   i1_Trace_PID->i1___ftadd
;;   _Velocity_PID->i1___ftadd
;;   i1___awtoft->i1___fttol
;;   i1___ftmul->i1___awtoft
;;   i1___ftadd->i1___ftmul
;;
;; Critical Paths under _main in BANK1
;;
;;   _main->_Trace_PID
;;   _LCD1602_WriteNum->_LCD1602_Pow
;;   _csb->___ftmul
;;   _LCD1602_WriteString->_LCD1602_WriteCommand
;;   _LCD1602_WriteString->_LCD1602_WriteData
;;   _LCD1602_Init->_LCD1602_WriteCommand
;;   _Trace_PID->___ftadd
;;   ___lwtoft->___ftpack
;;   ___awtoft->___fttol
;;   ___ftmul->___awtoft
;;   ___ftadd->___ftmul
;;   _LCD1602_Pow->___almod
;;   _LCD1602_WriteData->_LCD1602_Delay
;;   _LCD1602_WriteCommand->_LCD1602_Delay
;;   _printf->___lwmod
;;   ___aldiv->___lmul
;;   ___almod->___aldiv
;;   ___fttol->___ftpack
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
;;Main: autosize = 0, tempsize = 4, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 4     4      0    5538
;;                                             73 BANK1      4     4      0
;;                  _LCD1602_GPIO_Init
;;                       _LCD1602_Init
;;                _LCD1602_WriteString
;;                    _Usart_GPIO_Init
;;                         _Usart_Init
;;                    _Motor_GPIO_Init
;;                           _csb_init
;;                 _Motor_CCP_PWM_Init
;;                           _Delay_ms
;;                             _printf
;;                    _Motor_Speed_Set
;;                       _Encoder_Init
;;                   _Velociy_PID_Init
;;                                _csb
;;                          _Trace_PID
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
;; (1) _csb                                                  8     8      0     858
;;                                             44 BANK1      8     8      0
;;                          _Delay12us
;;                           ___lwtoft
;;                            ___ftmul
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
;; (1) _Trace_PID                                           16    14      2    2182
;;                                             57 BANK1     16    14      2
;;                           ___awtoft
;;                            ___ftmul
;;                            ___ftadd
;;                            ___fttol
;; ---------------------------------------------------------------------------------
;; (2) ___lwtoft                                             4     1      3     231
;;                                              8 BANK1      4     1      3
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (2) ___awtoft                                             6     3      3     300
;;                                             22 BANK1      6     3      3
;;                           ___ftpack
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___ftmul                                             16    10      6     535
;;                                             28 BANK1     16    10      6
;;                           ___ftpack
;;                           ___lwtoft (ARG)
;;                           ___awtoft (ARG)
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___ftadd                                             13     7      6    1049
;;                                             44 BANK1     13     7      6
;;                           ___ftpack
;;                            ___ftmul (ARG)
;;                           ___awtoft (ARG)
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _Delay12us                                            2     2      0      23
;;                                              0 BANK1      2     2      0
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
;; (2) ___fttol                                             14    10      4     252
;;                                              8 BANK1     14    10      4
;;                           ___ftpack (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___lmul                                              13     5      8      92
;;                                              0 BANK1     13     5      8
;; ---------------------------------------------------------------------------------
;; (3) ___ftpack                                             8     3      5     209
;;                                              0 BANK1      8     3      5
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
;; (1) _csb_init                                             0     0      0       0
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
;; (4) _Service                                              8     8      0   14881
;;                                             59 BANK0      8     8      0
;;                        i1_Trace_PID
;;                  i1_Motor_Speed_Set
;;                       _Velocity_PID
;; ---------------------------------------------------------------------------------
;; (5) i1_Trace_PID                                         16    14      2    7119
;;                                             43 BANK0     16    14      2
;;                         i1___awtoft
;;                          i1___ftmul
;;                          i1___ftadd
;;                          i1___fttol
;; ---------------------------------------------------------------------------------
;; (5) _Velocity_PID                                         9     5      4    7324
;;                                             43 BANK0      9     5      4
;;                         i1___awtoft
;;                            ___ftneg
;;                          i1___ftadd
;;                          i1___ftmul
;;               _I_amplitude_limiting
;;                          i1___fttol
;; ---------------------------------------------------------------------------------
;; (6) i1___awtoft                                           6     3      3     977
;;                                             12 COMMON     2     2      0
;;                                             10 BANK0      4     1      3
;;                         i1___ftpack
;;                          i1___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (6) i1___ftmul                                           16    10      6    1737
;;                                             14 BANK0     16    10      6
;;                         i1___ftpack
;;                         i1___awtoft (ARG)
;;                          i1___fttol (ARG)
;;                            ___ftneg (ARG)
;; ---------------------------------------------------------------------------------
;; (6) i1___ftadd                                           13     7      6    3432
;;                                             30 BANK0     13     7      6
;;                         i1___ftpack
;;                          i1___ftmul (ARG)
;;                         i1___awtoft (ARG)
;;                          i1___fttol (ARG)
;;                            ___ftneg (ARG)
;; ---------------------------------------------------------------------------------
;; (7) i1___ftpack                                           8     3      5     679
;;                                              0 COMMON     8     3      5
;; ---------------------------------------------------------------------------------
;; (6) i1___fttol                                           14    10      4     823
;;                                              8 COMMON     4     0      4
;;                                              0 BANK0     10    10      0
;;                         i1___ftpack (ARG)
;; ---------------------------------------------------------------------------------
;; (5) i1_Motor_Speed_Set                                    4     0      4     438
;;                                              0 COMMON     4     0      4
;; ---------------------------------------------------------------------------------
;; (6) ___ftneg                                              3     0      3      45
;;                                              0 COMMON     3     0      3
;; ---------------------------------------------------------------------------------
;; (6) _I_amplitude_limiting                                 4     3      1     176
;;                                              0 COMMON     4     3      1
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
;;   _csb_init
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
;;   _csb
;;     _Delay12us
;;     ___lwtoft
;;       ___ftpack
;;     ___ftmul
;;       ___ftpack
;;       ___lwtoft (ARG)
;;         ___ftpack
;;       ___awtoft (ARG)
;;         ___ftpack
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;   _Trace_PID
;;     ___awtoft
;;       ___ftpack
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;     ___ftmul
;;       ___ftpack
;;       ___lwtoft (ARG)
;;         ___ftpack
;;       ___awtoft (ARG)
;;         ___ftpack
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;     ___ftadd
;;       ___ftpack
;;       ___ftmul (ARG)
;;         ___ftpack
;;         ___lwtoft (ARG)
;;           ___ftpack
;;         ___awtoft (ARG)
;;           ___ftpack
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;       ___awtoft (ARG)
;;         ___ftpack
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;     ___fttol
;;       ___ftpack (ARG)
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
;;   i1_Trace_PID
;;     i1___awtoft
;;       i1___ftpack
;;       i1___fttol (ARG)
;;         i1___ftpack (ARG)
;;     i1___ftmul
;;       i1___ftpack
;;       i1___awtoft (ARG)
;;         i1___ftpack
;;         i1___fttol (ARG)
;;           i1___ftpack (ARG)
;;       i1___fttol (ARG)
;;         i1___ftpack (ARG)
;;       ___ftneg (ARG)
;;     i1___ftadd
;;       i1___ftpack
;;       i1___ftmul (ARG)
;;         i1___ftpack
;;         i1___awtoft (ARG)
;;           i1___ftpack
;;           i1___fttol (ARG)
;;             i1___ftpack (ARG)
;;         i1___fttol (ARG)
;;           i1___ftpack (ARG)
;;         ___ftneg (ARG)
;;       i1___awtoft (ARG)
;;         i1___ftpack
;;         i1___fttol (ARG)
;;           i1___ftpack (ARG)
;;       i1___fttol (ARG)
;;         i1___ftpack (ARG)
;;       ___ftneg (ARG)
;;     i1___fttol
;;       i1___ftpack (ARG)
;;   i1_Motor_Speed_Set
;;   _Velocity_PID
;;     i1___awtoft
;;       i1___ftpack
;;       i1___fttol (ARG)
;;         i1___ftpack (ARG)
;;     ___ftneg
;;     i1___ftadd
;;       i1___ftpack
;;       i1___ftmul (ARG)
;;         i1___ftpack
;;         i1___awtoft (ARG)
;;           i1___ftpack
;;           i1___fttol (ARG)
;;             i1___ftpack (ARG)
;;         i1___fttol (ARG)
;;           i1___ftpack (ARG)
;;         ___ftneg (ARG)
;;       i1___awtoft (ARG)
;;         i1___ftpack
;;         i1___fttol (ARG)
;;           i1___ftpack (ARG)
;;       i1___fttol (ARG)
;;         i1___ftpack (ARG)
;;       ___ftneg (ARG)
;;     i1___ftmul
;;       i1___ftpack
;;       i1___awtoft (ARG)
;;         i1___ftpack
;;         i1___fttol (ARG)
;;           i1___ftpack (ARG)
;;       i1___fttol (ARG)
;;         i1___ftpack (ARG)
;;       ___ftneg (ARG)
;;     _I_amplitude_limiting
;;     i1___fttol
;;       i1___ftpack (ARG)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0      45       9       71.9%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50     4D      50       7      100.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      FE      12        0.0%
;;ABS                  0      0      F3       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       B       2        0.0%
;;BANK0               50     43      50       5      100.0%
;;BITBANK0            50      0       1       4        1.3%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 104 in file "D:\6_pic_project\00_Design_Flow_Car\User\Car_demo\Car_demo.c"
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
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_LCD1602_GPIO_Init
;;		_LCD1602_Init
;;		_LCD1602_WriteString
;;		_Usart_GPIO_Init
;;		_Usart_Init
;;		_Motor_GPIO_Init
;;		_csb_init
;;		_Motor_CCP_PWM_Init
;;		_Delay_ms
;;		_printf
;;		_Motor_Speed_Set
;;		_Encoder_Init
;;		_Velociy_PID_Init
;;		_csb
;;		_Trace_PID
;;		_LCD1602_WriteNum
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\6_pic_project\00_Design_Flow_Car\User\Car_demo\Car_demo.c"
	line	104
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 1
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	106
	
l14925:	
;Car_demo.c: 106: TRISB1=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1073/8)^080h,(1073)&7
	line	107
;Car_demo.c: 107: TRISA0=0;
	bcf	(1064/8)^080h,(1064)&7
	line	108
;Car_demo.c: 108: TRISA1=0;
	bcf	(1065/8)^080h,(1065)&7
	line	109
;Car_demo.c: 109: TRISE0=1;
	bsf	(1096/8)^080h,(1096)&7
	line	110
;Car_demo.c: 110: TRISE1=1;
	bsf	(1097/8)^080h,(1097)&7
	line	111
;Car_demo.c: 111: TRISE2=1;
	bsf	(1098/8)^080h,(1098)&7
	line	112
;Car_demo.c: 112: TRISA4=1;
	bsf	(1068/8)^080h,(1068)&7
	line	114
	
l14927:	
;Car_demo.c: 114: LCD1602_GPIO_Init();
	fcall	_LCD1602_GPIO_Init
	line	115
;Car_demo.c: 115: LCD1602_Init();
	fcall	_LCD1602_Init
	line	116
	
l14929:	
;Car_demo.c: 116: LCD1602_WriteString(1,0,"CAR 1");
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(?_LCD1602_WriteString)^080h
	movlw	((STR_1-__stringbase))&0ffh
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	movwf	(0+?_LCD1602_WriteString+01h)^080h
	movlw	(01h)
	fcall	_LCD1602_WriteString
	line	117
	
l14931:	
;Car_demo.c: 117: LCD1602_WriteString(2,0,"Speed:");
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(?_LCD1602_WriteString)^080h
	movlw	((STR_2-__stringbase))&0ffh
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	movwf	(0+?_LCD1602_WriteString+01h)^080h
	movlw	(02h)
	fcall	_LCD1602_WriteString
	line	119
	
l14933:	
;Car_demo.c: 119: Usart_GPIO_Init();
	fcall	_Usart_GPIO_Init
	line	120
	
l14935:	
;Car_demo.c: 120: Usart_Init();
	fcall	_Usart_Init
	line	121
;Car_demo.c: 121: Motor_GPIO_Init();
	fcall	_Motor_GPIO_Init
	line	122
	
l14937:	
;Car_demo.c: 122: csb_init();
	fcall	_csb_init
	line	124
	
l14939:	
;Car_demo.c: 124: Motor_CCP_PWM_Init();
	fcall	_Motor_CCP_PWM_Init
	line	126
	
l14941:	
;Car_demo.c: 126: Delay_ms(5000);
	movlw	low(01388h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_Delay_ms)^080h
	movlw	high(01388h)
	movwf	((?_Delay_ms)^080h)+1
	fcall	_Delay_ms
	line	127
	
l14943:	
;Car_demo.c: 127: printf("串口初始化完成!\r\n");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_printf
	line	128
	
l14945:	
;Car_demo.c: 128: Motor_Speed_Set(PWM1,PWM2);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_PWM1+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(?_Motor_Speed_Set+1)^080h
	addwf	(?_Motor_Speed_Set+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_PWM1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(?_Motor_Speed_Set)^080h
	addwf	(?_Motor_Speed_Set)^080h

	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_PWM2+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	1+(?_Motor_Speed_Set)^080h+02h
	addwf	1+(?_Motor_Speed_Set)^080h+02h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_PWM2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	0+(?_Motor_Speed_Set)^080h+02h
	addwf	0+(?_Motor_Speed_Set)^080h+02h

	fcall	_Motor_Speed_Set
	line	129
	
l14947:	
;Car_demo.c: 129: Encoder_Init();
	fcall	_Encoder_Init
	line	130
	
l14949:	
;Car_demo.c: 130: Velociy_PID_Init();
	fcall	_Velociy_PID_Init
	line	132
	
l14951:	
;Car_demo.c: 132: csb();
	fcall	_csb
	goto	l14953
	line	133
;Car_demo.c: 133: while(1)
	
l762:	
	line	136
	
l14953:	
;Car_demo.c: 134: {
;Car_demo.c: 136: Speed_left = 40 - Trace_PID();
	fcall	_Trace_PID
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?_Trace_PID))^080h,w
	xorlw	0ffh
	addlw	1
	addlw	028h
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_Speed_left)
	line	137
	
l14955:	
;Car_demo.c: 137: Speed_right = 40 + Trace_PID();
	fcall	_Trace_PID
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?_Trace_PID))^080h,w
	addlw	028h
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_Speed_right)
	line	138
	
l14957:	
;Car_demo.c: 138: Motor_Speed_Set(Speed_left,Speed_right);
	movf	(_Speed_left),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	clrf	(??_main+0)^080h+0+1
	movf	0+(??_main+0)^080h+0,w
	movwf	(?_Motor_Speed_Set)^080h
	movf	1+(??_main+0)^080h+0,w
	movwf	(?_Motor_Speed_Set+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Speed_right),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+2)^080h+0
	clrf	(??_main+2)^080h+0+1
	movf	0+(??_main+2)^080h+0,w
	movwf	0+(?_Motor_Speed_Set)^080h+02h
	movf	1+(??_main+2)^080h+0,w
	movwf	1+(?_Motor_Speed_Set)^080h+02h
	fcall	_Motor_Speed_Set
	line	139
	
l14959:	
;Car_demo.c: 139: LCD1602_WriteNum(2,7,Speed,3);
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
	line	140
	
l14961:	
;Car_demo.c: 140: LCD1602_WriteNum(1,7,RE0,1);
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
	line	141
	
l14963:	
;Car_demo.c: 141: LCD1602_WriteNum(1,8,RE1,1);
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
	line	142
	
l14965:	
;Car_demo.c: 142: LCD1602_WriteNum(1,9,RE2,1);
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
	line	143
	
l14967:	
;Car_demo.c: 143: LCD1602_WriteNum(1,10,RA4,1);
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
	line	144
	
l14969:	
;Car_demo.c: 144: printf("Speed:%d\r\n",(unsigned int)Speed);
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
	goto	l14953
	line	145
	
l763:	
	line	133
	goto	l14953
	
l764:	
	line	146
	
l765:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_LCD1602_WriteNum
psect	text1154,local,class=CODE,delta=2
global __ptext1154
__ptext1154:

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
psect	text1154
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
	
l14907:	
;LCD1602.c: 128: unsigned char Location;
;LCD1602.c: 129: unsigned char i;
;LCD1602.c: 130: if(row == 1)
	movf	(LCD1602_WriteNum@row)^080h,w
	xorlw	01h
	skipz
	goto	u7641
	goto	u7640
u7641:
	goto	l14911
u7640:
	line	132
	
l14909:	
;LCD1602.c: 131: {
;LCD1602.c: 132: Location = 0x80 + column;
	movf	(LCD1602_WriteNum@column)^080h,w
	addlw	080h
	movwf	(??_LCD1602_WriteNum+0)^080h+0
	movf	(??_LCD1602_WriteNum+0)^080h+0,w
	movwf	(LCD1602_WriteNum@Location)^080h
	line	133
;LCD1602.c: 133: }
	goto	l14915
	line	134
	
l1485:	
	
l14911:	
;LCD1602.c: 134: else if(row == 2)
	movf	(LCD1602_WriteNum@row)^080h,w
	xorlw	02h
	skipz
	goto	u7651
	goto	u7650
u7651:
	goto	l14915
u7650:
	line	136
	
l14913:	
;LCD1602.c: 135: {
;LCD1602.c: 136: Location = 0xC0 + column;
	movf	(LCD1602_WriteNum@column)^080h,w
	addlw	0C0h
	movwf	(??_LCD1602_WriteNum+0)^080h+0
	movf	(??_LCD1602_WriteNum+0)^080h+0,w
	movwf	(LCD1602_WriteNum@Location)^080h
	goto	l14915
	line	137
	
l1487:	
	goto	l14915
	line	139
	
l1486:	
	
l14915:	
;LCD1602.c: 137: }
;LCD1602.c: 139: LCD1602_WriteCommand(Location);
	movf	(LCD1602_WriteNum@Location)^080h,w
	fcall	_LCD1602_WriteCommand
	line	141
	
l14917:	
;LCD1602.c: 141: for(i=0;i<lenth;i++)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(LCD1602_WriteNum@i)^080h
	goto	l14923
	line	142
	
l1489:	
	line	143
	
l14919:	
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
	
l14921:	
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_LCD1602_WriteNum+0)^080h+0
	movf	(??_LCD1602_WriteNum+0)^080h+0,w
	addwf	(LCD1602_WriteNum@i)^080h,f
	goto	l14923
	
l1488:	
	
l14923:	
	movf	(LCD1602_WriteNum@lenth)^080h,w
	subwf	(LCD1602_WriteNum@i)^080h,w
	skipc
	goto	u7661
	goto	u7660
u7661:
	goto	l14919
u7660:
	goto	l1491
	
l1490:	
	line	146
	
l1491:	
	return
	opt stack 0
GLOBAL	__end_of_LCD1602_WriteNum
	__end_of_LCD1602_WriteNum:
;; =============== function _LCD1602_WriteNum ends ============

	signat	_LCD1602_WriteNum,16504
	global	_csb
psect	text1155,local,class=CODE,delta=2
global __ptext1155
__ptext1155:

;; *************** function _csb *****************
;; Defined at:
;;		line 38 in file "D:\6_pic_project\00_Design_Flow_Car\Driver\csb.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  time            2   48[BANK1 ] unsigned int 
;;  al              1   51[BANK1 ] unsigned char 
;;  ah              1   50[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2  748[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       4       0       0
;;      Temps:          0       0       4       0       0
;;      Totals:         0       0       8       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_Delay12us
;;		___lwtoft
;;		___ftmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1155
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\csb.c"
	line	38
	global	__size_of_csb
	__size_of_csb	equ	__end_of_csb-_csb
	
_csb:	
	opt	stack 1
; Regs used in _csb: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	41
	
l14881:	
;csb.c: 39: unsigned int time;
;csb.c: 40: unsigned char ah,al;
;csb.c: 41: dis = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(_dis)^0180h
	clrf	(_dis+1)^0180h
	line	42
	
l14883:	
;csb.c: 42: TMR1ON = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(128/8),(128)&7
	line	43
;csb.c: 43: TMR1H = 0x00;
	clrf	(15)	;volatile
	line	44
;csb.c: 44: TMR1L = 0x00;
	clrf	(14)	;volatile
	line	46
	
l14885:	
;csb.c: 46: RA0 = 1;
	bsf	(40/8),(40)&7
	line	47
	
l14887:	
;csb.c: 47: Delay12us();
	fcall	_Delay12us
	line	48
	
l14889:	
;csb.c: 48: RA0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7
	line	50
;csb.c: 50: while(!RA1);
	goto	l9941
	
l9942:	
	
l9941:	
	btfss	(41/8),(41)&7
	goto	u7601
	goto	u7600
u7601:
	goto	l9941
u7600:
	
l9943:	
	line	51
;csb.c: 51: TMR1ON=1;
	bsf	(128/8),(128)&7
	line	52
;csb.c: 52: while(RA1 == 1 && TMR1IF == 0);
	goto	l9944
	
l9945:	
	
l9944:	
	btfss	(41/8),(41)&7
	goto	u7611
	goto	u7610
u7611:
	goto	l14893
u7610:
	
l14891:	
	btfss	(96/8),(96)&7
	goto	u7621
	goto	u7620
u7621:
	goto	l9944
u7620:
	goto	l14893
	
l9947:	
	goto	l14893
	
l9948:	
	line	53
	
l14893:	
;csb.c: 53: ah = TMR1H;
	movf	(15),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_csb+0)^080h+0
	movf	(??_csb+0)^080h+0,w
	movwf	(csb@ah)^080h
	line	54
;csb.c: 54: al = TMR1L;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(14),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_csb+0)^080h+0
	movf	(??_csb+0)^080h+0,w
	movwf	(csb@al)^080h
	line	55
	
l14895:	
;csb.c: 55: TMR1ON=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(128/8),(128)&7
	line	56
	
l14897:	
;csb.c: 56: if(TMR1IF == 0)
	btfsc	(96/8),(96)&7
	goto	u7631
	goto	u7630
u7631:
	goto	l9949
u7630:
	line	58
	
l14899:	
;csb.c: 57: {
;csb.c: 58: time = ah<<8|al;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(csb@al)^080h,w
	movwf	(??_csb+0)^080h+0
	clrf	(??_csb+0)^080h+0+1
	movf	(csb@ah)^080h,w
	movwf	(??_csb+2)^080h+0
	clrf	(??_csb+2)^080h+0+1
	movf	(??_csb+2)^080h+0,w
	movwf	(??_csb+2)^080h+1
	clrf	(??_csb+2)^080h+0
	movf	0+(??_csb+0)^080h+0,w
	iorwf	0+(??_csb+2)^080h+0,w
	movwf	(csb@time)^080h
	movf	1+(??_csb+0)^080h+0,w
	iorwf	1+(??_csb+2)^080h+0,w
	movwf	1+(csb@time)^080h
	line	59
	
l14901:	
;csb.c: 59: return (time*0.01723);
;	Return value of _csb is never used
	movlw	0x26
	movwf	(?___ftmul)^080h
	movlw	0x8d
	movwf	(?___ftmul+1)^080h
	movlw	0x3c
	movwf	(?___ftmul+2)^080h
	movf	(csb@time+1)^080h,w
	clrf	(?___lwtoft+1)^080h
	addwf	(?___lwtoft+1)^080h
	movf	(csb@time)^080h,w
	clrf	(?___lwtoft)^080h
	addwf	(?___lwtoft)^080h

	fcall	___lwtoft
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___lwtoft))^080h,w
	movwf	0+(?___ftmul)^080h+03h
	movf	(1+(?___lwtoft))^080h,w
	movwf	1+(?___ftmul)^080h+03h
	movf	(2+(?___lwtoft))^080h,w
	movwf	2+(?___ftmul)^080h+03h
	fcall	___ftmul
	goto	l9950
	
l14903:	
	goto	l9950
	line	60
	
l14905:	
;csb.c: 60: }
	goto	l9950
	line	61
	
l9949:	
	line	63
;csb.c: 61: else
;csb.c: 62: {
;csb.c: 63: TMR1IF = 0;
	bcf	(96/8),(96)&7
	line	64
;csb.c: 64: return 0;
;	Return value of _csb is never used
	goto	l9950
	line	65
	
l9951:	
	line	66
	
l9950:	
	return
	opt stack 0
GLOBAL	__end_of_csb
	__end_of_csb:
;; =============== function _csb ends ============

	signat	_csb,90
	global	_LCD1602_WriteString
psect	text1156,local,class=CODE,delta=2
global __ptext1156
__ptext1156:

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
psect	text1156
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
	
l14865:	
;LCD1602.c: 85: unsigned char Location;
;LCD1602.c: 86: if(row == 1)
	movf	(LCD1602_WriteString@row)^080h,w
	xorlw	01h
	skipz
	goto	u7571
	goto	u7570
u7571:
	goto	l14869
u7570:
	line	88
	
l14867:	
;LCD1602.c: 87: {
;LCD1602.c: 88: Location = 0x80 + column;
	movf	(LCD1602_WriteString@column)^080h,w
	addlw	080h
	movwf	(??_LCD1602_WriteString+0)^080h+0
	movf	(??_LCD1602_WriteString+0)^080h+0,w
	movwf	(LCD1602_WriteString@Location)^080h
	line	89
;LCD1602.c: 89: }
	goto	l14873
	line	90
	
l1470:	
	
l14869:	
;LCD1602.c: 90: else if(row == 2)
	movf	(LCD1602_WriteString@row)^080h,w
	xorlw	02h
	skipz
	goto	u7581
	goto	u7580
u7581:
	goto	l14873
u7580:
	line	92
	
l14871:	
;LCD1602.c: 91: {
;LCD1602.c: 92: Location = 0xC0 + column;
	movf	(LCD1602_WriteString@column)^080h,w
	addlw	0C0h
	movwf	(??_LCD1602_WriteString+0)^080h+0
	movf	(??_LCD1602_WriteString+0)^080h+0,w
	movwf	(LCD1602_WriteString@Location)^080h
	goto	l14873
	line	93
	
l1472:	
	goto	l14873
	line	94
	
l1471:	
	
l14873:	
;LCD1602.c: 93: }
;LCD1602.c: 94: LCD1602_WriteCommand(Location);
	movf	(LCD1602_WriteString@Location)^080h,w
	fcall	_LCD1602_WriteCommand
	line	97
;LCD1602.c: 97: while(*String != '\0')
	goto	l14879
	
l1474:	
	line	99
	
l14875:	
;LCD1602.c: 98: {
;LCD1602.c: 99: LCD1602_WriteData(*String++);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(LCD1602_WriteString@String)^080h,w
	movwf	fsr0
	fcall	stringdir
	fcall	_LCD1602_WriteData
	
l14877:	
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_LCD1602_WriteString+0)^080h+0
	movf	(??_LCD1602_WriteString+0)^080h+0,w
	addwf	(LCD1602_WriteString@String)^080h,f
	goto	l14879
	line	100
	
l1473:	
	line	97
	
l14879:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(LCD1602_WriteString@String)^080h,w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u7591
	goto	u7590
u7591:
	goto	l14875
u7590:
	goto	l1476
	
l1475:	
	line	101
	
l1476:	
	return
	opt stack 0
GLOBAL	__end_of_LCD1602_WriteString
	__end_of_LCD1602_WriteString:
;; =============== function _LCD1602_WriteString ends ============

	signat	_LCD1602_WriteString,12408
	global	_LCD1602_Init
psect	text1157,local,class=CODE,delta=2
global __ptext1157
__ptext1157:

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
psect	text1157
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\LCD1602.c"
	line	45
	global	__size_of_LCD1602_Init
	__size_of_LCD1602_Init	equ	__end_of_LCD1602_Init-_LCD1602_Init
	
_LCD1602_Init:	
	opt	stack 1
; Regs used in _LCD1602_Init: [wreg+status,2+status,0+pclath+cstack]
	line	46
	
l14851:	
;LCD1602.c: 46: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	47
	
l14853:	
;LCD1602.c: 47: LCD1602_Delay();
	fcall	_LCD1602_Delay
	line	48
	
l14855:	
;LCD1602.c: 48: LCD1602_WriteCommand(0x01);
	movlw	(01h)
	fcall	_LCD1602_WriteCommand
	line	49
	
l14857:	
;LCD1602.c: 49: LCD1602_WriteCommand(0x38);
	movlw	(038h)
	fcall	_LCD1602_WriteCommand
	line	50
	
l14859:	
;LCD1602.c: 50: LCD1602_WriteCommand(0x0C);
	movlw	(0Ch)
	fcall	_LCD1602_WriteCommand
	line	51
	
l14861:	
;LCD1602.c: 51: LCD1602_WriteCommand(0x06);
	movlw	(06h)
	fcall	_LCD1602_WriteCommand
	line	52
	
l14863:	
;LCD1602.c: 52: LCD1602_WriteCommand(0x80);
	movlw	(080h)
	fcall	_LCD1602_WriteCommand
	line	53
	
l1461:	
	return
	opt stack 0
GLOBAL	__end_of_LCD1602_Init
	__end_of_LCD1602_Init:
;; =============== function _LCD1602_Init ends ============

	signat	_LCD1602_Init,88
	global	_Trace_PID
psect	text1158,local,class=CODE,delta=2
global __ptext1158
__ptext1158:

;; *************** function _Trace_PID *****************
;; Defined at:
;;		line 74 in file "D:\6_pic_project\00_Design_Flow_Car\Driver\pid.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Kd              3   70[BANK1 ] float 
;;  Kp              3   67[BANK1 ] float 
;; Return value:  Size  Location     Type
;;                  2   57[BANK1 ] int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       2       0       0
;;      Locals:         0       0       6       0       0
;;      Temps:          0       0       8       0       0
;;      Totals:         0       0      16       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___awtoft
;;		___ftmul
;;		___ftadd
;;		___fttol
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1158
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\pid.c"
	line	74
	global	__size_of_Trace_PID
	__size_of_Trace_PID	equ	__end_of_Trace_PID-_Trace_PID
	
_Trace_PID:	
	opt	stack 1
; Regs used in _Trace_PID: [wreg+status,2+status,0+pclath+cstack]
	line	75
	
l14817:	
;pid.c: 75: float Kp=3.0;
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Trace_PID@Kp)^080h
	movlw	0x40
	movwf	(Trace_PID@Kp+1)^080h
	movlw	0x40
	movwf	(Trace_PID@Kp+2)^080h
	line	76
;pid.c: 76: float Kd=1.0;
	movlw	0x0
	movwf	(Trace_PID@Kd)^080h
	movlw	0x80
	movwf	(Trace_PID@Kd+1)^080h
	movlw	0x3f
	movwf	(Trace_PID@Kd+2)^080h
	line	82
	
l14819:	
;pid.c: 78: static int turn_err;
;pid.c: 79: static int last_err;
;pid.c: 80: static int err_difference;
;pid.c: 82: Trace_Byte = (RC0<<7|RC3<<6|RE0<<5|RE1<<4|RE2<<3|RA4<<2|RC4<<1|RC5);
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(61/8),(61)&7
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_Trace_PID+0)^080h+0
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_Trace_PID+1)^080h+0
	movlw	01h
u7415:
	clrc
	rlf	(??_Trace_PID+1)^080h+0,f
	addlw	-1
	skipz
	goto	u7415
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(44/8),(44)&7
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_Trace_PID+2)^080h+0
	movlw	02h
u7425:
	clrc
	rlf	(??_Trace_PID+2)^080h+0,f
	addlw	-1
	skipz
	goto	u7425
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(74/8),(74)&7
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_Trace_PID+3)^080h+0
	movlw	03h
u7435:
	clrc
	rlf	(??_Trace_PID+3)^080h+0,f
	addlw	-1
	skipz
	goto	u7435
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(73/8),(73)&7
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_Trace_PID+4)^080h+0
	movlw	04h
u7445:
	clrc
	rlf	(??_Trace_PID+4)^080h+0,f
	addlw	-1
	skipz
	goto	u7445
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(72/8),(72)&7
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_Trace_PID+5)^080h+0
	movlw	05h
u7455:
	clrc
	rlf	(??_Trace_PID+5)^080h+0,f
	addlw	-1
	skipz
	goto	u7455
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(59/8),(59)&7
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_Trace_PID+6)^080h+0
	movlw	06h
u7465:
	clrc
	rlf	(??_Trace_PID+6)^080h+0,f
	addlw	-1
	skipz
	goto	u7465
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(56/8),(56)&7
	movlw	(1 << (07h))
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	0+(??_Trace_PID+6)^080h+0,w
	iorwf	0+(??_Trace_PID+5)^080h+0,w
	iorwf	0+(??_Trace_PID+4)^080h+0,w
	iorwf	0+(??_Trace_PID+3)^080h+0,w
	iorwf	0+(??_Trace_PID+2)^080h+0,w
	iorwf	0+(??_Trace_PID+1)^080h+0,w
	iorwf	(??_Trace_PID+0)^080h+0,w
	movwf	(??_Trace_PID+7)^080h+0
	movf	(??_Trace_PID+7)^080h+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_Trace_Byte)^0180h
	line	85
	
l14821:	
;pid.c: 85: if( RE2==0 && RE1 == 0 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(74/8),(74)&7
	goto	u7471
	goto	u7470
u7471:
	goto	l9232
u7470:
	
l14823:	
	btfsc	(73/8),(73)&7
	goto	u7481
	goto	u7480
u7481:
	goto	l9232
u7480:
	line	87
	
l14825:	
;pid.c: 86: {
;pid.c: 87: turn_err=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(Trace_PID@turn_err)^080h
	clrf	(Trace_PID@turn_err+1)^080h
	line	88
;pid.c: 88: }
	goto	l14843
	line	89
	
l9232:	
;pid.c: 89: else if(RE0 == 0 && RE1 == 0)
	btfsc	(72/8),(72)&7
	goto	u7491
	goto	u7490
u7491:
	goto	l9234
u7490:
	
l14827:	
	btfsc	(73/8),(73)&7
	goto	u7501
	goto	u7500
u7501:
	goto	l9234
u7500:
	line	91
	
l14829:	
;pid.c: 90: {
;pid.c: 91: turn_err=-1;
	movlw	low(-1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Trace_PID@turn_err)^080h
	movlw	high(-1)
	movwf	((Trace_PID@turn_err)^080h)+1
	line	92
;pid.c: 92: }
	goto	l14843
	line	93
	
l9234:	
;pid.c: 93: else if(RE0 == 0 && RE1 == 1)
	btfsc	(72/8),(72)&7
	goto	u7511
	goto	u7510
u7511:
	goto	l9236
u7510:
	
l14831:	
	btfss	(73/8),(73)&7
	goto	u7521
	goto	u7520
u7521:
	goto	l9236
u7520:
	line	95
	
l14833:	
;pid.c: 94: {
;pid.c: 95: turn_err=-2;
	movlw	low(-2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Trace_PID@turn_err)^080h
	movlw	high(-2)
	movwf	((Trace_PID@turn_err)^080h)+1
	line	96
;pid.c: 96: }
	goto	l14843
	line	97
	
l9236:	
;pid.c: 97: else if(RA4 == 0 && RE2 == 0)
	btfsc	(44/8),(44)&7
	goto	u7531
	goto	u7530
u7531:
	goto	l9238
u7530:
	
l14835:	
	btfsc	(74/8),(74)&7
	goto	u7541
	goto	u7540
u7541:
	goto	l9238
u7540:
	line	99
	
l14837:	
;pid.c: 98: {
;pid.c: 99: turn_err=1;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Trace_PID@turn_err)^080h
	movlw	high(01h)
	movwf	((Trace_PID@turn_err)^080h)+1
	line	100
;pid.c: 100: }
	goto	l14843
	line	101
	
l9238:	
;pid.c: 101: else if(RA4 == 0 && RE2 == 1)
	btfsc	(44/8),(44)&7
	goto	u7551
	goto	u7550
u7551:
	goto	l14843
u7550:
	
l14839:	
	btfss	(74/8),(74)&7
	goto	u7561
	goto	u7560
u7561:
	goto	l14843
u7560:
	line	103
	
l14841:	
;pid.c: 102: {
;pid.c: 103: turn_err=2;
	movlw	low(02h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Trace_PID@turn_err)^080h
	movlw	high(02h)
	movwf	((Trace_PID@turn_err)^080h)+1
	goto	l14843
	line	104
	
l9240:	
	goto	l14843
	line	106
	
l9239:	
	goto	l14843
	
l9237:	
	goto	l14843
	
l9235:	
	goto	l14843
	
l9233:	
	
l14843:	
;pid.c: 104: }
;pid.c: 106: err_difference= turn_err - last_err;
	bcf	status, 5	;RP0=0, select bank0
	comf	(Trace_PID@last_err),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_Trace_PID+0)^080h+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	comf	(Trace_PID@last_err+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	((??_Trace_PID+0)^080h+0+1)
	incf	(??_Trace_PID+0)^080h+0,f
	skipnz
	incf	((??_Trace_PID+0)^080h+0+1),f
	movf	(Trace_PID@turn_err)^080h,w
	addwf	0+(??_Trace_PID+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Trace_PID@err_difference)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Trace_PID@turn_err+1)^080h,w
	skipnc
	incf	(Trace_PID@turn_err+1)^080h,w
	addwf	1+(??_Trace_PID+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(Trace_PID@err_difference)
	line	107
	
l14845:	
;pid.c: 107: last_err= turn_err;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Trace_PID@turn_err+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(Trace_PID@last_err+1)
	addwf	(Trace_PID@last_err+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Trace_PID@turn_err)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(Trace_PID@last_err)
	addwf	(Trace_PID@last_err)

	line	109
	
l14847:	
;pid.c: 109: return (int)(turn_err*Kp + err_difference*Kd);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Trace_PID@turn_err+1)^080h,w
	clrf	(?___awtoft+1)^080h
	addwf	(?___awtoft+1)^080h
	movf	(Trace_PID@turn_err)^080h,w
	clrf	(?___awtoft)^080h
	addwf	(?___awtoft)^080h

	fcall	___awtoft
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___awtoft))^080h,w
	movwf	0+(?___ftmul)^080h+03h
	movf	(1+(?___awtoft))^080h,w
	movwf	1+(?___ftmul)^080h+03h
	movf	(2+(?___awtoft))^080h,w
	movwf	2+(?___ftmul)^080h+03h
	movf	(Trace_PID@Kp)^080h,w
	movwf	(?___ftmul)^080h
	movf	(Trace_PID@Kp+1)^080h,w
	movwf	(?___ftmul+1)^080h
	movf	(Trace_PID@Kp+2)^080h,w
	movwf	(?___ftmul+2)^080h
	fcall	___ftmul
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftmul))^080h,w
	movwf	0+(?___ftadd)^080h+03h
	movf	(1+(?___ftmul))^080h,w
	movwf	1+(?___ftadd)^080h+03h
	movf	(2+(?___ftmul))^080h,w
	movwf	2+(?___ftadd)^080h+03h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Trace_PID@err_difference+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(?___awtoft+1)^080h
	addwf	(?___awtoft+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Trace_PID@err_difference),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(?___awtoft)^080h
	addwf	(?___awtoft)^080h

	fcall	___awtoft
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___awtoft))^080h,w
	movwf	0+(?___ftmul)^080h+03h
	movf	(1+(?___awtoft))^080h,w
	movwf	1+(?___ftmul)^080h+03h
	movf	(2+(?___awtoft))^080h,w
	movwf	2+(?___ftmul)^080h+03h
	movf	(Trace_PID@Kd)^080h,w
	movwf	(?___ftmul)^080h
	movf	(Trace_PID@Kd+1)^080h,w
	movwf	(?___ftmul+1)^080h
	movf	(Trace_PID@Kd+2)^080h,w
	movwf	(?___ftmul+2)^080h
	fcall	___ftmul
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftmul))^080h,w
	movwf	(?___ftadd)^080h
	movf	(1+(?___ftmul))^080h,w
	movwf	(?___ftadd+1)^080h
	movf	(2+(?___ftmul))^080h,w
	movwf	(?___ftadd+2)^080h
	fcall	___ftadd
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftadd))^080h,w
	movwf	(?___fttol)^080h
	movf	(1+(?___ftadd))^080h,w
	movwf	(?___fttol+1)^080h
	movf	(2+(?___ftadd))^080h,w
	movwf	(?___fttol+2)^080h
	fcall	___fttol
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(((0+(?___fttol))^080h)),w
	clrf	(?_Trace_PID+1)^080h
	addwf	(?_Trace_PID+1)^080h
	movf	0+(((0+(?___fttol))^080h)),w
	clrf	(?_Trace_PID)^080h
	addwf	(?_Trace_PID)^080h

	goto	l9241
	
l14849:	
	line	110
	
l9241:	
	return
	opt stack 0
GLOBAL	__end_of_Trace_PID
	__end_of_Trace_PID:
;; =============== function _Trace_PID ends ============

	signat	_Trace_PID,90
	global	___lwtoft
psect	text1159,local,class=CODE,delta=2
global __ptext1159
__ptext1159:

;; *************** function ___lwtoft *****************
;; Defined at:
;;		line 29 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[BANK1 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    8[BANK1 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       3       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_csb
;; This function uses a non-reentrant model
;;
psect	text1159
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwtoft.c"
	line	29
	global	__size_of___lwtoft
	__size_of___lwtoft	equ	__end_of___lwtoft-___lwtoft
	
___lwtoft:	
	opt	stack 1
; Regs used in ___lwtoft: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
l14813:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___lwtoft@c)^080h,w
	movwf	(?___ftpack)^080h
	movf	(___lwtoft@c+1)^080h,w
	movwf	(?___ftpack+1)^080h
	clrf	(?___ftpack+2)^080h
	movlw	(08Eh)
	movwf	(??___lwtoft+0)^080h+0
	movf	(??___lwtoft+0)^080h+0,w
	movwf	0+(?___ftpack)^080h+03h
	clrf	0+(?___ftpack)^080h+04h
	fcall	___ftpack
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftpack))^080h,w
	movwf	(?___lwtoft)^080h
	movf	(1+(?___ftpack))^080h,w
	movwf	(?___lwtoft+1)^080h
	movf	(2+(?___ftpack))^080h,w
	movwf	(?___lwtoft+2)^080h
	goto	l10888
	
l14815:	
	line	31
	
l10888:	
	return
	opt stack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
;; =============== function ___lwtoft ends ============

	signat	___lwtoft,4219
	global	___awtoft
psect	text1160,local,class=CODE,delta=2
global __ptext1160
__ptext1160:

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 33 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2   22[BANK1 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   27[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   22[BANK1 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       3       0       0
;;      Locals:         0       0       1       0       0
;;      Temps:          0       0       2       0       0
;;      Totals:         0       0       6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_Trace_PID
;; This function uses a non-reentrant model
;;
psect	text1160
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt	stack 1
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l14805:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(___awtoft@sign)^080h
	line	37
	btfss	(___awtoft@c+1)^080h,7
	goto	u7401
	goto	u7400
u7401:
	goto	l14809
u7400:
	line	38
	
l14807:	
	comf	(___awtoft@c)^080h,f
	comf	(___awtoft@c+1)^080h,f
	incf	(___awtoft@c)^080h,f
	skipnz
	incf	(___awtoft@c+1)^080h,f
	line	39
	clrf	(___awtoft@sign)^080h
	bsf	status,0
	rlf	(___awtoft@sign)^080h,f
	goto	l14809
	line	40
	
l10801:	
	line	41
	
l14809:	
	movf	(___awtoft@c)^080h,w
	movwf	(?___ftpack)^080h
	movf	(___awtoft@c+1)^080h,w
	movwf	(?___ftpack+1)^080h
	clrf	(?___ftpack+2)^080h
	movlw	(08Eh)
	movwf	(??___awtoft+0)^080h+0
	movf	(??___awtoft+0)^080h+0,w
	movwf	0+(?___ftpack)^080h+03h
	movf	(___awtoft@sign)^080h,w
	movwf	(??___awtoft+1)^080h+0
	movf	(??___awtoft+1)^080h+0,w
	movwf	0+(?___ftpack)^080h+04h
	fcall	___ftpack
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftpack))^080h,w
	movwf	(?___awtoft)^080h
	movf	(1+(?___ftpack))^080h,w
	movwf	(?___awtoft+1)^080h
	movf	(2+(?___ftpack))^080h,w
	movwf	(?___awtoft+2)^080h
	goto	l10802
	
l14811:	
	line	42
	
l10802:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
;; =============== function ___awtoft ends ============

	signat	___awtoft,4219
	global	___ftmul
psect	text1161,local,class=CODE,delta=2
global __ptext1161
__ptext1161:

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   28[BANK1 ] float 
;;  f2              3   31[BANK1 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   39[BANK1 ] unsigned um
;;  sign            1   43[BANK1 ] unsigned char 
;;  cntr            1   42[BANK1 ] unsigned char 
;;  exp             1   38[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   28[BANK1 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       6       0       0
;;      Locals:         0       0       6       0       0
;;      Temps:          0       0       4       0       0
;;      Totals:         0       0      16       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_Trace_PID
;;		_csb
;; This function uses a non-reentrant model
;;
psect	text1161
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 1
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l14755:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftmul@f1)^080h,w
	movwf	((??___ftmul+0)^080h+0)
	movf	(___ftmul@f1+1)^080h,w
	movwf	((??___ftmul+0)^080h+0+1)
	movf	(___ftmul@f1+2)^080h,w
	movwf	((??___ftmul+0)^080h+0+2)
	clrc
	rlf	(??___ftmul+0)^080h+1,w
	rlf	(??___ftmul+0)^080h+2,w
	movwf	(??___ftmul+3)^080h+0
	movf	(??___ftmul+3)^080h+0,w
	movwf	(___ftmul@exp)^080h
	movf	((___ftmul@exp)^080h),f
	skipz
	goto	u7261
	goto	u7260
u7261:
	goto	l14761
u7260:
	line	57
	
l14757:	
	movlw	0x0
	movwf	(?___ftmul)^080h
	movlw	0x0
	movwf	(?___ftmul+1)^080h
	movlw	0x0
	movwf	(?___ftmul+2)^080h
	goto	l10764
	
l14759:	
	goto	l10764
	
l10763:	
	line	58
	
l14761:	
	movf	(___ftmul@f2)^080h,w
	movwf	((??___ftmul+0)^080h+0)
	movf	(___ftmul@f2+1)^080h,w
	movwf	((??___ftmul+0)^080h+0+1)
	movf	(___ftmul@f2+2)^080h,w
	movwf	((??___ftmul+0)^080h+0+2)
	clrc
	rlf	(??___ftmul+0)^080h+1,w
	rlf	(??___ftmul+0)^080h+2,w
	movwf	(??___ftmul+3)^080h+0
	movf	(??___ftmul+3)^080h+0,w
	movwf	(___ftmul@sign)^080h
	movf	((___ftmul@sign)^080h),f
	skipz
	goto	u7271
	goto	u7270
u7271:
	goto	l14767
u7270:
	line	59
	
l14763:	
	movlw	0x0
	movwf	(?___ftmul)^080h
	movlw	0x0
	movwf	(?___ftmul+1)^080h
	movlw	0x0
	movwf	(?___ftmul+2)^080h
	goto	l10764
	
l14765:	
	goto	l10764
	
l10765:	
	line	60
	
l14767:	
	movf	(___ftmul@sign)^080h,w
	addlw	07Bh
	movwf	(??___ftmul+0)^080h+0
	movf	(??___ftmul+0)^080h+0,w
	addwf	(___ftmul@exp)^080h,f
	line	61
	movf	(___ftmul@f1)^080h,w
	movwf	((??___ftmul+0)^080h+0)
	movf	(___ftmul@f1+1)^080h,w
	movwf	((??___ftmul+0)^080h+0+1)
	movf	(___ftmul@f1+2)^080h,w
	movwf	((??___ftmul+0)^080h+0+2)
	movlw	010h
u7285:
	clrc
	rrf	(??___ftmul+0)^080h+2,f
	rrf	(??___ftmul+0)^080h+1,f
	rrf	(??___ftmul+0)^080h+0,f
u7280:
	addlw	-1
	skipz
	goto	u7285
	movf	0+(??___ftmul+0)^080h+0,w
	movwf	(??___ftmul+3)^080h+0
	movf	(??___ftmul+3)^080h+0,w
	movwf	(___ftmul@sign)^080h
	line	62
	movf	(___ftmul@f2)^080h,w
	movwf	((??___ftmul+0)^080h+0)
	movf	(___ftmul@f2+1)^080h,w
	movwf	((??___ftmul+0)^080h+0+1)
	movf	(___ftmul@f2+2)^080h,w
	movwf	((??___ftmul+0)^080h+0+2)
	movlw	010h
u7295:
	clrc
	rrf	(??___ftmul+0)^080h+2,f
	rrf	(??___ftmul+0)^080h+1,f
	rrf	(??___ftmul+0)^080h+0,f
u7290:
	addlw	-1
	skipz
	goto	u7295
	movf	0+(??___ftmul+0)^080h+0,w
	movwf	(??___ftmul+3)^080h+0
	movf	(??___ftmul+3)^080h+0,w
	xorwf	(___ftmul@sign)^080h,f
	line	63
	movlw	(080h)
	movwf	(??___ftmul+0)^080h+0
	movf	(??___ftmul+0)^080h+0,w
	andwf	(___ftmul@sign)^080h,f
	line	64
	
l14769:	
	bsf	(___ftmul@f1)^080h+(15/8),(15)&7
	line	66
	
l14771:	
	bsf	(___ftmul@f2)^080h+(15/8),(15)&7
	line	67
	
l14773:	
	movlw	0FFh
	andwf	(___ftmul@f2)^080h,f
	movlw	0FFh
	andwf	(___ftmul@f2+1)^080h,f
	movlw	0
	andwf	(___ftmul@f2+2)^080h,f
	line	68
	
l14775:	
	movlw	0
	movwf	(___ftmul@f3_as_product)^080h
	movlw	0
	movwf	(___ftmul@f3_as_product+1)^080h
	movlw	0
	movwf	(___ftmul@f3_as_product+2)^080h
	line	69
	
l14777:	
	movlw	(07h)
	movwf	(??___ftmul+0)^080h+0
	movf	(??___ftmul+0)^080h+0,w
	movwf	(___ftmul@cntr)^080h
	goto	l14779
	line	70
	
l10766:	
	line	71
	
l14779:	
	btfss	(___ftmul@f1)^080h,(0)&7
	goto	u7301
	goto	u7300
u7301:
	goto	l14783
u7300:
	line	72
	
l14781:	
	movf	(___ftmul@f2)^080h,w
	addwf	(___ftmul@f3_as_product)^080h,f
	movf	(___ftmul@f2+1)^080h,w
	clrz
	skipnc
	incf	(___ftmul@f2+1)^080h,w
	skipnz
	goto	u7311
	addwf	(___ftmul@f3_as_product+1)^080h,f
u7311:
	movf	(___ftmul@f2+2)^080h,w
	clrz
	skipnc
	incf	(___ftmul@f2+2)^080h,w
	skipnz
	goto	u7312
	addwf	(___ftmul@f3_as_product+2)^080h,f
u7312:

	goto	l14783
	
l10767:	
	line	73
	
l14783:	
	movlw	01h
u7325:
	clrc
	rrf	(___ftmul@f1+2)^080h,f
	rrf	(___ftmul@f1+1)^080h,f
	rrf	(___ftmul@f1)^080h,f
	addlw	-1
	skipz
	goto	u7325

	line	74
	
l14785:	
	movlw	01h
u7335:
	clrc
	rlf	(___ftmul@f2)^080h,f
	rlf	(___ftmul@f2+1)^080h,f
	rlf	(___ftmul@f2+2)^080h,f
	addlw	-1
	skipz
	goto	u7335
	line	75
	
l14787:	
	movlw	low(01h)
	subwf	(___ftmul@cntr)^080h,f
	btfss	status,2
	goto	u7341
	goto	u7340
u7341:
	goto	l14779
u7340:
	goto	l14789
	
l10768:	
	line	76
	
l14789:	
	movlw	(09h)
	movwf	(??___ftmul+0)^080h+0
	movf	(??___ftmul+0)^080h+0,w
	movwf	(___ftmul@cntr)^080h
	goto	l14791
	line	77
	
l10769:	
	line	78
	
l14791:	
	btfss	(___ftmul@f1)^080h,(0)&7
	goto	u7351
	goto	u7350
u7351:
	goto	l14795
u7350:
	line	79
	
l14793:	
	movf	(___ftmul@f2)^080h,w
	addwf	(___ftmul@f3_as_product)^080h,f
	movf	(___ftmul@f2+1)^080h,w
	clrz
	skipnc
	incf	(___ftmul@f2+1)^080h,w
	skipnz
	goto	u7361
	addwf	(___ftmul@f3_as_product+1)^080h,f
u7361:
	movf	(___ftmul@f2+2)^080h,w
	clrz
	skipnc
	incf	(___ftmul@f2+2)^080h,w
	skipnz
	goto	u7362
	addwf	(___ftmul@f3_as_product+2)^080h,f
u7362:

	goto	l14795
	
l10770:	
	line	80
	
l14795:	
	movlw	01h
u7375:
	clrc
	rrf	(___ftmul@f1+2)^080h,f
	rrf	(___ftmul@f1+1)^080h,f
	rrf	(___ftmul@f1)^080h,f
	addlw	-1
	skipz
	goto	u7375

	line	81
	
l14797:	
	movlw	01h
u7385:
	clrc
	rrf	(___ftmul@f3_as_product+2)^080h,f
	rrf	(___ftmul@f3_as_product+1)^080h,f
	rrf	(___ftmul@f3_as_product)^080h,f
	addlw	-1
	skipz
	goto	u7385

	line	82
	
l14799:	
	movlw	low(01h)
	subwf	(___ftmul@cntr)^080h,f
	btfss	status,2
	goto	u7391
	goto	u7390
u7391:
	goto	l14791
u7390:
	goto	l14801
	
l10771:	
	line	83
	
l14801:	
	movf	(___ftmul@f3_as_product)^080h,w
	movwf	(?___ftpack)^080h
	movf	(___ftmul@f3_as_product+1)^080h,w
	movwf	(?___ftpack+1)^080h
	movf	(___ftmul@f3_as_product+2)^080h,w
	movwf	(?___ftpack+2)^080h
	movf	(___ftmul@exp)^080h,w
	movwf	(??___ftmul+0)^080h+0
	movf	(??___ftmul+0)^080h+0,w
	movwf	0+(?___ftpack)^080h+03h
	movf	(___ftmul@sign)^080h,w
	movwf	(??___ftmul+1)^080h+0
	movf	(??___ftmul+1)^080h+0,w
	movwf	0+(?___ftpack)^080h+04h
	fcall	___ftpack
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftpack))^080h,w
	movwf	(?___ftmul)^080h
	movf	(1+(?___ftpack))^080h,w
	movwf	(?___ftmul+1)^080h
	movf	(2+(?___ftpack))^080h,w
	movwf	(?___ftmul+2)^080h
	goto	l10764
	
l14803:	
	line	84
	
l10764:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftadd
psect	text1162,local,class=CODE,delta=2
global __ptext1162
__ptext1162:

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 87 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   44[BANK1 ] float 
;;  f2              3   47[BANK1 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   56[BANK1 ] unsigned char 
;;  exp2            1   55[BANK1 ] unsigned char 
;;  sign            1   54[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   44[BANK1 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       6       0       0
;;      Locals:         0       0       3       0       0
;;      Temps:          0       0       4       0       0
;;      Totals:         0       0      13       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_Trace_PID
;;		___ftsub
;; This function uses a non-reentrant model
;;
psect	text1162
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
	opt	stack 1
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l14685:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftadd@f1)^080h,w
	movwf	((??___ftadd+0)^080h+0)
	movf	(___ftadd@f1+1)^080h,w
	movwf	((??___ftadd+0)^080h+0+1)
	movf	(___ftadd@f1+2)^080h,w
	movwf	((??___ftadd+0)^080h+0+2)
	clrc
	rlf	(??___ftadd+0)^080h+1,w
	rlf	(??___ftadd+0)^080h+2,w
	movwf	(??___ftadd+3)^080h+0
	movf	(??___ftadd+3)^080h+0,w
	movwf	(___ftadd@exp1)^080h
	line	91
	movf	(___ftadd@f2)^080h,w
	movwf	((??___ftadd+0)^080h+0)
	movf	(___ftadd@f2+1)^080h,w
	movwf	((??___ftadd+0)^080h+0+1)
	movf	(___ftadd@f2+2)^080h,w
	movwf	((??___ftadd+0)^080h+0+2)
	clrc
	rlf	(??___ftadd+0)^080h+1,w
	rlf	(??___ftadd+0)^080h+2,w
	movwf	(??___ftadd+3)^080h+0
	movf	(??___ftadd+3)^080h+0,w
	movwf	(___ftadd@exp2)^080h
	line	92
	
l14687:	
	movf	(___ftadd@exp1)^080h,w
	skipz
	goto	u7020
	goto	l14693
u7020:
	
l14689:	
	movf	(___ftadd@exp2)^080h,w
	subwf	(___ftadd@exp1)^080h,w
	skipnc
	goto	u7031
	goto	u7030
u7031:
	goto	l14697
u7030:
	
l14691:	
	decf	(___ftadd@exp1)^080h,w
	xorlw	0ffh
	addwf	(___ftadd@exp2)^080h,w
	movwf	(??___ftadd+0)^080h+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)^080h+0,w
	skipc
	goto	u7041
	goto	u7040
u7041:
	goto	l14697
u7040:
	goto	l14693
	
l10711:	
	line	93
	
l14693:	
	movf	(___ftadd@f2)^080h,w
	movwf	(?___ftadd)^080h
	movf	(___ftadd@f2+1)^080h,w
	movwf	(?___ftadd+1)^080h
	movf	(___ftadd@f2+2)^080h,w
	movwf	(?___ftadd+2)^080h
	goto	l10712
	
l14695:	
	goto	l10712
	
l10709:	
	line	94
	
l14697:	
	movf	(___ftadd@exp2)^080h,w
	skipz
	goto	u7050
	goto	l10715
u7050:
	
l14699:	
	movf	(___ftadd@exp1)^080h,w
	subwf	(___ftadd@exp2)^080h,w
	skipnc
	goto	u7061
	goto	u7060
u7061:
	goto	l14703
u7060:
	
l14701:	
	decf	(___ftadd@exp2)^080h,w
	xorlw	0ffh
	addwf	(___ftadd@exp1)^080h,w
	movwf	(??___ftadd+0)^080h+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)^080h+0,w
	skipc
	goto	u7071
	goto	u7070
u7071:
	goto	l14703
u7070:
	
l10715:	
	line	95
	goto	l10712
	
l10713:	
	line	96
	
l14703:	
	movlw	(06h)
	movwf	(??___ftadd+0)^080h+0
	movf	(??___ftadd+0)^080h+0,w
	movwf	(___ftadd@sign)^080h
	line	97
	
l14705:	
	btfss	(___ftadd@f1+2)^080h,(23)&7
	goto	u7081
	goto	u7080
u7081:
	goto	l10716
u7080:
	line	98
	
l14707:	
	bsf	(___ftadd@sign)^080h+(7/8),(7)&7
	
l10716:	
	line	99
	btfss	(___ftadd@f2+2)^080h,(23)&7
	goto	u7091
	goto	u7090
u7091:
	goto	l10717
u7090:
	line	100
	
l14709:	
	bsf	(___ftadd@sign)^080h+(6/8),(6)&7
	
l10717:	
	line	101
	bsf	(___ftadd@f1)^080h+(15/8),(15)&7
	line	102
	
l14711:	
	movlw	0FFh
	andwf	(___ftadd@f1)^080h,f
	movlw	0FFh
	andwf	(___ftadd@f1+1)^080h,f
	movlw	0
	andwf	(___ftadd@f1+2)^080h,f
	line	103
	
l14713:	
	bsf	(___ftadd@f2)^080h+(15/8),(15)&7
	line	104
	movlw	0FFh
	andwf	(___ftadd@f2)^080h,f
	movlw	0FFh
	andwf	(___ftadd@f2+1)^080h,f
	movlw	0
	andwf	(___ftadd@f2+2)^080h,f
	line	106
	movf	(___ftadd@exp2)^080h,w
	subwf	(___ftadd@exp1)^080h,w
	skipnc
	goto	u7101
	goto	u7100
u7101:
	goto	l14725
u7100:
	goto	l14715
	line	109
	
l10719:	
	line	110
	
l14715:	
	movlw	01h
u7115:
	clrc
	rlf	(___ftadd@f2)^080h,f
	rlf	(___ftadd@f2+1)^080h,f
	rlf	(___ftadd@f2+2)^080h,f
	addlw	-1
	skipz
	goto	u7115
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2)^080h,f
	line	112
	
l14717:	
	movf	(___ftadd@exp2)^080h,w
	xorwf	(___ftadd@exp1)^080h,w
	skipnz
	goto	u7121
	goto	u7120
u7121:
	goto	l14723
u7120:
	
l14719:	
	movlw	low(01h)
	subwf	(___ftadd@sign)^080h,f
	movf	((___ftadd@sign)^080h),w
	andlw	07h
	btfss	status,2
	goto	u7131
	goto	u7130
u7131:
	goto	l14715
u7130:
	goto	l14723
	
l10721:	
	goto	l14723
	
l10722:	
	line	113
	goto	l14723
	
l10724:	
	line	114
	
l14721:	
	movlw	01h
u7145:
	clrc
	rrf	(___ftadd@f1+2)^080h,f
	rrf	(___ftadd@f1+1)^080h,f
	rrf	(___ftadd@f1)^080h,f
	addlw	-1
	skipz
	goto	u7145

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)^080h+0
	movf	(??___ftadd+0)^080h+0,w
	addwf	(___ftadd@exp1)^080h,f
	goto	l14723
	line	116
	
l10723:	
	line	113
	
l14723:	
	movf	(___ftadd@exp1)^080h,w
	xorwf	(___ftadd@exp2)^080h,w
	skipz
	goto	u7151
	goto	u7150
u7151:
	goto	l14721
u7150:
	goto	l10726
	
l10725:	
	line	117
	goto	l10726
	
l10718:	
	
l14725:	
	movf	(___ftadd@exp1)^080h,w
	subwf	(___ftadd@exp2)^080h,w
	skipnc
	goto	u7161
	goto	u7160
u7161:
	goto	l10726
u7160:
	goto	l14727
	line	120
	
l10728:	
	line	121
	
l14727:	
	movlw	01h
u7175:
	clrc
	rlf	(___ftadd@f1)^080h,f
	rlf	(___ftadd@f1+1)^080h,f
	rlf	(___ftadd@f1+2)^080h,f
	addlw	-1
	skipz
	goto	u7175
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1)^080h,f
	line	123
	
l14729:	
	movf	(___ftadd@exp2)^080h,w
	xorwf	(___ftadd@exp1)^080h,w
	skipnz
	goto	u7181
	goto	u7180
u7181:
	goto	l14735
u7180:
	
l14731:	
	movlw	low(01h)
	subwf	(___ftadd@sign)^080h,f
	movf	((___ftadd@sign)^080h),w
	andlw	07h
	btfss	status,2
	goto	u7191
	goto	u7190
u7191:
	goto	l14727
u7190:
	goto	l14735
	
l10730:	
	goto	l14735
	
l10731:	
	line	124
	goto	l14735
	
l10733:	
	line	125
	
l14733:	
	movlw	01h
u7205:
	clrc
	rrf	(___ftadd@f2+2)^080h,f
	rrf	(___ftadd@f2+1)^080h,f
	rrf	(___ftadd@f2)^080h,f
	addlw	-1
	skipz
	goto	u7205

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)^080h+0
	movf	(??___ftadd+0)^080h+0,w
	addwf	(___ftadd@exp2)^080h,f
	goto	l14735
	line	127
	
l10732:	
	line	124
	
l14735:	
	movf	(___ftadd@exp1)^080h,w
	xorwf	(___ftadd@exp2)^080h,w
	skipz
	goto	u7211
	goto	u7210
u7211:
	goto	l14733
u7210:
	goto	l10726
	
l10734:	
	goto	l10726
	line	128
	
l10727:	
	line	129
	
l10726:	
	btfss	(___ftadd@sign)^080h,(7)&7
	goto	u7221
	goto	u7220
u7221:
	goto	l14739
u7220:
	line	131
	
l14737:	
	movlw	0FFh
	xorwf	(___ftadd@f1)^080h,f
	movlw	0FFh
	xorwf	(___ftadd@f1+1)^080h,f
	movlw	0FFh
	xorwf	(___ftadd@f1+2)^080h,f
	line	132
	movlw	01h
	addwf	(___ftadd@f1)^080h,f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+1)^080h,f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+2)^080h,f
	goto	l14739
	line	133
	
l10735:	
	line	134
	
l14739:	
	btfss	(___ftadd@sign)^080h,(6)&7
	goto	u7231
	goto	u7230
u7231:
	goto	l14743
u7230:
	line	136
	
l14741:	
	movlw	0FFh
	xorwf	(___ftadd@f2)^080h,f
	movlw	0FFh
	xorwf	(___ftadd@f2+1)^080h,f
	movlw	0FFh
	xorwf	(___ftadd@f2+2)^080h,f
	line	137
	movlw	01h
	addwf	(___ftadd@f2)^080h,f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1)^080h,f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2)^080h,f
	goto	l14743
	line	138
	
l10736:	
	line	139
	
l14743:	
	clrf	(___ftadd@sign)^080h
	line	140
	movf	(___ftadd@f1)^080h,w
	addwf	(___ftadd@f2)^080h,f
	movf	(___ftadd@f1+1)^080h,w
	clrz
	skipnc
	incf	(___ftadd@f1+1)^080h,w
	skipnz
	goto	u7241
	addwf	(___ftadd@f2+1)^080h,f
u7241:
	movf	(___ftadd@f1+2)^080h,w
	clrz
	skipnc
	incf	(___ftadd@f1+2)^080h,w
	skipnz
	goto	u7242
	addwf	(___ftadd@f2+2)^080h,f
u7242:

	line	141
	
l14745:	
	btfss	(___ftadd@f2+2)^080h,(23)&7
	goto	u7251
	goto	u7250
u7251:
	goto	l14751
u7250:
	line	142
	
l14747:	
	movlw	0FFh
	xorwf	(___ftadd@f2)^080h,f
	movlw	0FFh
	xorwf	(___ftadd@f2+1)^080h,f
	movlw	0FFh
	xorwf	(___ftadd@f2+2)^080h,f
	line	143
	movlw	01h
	addwf	(___ftadd@f2)^080h,f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1)^080h,f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2)^080h,f
	line	144
	
l14749:	
	clrf	(___ftadd@sign)^080h
	bsf	status,0
	rlf	(___ftadd@sign)^080h,f
	goto	l14751
	line	145
	
l10737:	
	line	146
	
l14751:	
	movf	(___ftadd@f2)^080h,w
	movwf	(?___ftpack)^080h
	movf	(___ftadd@f2+1)^080h,w
	movwf	(?___ftpack+1)^080h
	movf	(___ftadd@f2+2)^080h,w
	movwf	(?___ftpack+2)^080h
	movf	(___ftadd@exp1)^080h,w
	movwf	(??___ftadd+0)^080h+0
	movf	(??___ftadd+0)^080h+0,w
	movwf	0+(?___ftpack)^080h+03h
	movf	(___ftadd@sign)^080h,w
	movwf	(??___ftadd+1)^080h+0
	movf	(??___ftadd+1)^080h+0,w
	movwf	0+(?___ftpack)^080h+04h
	fcall	___ftpack
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftpack))^080h,w
	movwf	(?___ftadd)^080h
	movf	(1+(?___ftpack))^080h,w
	movwf	(?___ftadd+1)^080h
	movf	(2+(?___ftpack))^080h,w
	movwf	(?___ftadd+2)^080h
	goto	l10712
	
l14753:	
	line	148
	
l10712:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
;; =============== function ___ftadd ends ============

	signat	___ftadd,8315
	global	_Delay12us
psect	text1163,local,class=CODE,delta=2
global __ptext1163
__ptext1163:

;; *************** function _Delay12us *****************
;; Defined at:
;;		line 13 in file "D:\6_pic_project\00_Design_Flow_Car\Driver\csb.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    1[BANK1 ] unsigned char 
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
;;      Locals:         0       0       1       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_csb
;; This function uses a non-reentrant model
;;
psect	text1163
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\csb.c"
	line	13
	global	__size_of_Delay12us
	__size_of_Delay12us	equ	__end_of_Delay12us-_Delay12us
	
_Delay12us:	
	opt	stack 2
; Regs used in _Delay12us: [wreg+status,2+status,0]
	line	15
	
l14679:	
;csb.c: 14: unsigned char i;
;csb.c: 15: _nop();
	nop
	line	16
;csb.c: 16: _nop();
	nop
	line	17
	
l14681:	
;csb.c: 17: i=20;
	movlw	(014h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_Delay12us+0)^080h+0
	movf	(??_Delay12us+0)^080h+0,w
	movwf	(Delay12us@i)^080h
	line	18
;csb.c: 18: while(i--);
	goto	l14683
	
l9933:	
	goto	l14683
	
l9932:	
	
l14683:	
	movlw	low(01h)
	subwf	(Delay12us@i)^080h,f
	movf	((Delay12us@i)^080h),w
	xorlw	0FFh
	skipz
	goto	u7011
	goto	u7010
u7011:
	goto	l14683
u7010:
	goto	l9935
	
l9934:	
	line	19
	
l9935:	
	return
	opt stack 0
GLOBAL	__end_of_Delay12us
	__end_of_Delay12us:
;; =============== function _Delay12us ends ============

	signat	_Delay12us,88
	global	_LCD1602_Pow
psect	text1164,local,class=CODE,delta=2
global __ptext1164
__ptext1164:

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
psect	text1164
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
	
l14665:	
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
	
l14667:	
;LCD1602.c: 113: for(i=0;i<Y;i++)
	clrf	(LCD1602_Pow@i)^080h
	goto	l14673
	line	114
	
l1480:	
	line	115
	
l14669:	
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
	
l14671:	
	movlw	(01h)
	movwf	(??_LCD1602_Pow+0)^080h+0
	movf	(??_LCD1602_Pow+0)^080h+0,w
	addwf	(LCD1602_Pow@i)^080h,f
	goto	l14673
	
l1479:	
	
l14673:	
	movf	(LCD1602_Pow@Y)^080h,w
	subwf	(LCD1602_Pow@i)^080h,w
	skipc
	goto	u7001
	goto	u7000
u7001:
	goto	l14669
u7000:
	goto	l14675
	
l1481:	
	line	117
	
l14675:	
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

	goto	l1482
	
l14677:	
	line	118
	
l1482:	
	return
	opt stack 0
GLOBAL	__end_of_LCD1602_Pow
	__end_of_LCD1602_Pow:
;; =============== function _LCD1602_Pow ends ============

	signat	_LCD1602_Pow,8316
	global	_LCD1602_WriteData
psect	text1165,local,class=CODE,delta=2
global __ptext1165
__ptext1165:

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
psect	text1165
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
	
l14653:	
;LCD1602.c: 39: PORTD=Data;
	movf	(LCD1602_WriteData@Data)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	40
	
l14655:	
;LCD1602.c: 40: RA5=1;RA2=0;RA3=0;LCD1602_Delay();RA3=1;
	bsf	(45/8),(45)&7
	
l14657:	
	bcf	(42/8),(42)&7
	
l14659:	
	bcf	(43/8),(43)&7
	
l14661:	
	fcall	_LCD1602_Delay
	
l14663:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(43/8),(43)&7
	line	41
	
l1458:	
	return
	opt stack 0
GLOBAL	__end_of_LCD1602_WriteData
	__end_of_LCD1602_WriteData:
;; =============== function _LCD1602_WriteData ends ============

	signat	_LCD1602_WriteData,4216
	global	_LCD1602_WriteCommand
psect	text1166,local,class=CODE,delta=2
global __ptext1166
__ptext1166:

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
psect	text1166
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
	
l14641:	
;LCD1602.c: 27: PORTD=Command;
	movf	(LCD1602_WriteCommand@Command)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	28
	
l14643:	
;LCD1602.c: 28: RA5=0;RA2=0;RA3=0;LCD1602_Delay();RA3=1;
	bcf	(45/8),(45)&7
	
l14645:	
	bcf	(42/8),(42)&7
	
l14647:	
	bcf	(43/8),(43)&7
	
l14649:	
	fcall	_LCD1602_Delay
	
l14651:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(43/8),(43)&7
	line	29
	
l1455:	
	return
	opt stack 0
GLOBAL	__end_of_LCD1602_WriteCommand
	__end_of_LCD1602_WriteCommand:
;; =============== function _LCD1602_WriteCommand ends ============

	signat	_LCD1602_WriteCommand,4216
	global	_printf
psect	text1167,local,class=CODE,delta=2
global __ptext1167
__ptext1167:

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
psect	text1167
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
	
l14587:	
	movlw	(?_printf)&0ffh
	movwf	(??_printf+0)^080h+0
	movf	(??_printf+0)^080h+0,w
	movwf	(printf@ap)^080h
	line	540
	goto	l14639
	
l9963:	
	line	542
	
l14589:	
	movf	(printf@c)^080h,w
	xorlw	025h
	skipnz
	goto	u6921
	goto	u6920
u6921:
	goto	l9964
u6920:
	line	545
	
l14591:	
	movf	(printf@c)^080h,w
	fcall	_putch
	line	546
	goto	l14639
	line	547
	
l9964:	
	line	552
	clrf	(printf@flag)^080h
	line	638
	goto	l14601
	line	640
	
l9966:	
	line	641
	goto	l9982
	line	700
	
l9968:	
	goto	l14603
	line	701
	
l9969:	
	line	702
	goto	l14603
	line	787
	
l9971:	
	line	802
	
l14593:	
	movf	(printf@ap)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_printf+0)^080h+0
	movf	(??_printf+0)^080h+0,w
	movwf	(printf@c)^080h
	
l14595:	
	movlw	(02h)
	movwf	(??_printf+0)^080h+0
	movf	(??_printf+0)^080h+0,w
	addwf	(printf@ap)^080h,f
	goto	l14597
	line	805
	
l9972:	
	line	812
	
l14597:	
	movf	(printf@c)^080h,w
	fcall	_putch
	line	813
	goto	l14639
	line	825
	
l14599:	
	goto	l14603
	line	638
	
l9965:	
	
l14601:	
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
	goto	l9982
	xorlw	99^0	; case 99
	skipnz
	goto	l14593
	xorlw	100^99	; case 100
	skipnz
	goto	l14603
	xorlw	105^100	; case 105
	skipnz
	goto	l14603
	goto	l14597
	opt asmopt_on

	line	825
	
l9970:	
	line	1254
	
l14603:	
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
	
l14605:	
	movlw	(02h)
	movwf	(??_printf+0)^080h+0
	movf	(??_printf+0)^080h+0,w
	addwf	(printf@ap)^080h,f
	line	1256
	
l14607:	
	btfss	(printf@_val+1)^080h,7
	goto	u6931
	goto	u6930
u6931:
	goto	l14613
u6930:
	line	1257
	
l14609:	
	movlw	(03h)
	movwf	(??_printf+0)^080h+0
	movf	(??_printf+0)^080h+0,w
	iorwf	(printf@flag)^080h,f
	line	1258
	
l14611:	
	comf	(printf@_val)^080h,f
	comf	(printf@_val+1)^080h,f
	incf	(printf@_val)^080h,f
	skipnz
	incf	(printf@_val+1)^080h,f
	goto	l14613
	line	1259
	
l9973:	
	line	1300
	
l14613:	
	clrf	(printf@c)^080h
	bsf	status,0
	rlf	(printf@c)^080h,f
	
l14615:	
	movf	(printf@c)^080h,w
	xorlw	05h
	skipz
	goto	u6941
	goto	u6940
u6941:
	goto	l14619
u6940:
	goto	l14627
	
l14617:	
	goto	l14627
	line	1301
	
l9974:	
	
l14619:	
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
	goto	u6955
	movf	0+(??_printf+1)^080h+0,w
	subwf	(printf@_val)^080h,w
u6955:
	skipnc
	goto	u6951
	goto	u6950
u6951:
	goto	l14623
u6950:
	goto	l14627
	line	1302
	
l14621:	
	goto	l14627
	
l9976:	
	line	1300
	
l14623:	
	movlw	(01h)
	movwf	(??_printf+0)^080h+0
	movf	(??_printf+0)^080h+0,w
	addwf	(printf@c)^080h,f
	
l14625:	
	movf	(printf@c)^080h,w
	xorlw	05h
	skipz
	goto	u6961
	goto	u6960
u6961:
	goto	l14619
u6960:
	goto	l14627
	
l9975:	
	line	1433
	
l14627:	
	movf	(printf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u6971
	goto	u6970
u6971:
	goto	l14631
u6970:
	line	1434
	
l14629:	
	movlw	(02Dh)
	fcall	_putch
	goto	l14631
	
l9977:	
	line	1467
	
l14631:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@c)^080h,w
	movwf	(??_printf+0)^080h+0
	movf	(??_printf+0)^080h+0,w
	movwf	(printf@prec)^080h
	line	1469
	goto	l14637
	
l9979:	
	line	1484
	
l14633:	
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
	
l14635:	
	movf	(printf@c)^080h,w
	fcall	_putch
	goto	l14637
	line	1517
	
l9978:	
	line	1469
	
l14637:	
	movlw	(-1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_printf+0)^080h+0
	movf	(??_printf+0)^080h+0,w
	addwf	(printf@prec)^080h,f
	movf	((printf@prec)^080h),w
	xorlw	-1
	skipz
	goto	u6981
	goto	u6980
u6981:
	goto	l14633
u6980:
	goto	l14639
	
l9980:	
	goto	l14639
	line	1525
	
l9962:	
	line	540
	
l14639:	
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
	goto	u6991
	goto	u6990
u6991:
	goto	l14589
u6990:
	goto	l9982
	
l9981:	
	goto	l9982
	line	1527
	
l9967:	
	line	1533
;	Return value of _printf is never used
	
l9982:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
;; =============== function _printf ends ============

	signat	_printf,602
	global	_Delay_ms
psect	text1168,local,class=CODE,delta=2
global __ptext1168
__ptext1168:

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
psect	text1168
	file	"D:\6_pic_project\00_Design_Flow_Car\System\Delay.c"
	line	4
	global	__size_of_Delay_ms
	__size_of_Delay_ms	equ	__end_of_Delay_ms-_Delay_ms
	
_Delay_ms:	
	opt	stack 3
; Regs used in _Delay_ms: [wreg]
	line	5
	
l14583:	
;Delay.c: 5: while(x--)
	goto	l14585
	
l6452:	
	line	7
;Delay.c: 6: {
;Delay.c: 7: _nop();
	nop
	goto	l14585
	line	8
	
l6451:	
	line	5
	
l14585:	
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
	goto	u6915
	movlw	low(0FFFFh)
	xorwf	((Delay_ms@x)^080h),w
u6915:

	skipz
	goto	u6911
	goto	u6910
u6911:
	goto	l6452
u6910:
	goto	l6454
	
l6453:	
	line	9
	
l6454:	
	return
	opt stack 0
GLOBAL	__end_of_Delay_ms
	__end_of_Delay_ms:
;; =============== function _Delay_ms ends ============

	signat	_Delay_ms,4216
	global	___aldiv
psect	text1169,local,class=CODE,delta=2
global __ptext1169
__ptext1169:

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
psect	text1169
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\aldiv.c"
	line	5
	global	__size_of___aldiv
	__size_of___aldiv	equ	__end_of___aldiv-___aldiv
	
___aldiv:	
	opt	stack 2
; Regs used in ___aldiv: [wreg+status,2+status,0]
	line	9
	
l14247:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(___aldiv@sign)^080h
	line	10
	btfss	(___aldiv@divisor+3)^080h,7
	goto	u5971
	goto	u5970
u5971:
	goto	l14253
u5970:
	line	11
	
l14249:	
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
	
l14251:	
	clrf	(___aldiv@sign)^080h
	bsf	status,0
	rlf	(___aldiv@sign)^080h,f
	goto	l14253
	line	13
	
l10860:	
	line	14
	
l14253:	
	btfss	(___aldiv@dividend+3)^080h,7
	goto	u5981
	goto	u5980
u5981:
	goto	l14259
u5980:
	line	15
	
l14255:	
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
	
l14257:	
	movlw	(01h)
	movwf	(??___aldiv+0)^080h+0
	movf	(??___aldiv+0)^080h+0,w
	xorwf	(___aldiv@sign)^080h,f
	goto	l14259
	line	17
	
l10861:	
	line	18
	
l14259:	
	movlw	0
	movwf	(___aldiv@quotient+3)^080h
	movlw	0
	movwf	(___aldiv@quotient+2)^080h
	movlw	0
	movwf	(___aldiv@quotient+1)^080h
	movlw	0
	movwf	(___aldiv@quotient)^080h

	line	19
	
l14261:	
	movf	(___aldiv@divisor+3)^080h,w
	iorwf	(___aldiv@divisor+2)^080h,w
	iorwf	(___aldiv@divisor+1)^080h,w
	iorwf	(___aldiv@divisor)^080h,w
	skipnz
	goto	u5991
	goto	u5990
u5991:
	goto	l14281
u5990:
	line	20
	
l14263:	
	clrf	(___aldiv@counter)^080h
	bsf	status,0
	rlf	(___aldiv@counter)^080h,f
	line	21
	goto	l14267
	
l10864:	
	line	22
	
l14265:	
	movlw	01h
	movwf	(??___aldiv+0)^080h+0
u6005:
	clrc
	rlf	(___aldiv@divisor)^080h,f
	rlf	(___aldiv@divisor+1)^080h,f
	rlf	(___aldiv@divisor+2)^080h,f
	rlf	(___aldiv@divisor+3)^080h,f
	decfsz	(??___aldiv+0)^080h+0
	goto	u6005
	line	23
	movlw	(01h)
	movwf	(??___aldiv+0)^080h+0
	movf	(??___aldiv+0)^080h+0,w
	addwf	(___aldiv@counter)^080h,f
	goto	l14267
	line	24
	
l10863:	
	line	21
	
l14267:	
	btfss	(___aldiv@divisor+3)^080h,(31)&7
	goto	u6011
	goto	u6010
u6011:
	goto	l14265
u6010:
	goto	l14269
	
l10865:	
	goto	l14269
	line	25
	
l10866:	
	line	26
	
l14269:	
	movlw	01h
	movwf	(??___aldiv+0)^080h+0
u6025:
	clrc
	rlf	(___aldiv@quotient)^080h,f
	rlf	(___aldiv@quotient+1)^080h,f
	rlf	(___aldiv@quotient+2)^080h,f
	rlf	(___aldiv@quotient+3)^080h,f
	decfsz	(??___aldiv+0)^080h+0
	goto	u6025
	line	27
	
l14271:	
	movf	(___aldiv@divisor+3)^080h,w
	subwf	(___aldiv@dividend+3)^080h,w
	skipz
	goto	u6035
	movf	(___aldiv@divisor+2)^080h,w
	subwf	(___aldiv@dividend+2)^080h,w
	skipz
	goto	u6035
	movf	(___aldiv@divisor+1)^080h,w
	subwf	(___aldiv@dividend+1)^080h,w
	skipz
	goto	u6035
	movf	(___aldiv@divisor)^080h,w
	subwf	(___aldiv@dividend)^080h,w
u6035:
	skipc
	goto	u6031
	goto	u6030
u6031:
	goto	l14277
u6030:
	line	28
	
l14273:	
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
	
l14275:	
	bsf	(___aldiv@quotient)^080h+(0/8),(0)&7
	goto	l14277
	line	30
	
l10867:	
	line	31
	
l14277:	
	movlw	01h
u6045:
	clrc
	rrf	(___aldiv@divisor+3)^080h,f
	rrf	(___aldiv@divisor+2)^080h,f
	rrf	(___aldiv@divisor+1)^080h,f
	rrf	(___aldiv@divisor)^080h,f
	addlw	-1
	skipz
	goto	u6045

	line	32
	
l14279:	
	movlw	low(01h)
	subwf	(___aldiv@counter)^080h,f
	btfss	status,2
	goto	u6051
	goto	u6050
u6051:
	goto	l14269
u6050:
	goto	l14281
	
l10868:	
	goto	l14281
	line	33
	
l10862:	
	line	34
	
l14281:	
	movf	(___aldiv@sign)^080h,w
	skipz
	goto	u6060
	goto	l14285
u6060:
	line	35
	
l14283:	
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
	goto	l14285
	
l10869:	
	line	36
	
l14285:	
	movf	(___aldiv@quotient+3)^080h,w
	movwf	(?___aldiv+3)^080h
	movf	(___aldiv@quotient+2)^080h,w
	movwf	(?___aldiv+2)^080h
	movf	(___aldiv@quotient+1)^080h,w
	movwf	(?___aldiv+1)^080h
	movf	(___aldiv@quotient)^080h,w
	movwf	(?___aldiv)^080h

	goto	l10870
	
l14287:	
	line	37
	
l10870:	
	return
	opt stack 0
GLOBAL	__end_of___aldiv
	__end_of___aldiv:
;; =============== function ___aldiv ends ============

	signat	___aldiv,8316
	global	___almod
psect	text1170,local,class=CODE,delta=2
global __ptext1170
__ptext1170:

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
psect	text1170
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\almod.c"
	line	5
	global	__size_of___almod
	__size_of___almod	equ	__end_of___almod-___almod
	
___almod:	
	opt	stack 2
; Regs used in ___almod: [wreg+status,2+status,0]
	line	8
	
l14213:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(___almod@sign)^080h
	line	9
	btfss	(___almod@dividend+3)^080h,7
	goto	u5881
	goto	u5880
u5881:
	goto	l14219
u5880:
	line	10
	
l14215:	
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
	
l14217:	
	clrf	(___almod@sign)^080h
	bsf	status,0
	rlf	(___almod@sign)^080h,f
	goto	l14219
	line	12
	
l10847:	
	line	13
	
l14219:	
	btfss	(___almod@divisor+3)^080h,7
	goto	u5891
	goto	u5890
u5891:
	goto	l14223
u5890:
	line	14
	
l14221:	
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
	goto	l14223
	
l10848:	
	line	15
	
l14223:	
	movf	(___almod@divisor+3)^080h,w
	iorwf	(___almod@divisor+2)^080h,w
	iorwf	(___almod@divisor+1)^080h,w
	iorwf	(___almod@divisor)^080h,w
	skipnz
	goto	u5901
	goto	u5900
u5901:
	goto	l14239
u5900:
	line	16
	
l14225:	
	clrf	(___almod@counter)^080h
	bsf	status,0
	rlf	(___almod@counter)^080h,f
	line	17
	goto	l14229
	
l10851:	
	line	18
	
l14227:	
	movlw	01h
	movwf	(??___almod+0)^080h+0
u5915:
	clrc
	rlf	(___almod@divisor)^080h,f
	rlf	(___almod@divisor+1)^080h,f
	rlf	(___almod@divisor+2)^080h,f
	rlf	(___almod@divisor+3)^080h,f
	decfsz	(??___almod+0)^080h+0
	goto	u5915
	line	19
	movlw	(01h)
	movwf	(??___almod+0)^080h+0
	movf	(??___almod+0)^080h+0,w
	addwf	(___almod@counter)^080h,f
	goto	l14229
	line	20
	
l10850:	
	line	17
	
l14229:	
	btfss	(___almod@divisor+3)^080h,(31)&7
	goto	u5921
	goto	u5920
u5921:
	goto	l14227
u5920:
	goto	l14231
	
l10852:	
	goto	l14231
	line	21
	
l10853:	
	line	22
	
l14231:	
	movf	(___almod@divisor+3)^080h,w
	subwf	(___almod@dividend+3)^080h,w
	skipz
	goto	u5935
	movf	(___almod@divisor+2)^080h,w
	subwf	(___almod@dividend+2)^080h,w
	skipz
	goto	u5935
	movf	(___almod@divisor+1)^080h,w
	subwf	(___almod@dividend+1)^080h,w
	skipz
	goto	u5935
	movf	(___almod@divisor)^080h,w
	subwf	(___almod@dividend)^080h,w
u5935:
	skipc
	goto	u5931
	goto	u5930
u5931:
	goto	l14235
u5930:
	line	23
	
l14233:	
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
	goto	l14235
	
l10854:	
	line	24
	
l14235:	
	movlw	01h
u5945:
	clrc
	rrf	(___almod@divisor+3)^080h,f
	rrf	(___almod@divisor+2)^080h,f
	rrf	(___almod@divisor+1)^080h,f
	rrf	(___almod@divisor)^080h,f
	addlw	-1
	skipz
	goto	u5945

	line	25
	
l14237:	
	movlw	low(01h)
	subwf	(___almod@counter)^080h,f
	btfss	status,2
	goto	u5951
	goto	u5950
u5951:
	goto	l14231
u5950:
	goto	l14239
	
l10855:	
	goto	l14239
	line	26
	
l10849:	
	line	27
	
l14239:	
	movf	(___almod@sign)^080h,w
	skipz
	goto	u5960
	goto	l14243
u5960:
	line	28
	
l14241:	
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
	goto	l14243
	
l10856:	
	line	29
	
l14243:	
	movf	(___almod@dividend+3)^080h,w
	movwf	(?___almod+3)^080h
	movf	(___almod@dividend+2)^080h,w
	movwf	(?___almod+2)^080h
	movf	(___almod@dividend+1)^080h,w
	movwf	(?___almod+1)^080h
	movf	(___almod@dividend)^080h,w
	movwf	(?___almod)^080h

	goto	l10857
	
l14245:	
	line	30
	
l10857:	
	return
	opt stack 0
GLOBAL	__end_of___almod
	__end_of___almod:
;; =============== function ___almod ends ============

	signat	___almod,8316
	global	___fttol
psect	text1171,local,class=CODE,delta=2
global __ptext1171
__ptext1171:

;; *************** function ___fttol *****************
;; Defined at:
;;		line 45 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3    8[BANK1 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   17[BANK1 ] unsigned long 
;;  exp1            1   21[BANK1 ] unsigned char 
;;  sign1           1   16[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    8[BANK1 ] long 
;; Registers used:
;;		wreg, status,2, status,0
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Trace_PID
;;		_csb
;; This function uses a non-reentrant model
;;
psect	text1171
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 2
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l14149:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___fttol@f1)^080h,w
	movwf	((??___fttol+0)^080h+0)
	movf	(___fttol@f1+1)^080h,w
	movwf	((??___fttol+0)^080h+0+1)
	movf	(___fttol@f1+2)^080h,w
	movwf	((??___fttol+0)^080h+0+2)
	clrc
	rlf	(??___fttol+0)^080h+1,w
	rlf	(??___fttol+0)^080h+2,w
	movwf	(??___fttol+3)^080h+0
	movf	(??___fttol+3)^080h+0,w
	movwf	(___fttol@exp1)^080h
	movf	((___fttol@exp1)^080h),f
	skipz
	goto	u5761
	goto	u5760
u5761:
	goto	l14155
u5760:
	line	50
	
l14151:	
	movlw	0
	movwf	(?___fttol+3)^080h
	movlw	0
	movwf	(?___fttol+2)^080h
	movlw	0
	movwf	(?___fttol+1)^080h
	movlw	0
	movwf	(?___fttol)^080h

	goto	l10775
	
l14153:	
	goto	l10775
	
l10774:	
	line	51
	
l14155:	
	movf	(___fttol@f1)^080h,w
	movwf	((??___fttol+0)^080h+0)
	movf	(___fttol@f1+1)^080h,w
	movwf	((??___fttol+0)^080h+0+1)
	movf	(___fttol@f1+2)^080h,w
	movwf	((??___fttol+0)^080h+0+2)
	movlw	017h
u5775:
	clrc
	rrf	(??___fttol+0)^080h+2,f
	rrf	(??___fttol+0)^080h+1,f
	rrf	(??___fttol+0)^080h+0,f
u5770:
	addlw	-1
	skipz
	goto	u5775
	movf	0+(??___fttol+0)^080h+0,w
	movwf	(??___fttol+3)^080h+0
	movf	(??___fttol+3)^080h+0,w
	movwf	(___fttol@sign1)^080h
	line	52
	
l14157:	
	bsf	(___fttol@f1)^080h+(15/8),(15)&7
	line	53
	
l14159:	
	movlw	0FFh
	andwf	(___fttol@f1)^080h,f
	movlw	0FFh
	andwf	(___fttol@f1+1)^080h,f
	movlw	0
	andwf	(___fttol@f1+2)^080h,f
	line	54
	
l14161:	
	movf	(___fttol@f1)^080h,w
	movwf	(___fttol@lval)^080h
	movf	(___fttol@f1+1)^080h,w
	movwf	((___fttol@lval)^080h)+1
	movf	(___fttol@f1+2)^080h,w
	movwf	((___fttol@lval)^080h)+2
	clrf	((___fttol@lval)^080h)+3
	line	55
	
l14163:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1)^080h,f
	line	56
	
l14165:	
	btfss	(___fttol@exp1)^080h,7
	goto	u5781
	goto	u5780
u5781:
	goto	l14175
u5780:
	line	57
	
l14167:	
	movf	(___fttol@exp1)^080h,w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u5791
	goto	u5790
u5791:
	goto	l14173
u5790:
	line	58
	
l14169:	
	movlw	0
	movwf	(?___fttol+3)^080h
	movlw	0
	movwf	(?___fttol+2)^080h
	movlw	0
	movwf	(?___fttol+1)^080h
	movlw	0
	movwf	(?___fttol)^080h

	goto	l10775
	
l14171:	
	goto	l10775
	
l10777:	
	goto	l14173
	line	59
	
l10778:	
	line	60
	
l14173:	
	movlw	01h
u5805:
	clrc
	rrf	(___fttol@lval+3)^080h,f
	rrf	(___fttol@lval+2)^080h,f
	rrf	(___fttol@lval+1)^080h,f
	rrf	(___fttol@lval)^080h,f
	addlw	-1
	skipz
	goto	u5805

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)^080h+0
	movf	(??___fttol+0)^080h+0,w
	addwf	(___fttol@exp1)^080h,f
	btfss	status,2
	goto	u5811
	goto	u5810
u5811:
	goto	l14173
u5810:
	goto	l14185
	
l10779:	
	line	62
	goto	l14185
	
l10776:	
	line	63
	
l14175:	
	movlw	(018h)
	subwf	(___fttol@exp1)^080h,w
	skipc
	goto	u5821
	goto	u5820
u5821:
	goto	l14183
u5820:
	line	64
	
l14177:	
	movlw	0
	movwf	(?___fttol+3)^080h
	movlw	0
	movwf	(?___fttol+2)^080h
	movlw	0
	movwf	(?___fttol+1)^080h
	movlw	0
	movwf	(?___fttol)^080h

	goto	l10775
	
l14179:	
	goto	l10775
	
l10781:	
	line	65
	goto	l14183
	
l10783:	
	line	66
	
l14181:	
	movlw	01h
	movwf	(??___fttol+0)^080h+0
u5835:
	clrc
	rlf	(___fttol@lval)^080h,f
	rlf	(___fttol@lval+1)^080h,f
	rlf	(___fttol@lval+2)^080h,f
	rlf	(___fttol@lval+3)^080h,f
	decfsz	(??___fttol+0)^080h+0
	goto	u5835
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1)^080h,f
	goto	l14183
	line	68
	
l10782:	
	line	65
	
l14183:	
	movf	(___fttol@exp1)^080h,f
	skipz
	goto	u5841
	goto	u5840
u5841:
	goto	l14181
u5840:
	goto	l14185
	
l10784:	
	goto	l14185
	line	69
	
l10780:	
	line	70
	
l14185:	
	movf	(___fttol@sign1)^080h,w
	skipz
	goto	u5850
	goto	l14189
u5850:
	line	71
	
l14187:	
	comf	(___fttol@lval)^080h,f
	comf	(___fttol@lval+1)^080h,f
	comf	(___fttol@lval+2)^080h,f
	comf	(___fttol@lval+3)^080h,f
	incf	(___fttol@lval)^080h,f
	skipnz
	incf	(___fttol@lval+1)^080h,f
	skipnz
	incf	(___fttol@lval+2)^080h,f
	skipnz
	incf	(___fttol@lval+3)^080h,f
	goto	l14189
	
l10785:	
	line	72
	
l14189:	
	movf	(___fttol@lval+3)^080h,w
	movwf	(?___fttol+3)^080h
	movf	(___fttol@lval+2)^080h,w
	movwf	(?___fttol+2)^080h
	movf	(___fttol@lval+1)^080h,w
	movwf	(?___fttol+1)^080h
	movf	(___fttol@lval)^080h,w
	movwf	(?___fttol)^080h

	goto	l10775
	
l14191:	
	line	73
	
l10775:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___lmul
psect	text1172,local,class=CODE,delta=2
global __ptext1172
__ptext1172:

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
psect	text1172
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lmul.c"
	line	3
	global	__size_of___lmul
	__size_of___lmul	equ	__end_of___lmul-___lmul
	
___lmul:	
	opt	stack 1
; Regs used in ___lmul: [wreg+status,2+status,0]
	line	4
	
l14091:	
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

	goto	l14093
	line	6
	
l10740:	
	line	7
	
l14093:	
	btfss	(___lmul@multiplier)^080h,(0)&7
	goto	u5631
	goto	u5630
u5631:
	goto	l14097
u5630:
	line	8
	
l14095:	
	movf	(___lmul@multiplicand)^080h,w
	addwf	(___lmul@product)^080h,f
	movf	(___lmul@multiplicand+1)^080h,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u5641
	addwf	(___lmul@product+1)^080h,f
u5641:
	movf	(___lmul@multiplicand+2)^080h,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u5642
	addwf	(___lmul@product+2)^080h,f
u5642:
	movf	(___lmul@multiplicand+3)^080h,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u5643
	addwf	(___lmul@product+3)^080h,f
u5643:

	goto	l14097
	
l10741:	
	line	9
	
l14097:	
	movlw	01h
	movwf	(??___lmul+0)^080h+0
u5655:
	clrc
	rlf	(___lmul@multiplicand)^080h,f
	rlf	(___lmul@multiplicand+1)^080h,f
	rlf	(___lmul@multiplicand+2)^080h,f
	rlf	(___lmul@multiplicand+3)^080h,f
	decfsz	(??___lmul+0)^080h+0
	goto	u5655
	line	10
	
l14099:	
	movlw	01h
u5665:
	clrc
	rrf	(___lmul@multiplier+3)^080h,f
	rrf	(___lmul@multiplier+2)^080h,f
	rrf	(___lmul@multiplier+1)^080h,f
	rrf	(___lmul@multiplier)^080h,f
	addlw	-1
	skipz
	goto	u5665

	line	11
	movf	(___lmul@multiplier+3)^080h,w
	iorwf	(___lmul@multiplier+2)^080h,w
	iorwf	(___lmul@multiplier+1)^080h,w
	iorwf	(___lmul@multiplier)^080h,w
	skipz
	goto	u5671
	goto	u5670
u5671:
	goto	l14093
u5670:
	goto	l14101
	
l10742:	
	line	12
	
l14101:	
	movf	(___lmul@product+3)^080h,w
	movwf	(?___lmul+3)^080h
	movf	(___lmul@product+2)^080h,w
	movwf	(?___lmul+2)^080h
	movf	(___lmul@product+1)^080h,w
	movwf	(?___lmul+1)^080h
	movf	(___lmul@product)^080h,w
	movwf	(?___lmul)^080h

	goto	l10743
	
l14103:	
	line	13
	
l10743:	
	return
	opt stack 0
GLOBAL	__end_of___lmul
	__end_of___lmul:
;; =============== function ___lmul ends ============

	signat	___lmul,8316
	global	___ftpack
psect	text1173,local,class=CODE,delta=2
global __ptext1173
__ptext1173:

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[BANK1 ] unsigned um
;;  exp             1    3[BANK1 ] unsigned char 
;;  sign            1    4[BANK1 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[BANK1 ] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       5       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       3       0       0
;;      Totals:         0       0       8       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftadd
;;		___ftmul
;;		___awtoft
;;		___lwtoft
;;		___ftdiv
;;		___lbtoft
;;		___abtoft
;;		___altoft
;;		___lltoft
;;		___attoft
;;		___lttoft
;; This function uses a non-reentrant model
;;
psect	text1173
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 1
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l14061:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftpack@exp)^080h,w
	skipz
	goto	u5520
	goto	l14065
u5520:
	
l14063:	
	movf	(___ftpack@arg+2)^080h,w
	iorwf	(___ftpack@arg+1)^080h,w
	iorwf	(___ftpack@arg)^080h,w
	skipz
	goto	u5531
	goto	u5530
u5531:
	goto	l14071
u5530:
	goto	l14065
	
l10999:	
	line	65
	
l14065:	
	movlw	0x0
	movwf	(?___ftpack)^080h
	movlw	0x0
	movwf	(?___ftpack+1)^080h
	movlw	0x0
	movwf	(?___ftpack+2)^080h
	goto	l11000
	
l14067:	
	goto	l11000
	
l10997:	
	line	66
	goto	l14071
	
l11002:	
	line	67
	
l14069:	
	movlw	(01h)
	movwf	(??___ftpack+0)^080h+0
	movf	(??___ftpack+0)^080h+0,w
	addwf	(___ftpack@exp)^080h,f
	line	68
	movlw	01h
u5545:
	clrc
	rrf	(___ftpack@arg+2)^080h,f
	rrf	(___ftpack@arg+1)^080h,f
	rrf	(___ftpack@arg)^080h,f
	addlw	-1
	skipz
	goto	u5545

	goto	l14071
	line	69
	
l11001:	
	line	66
	
l14071:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2)^080h,w
	btfss	status,2
	goto	u5551
	goto	u5550
u5551:
	goto	l14069
u5550:
	goto	l11004
	
l11003:	
	line	70
	goto	l11004
	
l11005:	
	line	71
	
l14073:	
	movlw	(01h)
	movwf	(??___ftpack+0)^080h+0
	movf	(??___ftpack+0)^080h+0,w
	addwf	(___ftpack@exp)^080h,f
	line	72
	
l14075:	
	movlw	01h
	addwf	(___ftpack@arg)^080h,f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+1)^080h,f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+2)^080h,f
	line	73
	
l14077:	
	movlw	01h
u5565:
	clrc
	rrf	(___ftpack@arg+2)^080h,f
	rrf	(___ftpack@arg+1)^080h,f
	rrf	(___ftpack@arg)^080h,f
	addlw	-1
	skipz
	goto	u5565

	line	74
	
l11004:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2)^080h,w
	btfss	status,2
	goto	u5571
	goto	u5570
u5571:
	goto	l14073
u5570:
	goto	l14081
	
l11006:	
	line	75
	goto	l14081
	
l11008:	
	line	76
	
l14079:	
	movlw	low(01h)
	subwf	(___ftpack@exp)^080h,f
	line	77
	movlw	01h
u5585:
	clrc
	rlf	(___ftpack@arg)^080h,f
	rlf	(___ftpack@arg+1)^080h,f
	rlf	(___ftpack@arg+2)^080h,f
	addlw	-1
	skipz
	goto	u5585
	goto	l14081
	line	78
	
l11007:	
	line	75
	
l14081:	
	btfss	(___ftpack@arg+1)^080h,(15)&7
	goto	u5591
	goto	u5590
u5591:
	goto	l14079
u5590:
	
l11009:	
	line	79
	btfsc	(___ftpack@exp)^080h,(0)&7
	goto	u5601
	goto	u5600
u5601:
	goto	l11010
u5600:
	line	80
	
l14083:	
	movlw	0FFh
	andwf	(___ftpack@arg)^080h,f
	movlw	07Fh
	andwf	(___ftpack@arg+1)^080h,f
	movlw	0FFh
	andwf	(___ftpack@arg+2)^080h,f
	
l11010:	
	line	81
	clrc
	rrf	(___ftpack@exp)^080h,f

	line	82
	
l14085:	
	movf	(___ftpack@exp)^080h,w
	movwf	((??___ftpack+0)^080h+0)
	clrf	((??___ftpack+0)^080h+0+1)
	clrf	((??___ftpack+0)^080h+0+2)
	movlw	010h
u5615:
	clrc
	rlf	(??___ftpack+0)^080h+0,f
	rlf	(??___ftpack+0)^080h+1,f
	rlf	(??___ftpack+0)^080h+2,f
u5610:
	addlw	-1
	skipz
	goto	u5615
	movf	0+(??___ftpack+0)^080h+0,w
	iorwf	(___ftpack@arg)^080h,f
	movf	1+(??___ftpack+0)^080h+0,w
	iorwf	(___ftpack@arg+1)^080h,f
	movf	2+(??___ftpack+0)^080h+0,w
	iorwf	(___ftpack@arg+2)^080h,f
	line	83
	
l14087:	
	movf	(___ftpack@sign)^080h,w
	skipz
	goto	u5620
	goto	l11011
u5620:
	line	84
	
l14089:	
	bsf	(___ftpack@arg)^080h+(23/8),(23)&7
	
l11011:	
	line	85
	line	86
	
l11000:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	___lwmod
psect	text1174,local,class=CODE,delta=2
global __ptext1174
__ptext1174:

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
psect	text1174
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 2
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l14039:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___lwmod@divisor+1)^080h,w
	iorwf	(___lwmod@divisor)^080h,w
	skipnz
	goto	u5461
	goto	u5460
u5461:
	goto	l14057
u5460:
	line	9
	
l14041:	
	clrf	(___lwmod@counter)^080h
	bsf	status,0
	rlf	(___lwmod@counter)^080h,f
	line	10
	goto	l14047
	
l10683:	
	line	11
	
l14043:	
	movlw	01h
	
u5475:
	clrc
	rlf	(___lwmod@divisor)^080h,f
	rlf	(___lwmod@divisor+1)^080h,f
	addlw	-1
	skipz
	goto	u5475
	line	12
	
l14045:	
	movlw	(01h)
	movwf	(??___lwmod+0)^080h+0
	movf	(??___lwmod+0)^080h+0,w
	addwf	(___lwmod@counter)^080h,f
	goto	l14047
	line	13
	
l10682:	
	line	10
	
l14047:	
	btfss	(___lwmod@divisor+1)^080h,(15)&7
	goto	u5481
	goto	u5480
u5481:
	goto	l14043
u5480:
	goto	l14049
	
l10684:	
	goto	l14049
	line	14
	
l10685:	
	line	15
	
l14049:	
	movf	(___lwmod@divisor+1)^080h,w
	subwf	(___lwmod@dividend+1)^080h,w
	skipz
	goto	u5495
	movf	(___lwmod@divisor)^080h,w
	subwf	(___lwmod@dividend)^080h,w
u5495:
	skipc
	goto	u5491
	goto	u5490
u5491:
	goto	l14053
u5490:
	line	16
	
l14051:	
	movf	(___lwmod@divisor)^080h,w
	subwf	(___lwmod@dividend)^080h,f
	movf	(___lwmod@divisor+1)^080h,w
	skipc
	decf	(___lwmod@dividend+1)^080h,f
	subwf	(___lwmod@dividend+1)^080h,f
	goto	l14053
	
l10686:	
	line	17
	
l14053:	
	movlw	01h
	
u5505:
	clrc
	rrf	(___lwmod@divisor+1)^080h,f
	rrf	(___lwmod@divisor)^080h,f
	addlw	-1
	skipz
	goto	u5505
	line	18
	
l14055:	
	movlw	low(01h)
	subwf	(___lwmod@counter)^080h,f
	btfss	status,2
	goto	u5511
	goto	u5510
u5511:
	goto	l14049
u5510:
	goto	l14057
	
l10687:	
	goto	l14057
	line	19
	
l10681:	
	line	20
	
l14057:	
	movf	(___lwmod@dividend+1)^080h,w
	clrf	(?___lwmod+1)^080h
	addwf	(?___lwmod+1)^080h
	movf	(___lwmod@dividend)^080h,w
	clrf	(?___lwmod)^080h
	addwf	(?___lwmod)^080h

	goto	l10688
	
l14059:	
	line	21
	
l10688:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text1175,local,class=CODE,delta=2
global __ptext1175
__ptext1175:

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
psect	text1175
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 2
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l14013:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(___lwdiv@quotient)^080h
	clrf	(___lwdiv@quotient+1)^080h
	line	10
	
l14015:	
	movf	(___lwdiv@divisor+1)^080h,w
	iorwf	(___lwdiv@divisor)^080h,w
	skipnz
	goto	u5391
	goto	u5390
u5391:
	goto	l14035
u5390:
	line	11
	
l14017:	
	clrf	(___lwdiv@counter)^080h
	bsf	status,0
	rlf	(___lwdiv@counter)^080h,f
	line	12
	goto	l14023
	
l10673:	
	line	13
	
l14019:	
	movlw	01h
	
u5405:
	clrc
	rlf	(___lwdiv@divisor)^080h,f
	rlf	(___lwdiv@divisor+1)^080h,f
	addlw	-1
	skipz
	goto	u5405
	line	14
	
l14021:	
	movlw	(01h)
	movwf	(??___lwdiv+0)^080h+0
	movf	(??___lwdiv+0)^080h+0,w
	addwf	(___lwdiv@counter)^080h,f
	goto	l14023
	line	15
	
l10672:	
	line	12
	
l14023:	
	btfss	(___lwdiv@divisor+1)^080h,(15)&7
	goto	u5411
	goto	u5410
u5411:
	goto	l14019
u5410:
	goto	l14025
	
l10674:	
	goto	l14025
	line	16
	
l10675:	
	line	17
	
l14025:	
	movlw	01h
	
u5425:
	clrc
	rlf	(___lwdiv@quotient)^080h,f
	rlf	(___lwdiv@quotient+1)^080h,f
	addlw	-1
	skipz
	goto	u5425
	line	18
	movf	(___lwdiv@divisor+1)^080h,w
	subwf	(___lwdiv@dividend+1)^080h,w
	skipz
	goto	u5435
	movf	(___lwdiv@divisor)^080h,w
	subwf	(___lwdiv@dividend)^080h,w
u5435:
	skipc
	goto	u5431
	goto	u5430
u5431:
	goto	l14031
u5430:
	line	19
	
l14027:	
	movf	(___lwdiv@divisor)^080h,w
	subwf	(___lwdiv@dividend)^080h,f
	movf	(___lwdiv@divisor+1)^080h,w
	skipc
	decf	(___lwdiv@dividend+1)^080h,f
	subwf	(___lwdiv@dividend+1)^080h,f
	line	20
	
l14029:	
	bsf	(___lwdiv@quotient)^080h+(0/8),(0)&7
	goto	l14031
	line	21
	
l10676:	
	line	22
	
l14031:	
	movlw	01h
	
u5445:
	clrc
	rrf	(___lwdiv@divisor+1)^080h,f
	rrf	(___lwdiv@divisor)^080h,f
	addlw	-1
	skipz
	goto	u5445
	line	23
	
l14033:	
	movlw	low(01h)
	subwf	(___lwdiv@counter)^080h,f
	btfss	status,2
	goto	u5451
	goto	u5450
u5451:
	goto	l14025
u5450:
	goto	l14035
	
l10677:	
	goto	l14035
	line	24
	
l10671:	
	line	25
	
l14035:	
	movf	(___lwdiv@quotient+1)^080h,w
	clrf	(?___lwdiv+1)^080h
	addwf	(?___lwdiv+1)^080h
	movf	(___lwdiv@quotient)^080h,w
	clrf	(?___lwdiv)^080h
	addwf	(?___lwdiv)^080h

	goto	l10678
	
l14037:	
	line	26
	
l10678:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_putch
psect	text1176,local,class=CODE,delta=2
global __ptext1176
__ptext1176:

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
psect	text1176
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
	
l13995:	
;Usart.c: 14: TXREG=ch;
	movf	(putch@ch)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	15
;Usart.c: 15: while(TRMT==0);
	goto	l5749
	
l5750:	
	
l5749:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1217/8)^080h,(1217)&7
	goto	u5351
	goto	u5350
u5351:
	goto	l5749
u5350:
	goto	l5752
	
l5751:	
	line	16
	
l5752:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
;; =============== function _putch ends ============

	signat	_putch,4216
	global	_LCD1602_Delay
psect	text1177,local,class=CODE,delta=2
global __ptext1177
__ptext1177:

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
psect	text1177
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\LCD1602.c"
	line	11
	global	__size_of_LCD1602_Delay
	__size_of_LCD1602_Delay	equ	__end_of_LCD1602_Delay-_LCD1602_Delay
	
_LCD1602_Delay:	
	opt	stack 1
; Regs used in _LCD1602_Delay: [wreg+status,2+status,0]
	line	13
	
l13861:	
;LCD1602.c: 12: unsigned int i;
;LCD1602.c: 13: for(i=999;i>0;i--);
	movlw	low(03E7h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(LCD1602_Delay@i)^080h
	movlw	high(03E7h)
	movwf	((LCD1602_Delay@i)^080h)+1
	
l13863:	
	movf	((LCD1602_Delay@i+1)^080h),w
	iorwf	((LCD1602_Delay@i)^080h),w
	skipz
	goto	u4931
	goto	u4930
u4931:
	goto	l13867
u4930:
	goto	l1452
	
l13865:	
	goto	l1452
	
l1450:	
	
l13867:	
	movlw	low(01h)
	subwf	(LCD1602_Delay@i)^080h,f
	movlw	high(01h)
	skipc
	decf	(LCD1602_Delay@i+1)^080h,f
	subwf	(LCD1602_Delay@i+1)^080h,f
	
l13869:	
	movf	((LCD1602_Delay@i+1)^080h),w
	iorwf	((LCD1602_Delay@i)^080h),w
	skipz
	goto	u4941
	goto	u4940
u4941:
	goto	l13867
u4940:
	goto	l1452
	
l1451:	
	line	14
	
l1452:	
	return
	opt stack 0
GLOBAL	__end_of_LCD1602_Delay
	__end_of_LCD1602_Delay:
;; =============== function _LCD1602_Delay ends ============

	signat	_LCD1602_Delay,88
	global	_Velociy_PID_Init
psect	text1178,local,class=CODE,delta=2
global __ptext1178
__ptext1178:

;; *************** function _Velociy_PID_Init *****************
;; Defined at:
;;		line 33 in file "D:\6_pic_project\00_Design_Flow_Car\Driver\pid.c"
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
psect	text1178
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\pid.c"
	line	33
	global	__size_of_Velociy_PID_Init
	__size_of_Velociy_PID_Init	equ	__end_of_Velociy_PID_Init-_Velociy_PID_Init
	
_Velociy_PID_Init:	
	opt	stack 3
; Regs used in _Velociy_PID_Init: [wreg]
	line	34
	
l13859:	
;pid.c: 34: Velocity.Kp=5.8;
	movlw	0x9a
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_Velocity)^0180h
	movlw	0xb9
	movwf	(_Velocity+1)^0180h
	movlw	0x40
	movwf	(_Velocity+2)^0180h
	line	35
;pid.c: 35: Velocity.Ki=0.06;
	movlw	0xc3
	movwf	0+(_Velocity)^0180h+03h
	movlw	0x75
	movwf	1+(_Velocity)^0180h+03h
	movlw	0x3d
	movwf	2+(_Velocity)^0180h+03h
	line	36
;pid.c: 36: Velocity.Kd=0;
	movlw	0x0
	movwf	0+(_Velocity)^0180h+06h
	movlw	0x0
	movwf	1+(_Velocity)^0180h+06h
	movlw	0x0
	movwf	2+(_Velocity)^0180h+06h
	line	37
	
l9214:	
	return
	opt stack 0
GLOBAL	__end_of_Velociy_PID_Init
	__end_of_Velociy_PID_Init:
;; =============== function _Velociy_PID_Init ends ============

	signat	_Velociy_PID_Init,88
	global	_Encoder_Init
psect	text1179,local,class=CODE,delta=2
global __ptext1179
__ptext1179:

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
psect	text1179
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\Encoder.c"
	line	4
	global	__size_of_Encoder_Init
	__size_of_Encoder_Init	equ	__end_of_Encoder_Init-_Encoder_Init
	
_Encoder_Init:	
	opt	stack 3
; Regs used in _Encoder_Init: [wreg+status,2]
	line	5
	
l13849:	
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
	
l13851:	
;Encoder.c: 12: OPTION_REG=0B01000111;
	movlw	(047h)
	movwf	(129)^080h	;volatile
	line	15
	
l13853:	
;Encoder.c: 15: T0IE=1;
	bsf	(93/8),(93)&7
	line	16
	
l13855:	
;Encoder.c: 16: T0IF=0;
	bcf	(90/8),(90)&7
	line	17
	
l13857:	
;Encoder.c: 17: TMR0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(1)	;volatile
	line	18
	
l8521:	
	return
	opt stack 0
GLOBAL	__end_of_Encoder_Init
	__end_of_Encoder_Init:
;; =============== function _Encoder_Init ends ============

	signat	_Encoder_Init,88
	global	_Motor_CCP_PWM_Init
psect	text1180,local,class=CODE,delta=2
global __ptext1180
__ptext1180:

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
psect	text1180
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\Motor.c"
	line	31
	global	__size_of_Motor_CCP_PWM_Init
	__size_of_Motor_CCP_PWM_Init	equ	__end_of_Motor_CCP_PWM_Init-_Motor_CCP_PWM_Init
	
_Motor_CCP_PWM_Init:	
	opt	stack 3
; Regs used in _Motor_CCP_PWM_Init: [wreg+status,2]
	line	33
	
l13841:	
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
	
l13843:	
;Motor.c: 42: T2CON=0;
	clrf	(18)	;volatile
	line	43
	
l13845:	
;Motor.c: 43: TMR2=0;
	clrf	(17)	;volatile
	line	44
	
l13847:	
;Motor.c: 44: TMR2ON=1;
	bsf	(146/8),(146)&7
	line	45
	
l4367:	
	return
	opt stack 0
GLOBAL	__end_of_Motor_CCP_PWM_Init
	__end_of_Motor_CCP_PWM_Init:
;; =============== function _Motor_CCP_PWM_Init ends ============

	signat	_Motor_CCP_PWM_Init,88
	global	_csb_init
psect	text1181,local,class=CODE,delta=2
global __ptext1181
__ptext1181:

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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1181
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\csb.c"
	line	22
	global	__size_of_csb_init
	__size_of_csb_init	equ	__end_of_csb_init-_csb_init
	
_csb_init:	
	opt	stack 3
; Regs used in _csb_init: [wreg+status,2]
	line	23
	
l13821:	
;csb.c: 23: GIE=1;PEIE=1;TMR1IE=1;TMR1IF=0;
	bsf	(95/8),(95)&7
	bsf	(94/8),(94)&7
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1120/8)^080h,(1120)&7
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(96/8),(96)&7
	line	25
;csb.c: 25: TRISE1=0;TRISE2=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1097/8)^080h,(1097)&7
	bsf	(1098/8)^080h,(1098)&7
	line	26
	
l13823:	
;csb.c: 26: ADCON1=7;TRISA=0;TRISD=0;
	movlw	(07h)
	movwf	(159)^080h	;volatile
	
l13825:	
	clrf	(133)^080h	;volatile
	
l13827:	
	clrf	(136)^080h	;volatile
	line	28
	
l13829:	
;csb.c: 28: RA0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7
	line	29
	
l13831:	
;csb.c: 29: RA1 = 1;
	bsf	(41/8),(41)&7
	line	31
	
l13833:	
;csb.c: 31: T1CON=0B00000000;
	clrf	(16)	;volatile
	line	32
	
l13835:	
;csb.c: 32: TMR1H=0x00;
	clrf	(15)	;volatile
	line	33
	
l13837:	
;csb.c: 33: TMR1L=0x00;
	clrf	(14)	;volatile
	line	34
	
l13839:	
;csb.c: 34: TMR1ON=0x00;
	bcf	(128/8),(128)&7
	line	35
	
l9938:	
	return
	opt stack 0
GLOBAL	__end_of_csb_init
	__end_of_csb_init:
;; =============== function _csb_init ends ============

	signat	_csb_init,88
	global	_Motor_GPIO_Init
psect	text1182,local,class=CODE,delta=2
global __ptext1182
__ptext1182:

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
psect	text1182
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\Motor.c"
	line	21
	global	__size_of_Motor_GPIO_Init
	__size_of_Motor_GPIO_Init	equ	__end_of_Motor_GPIO_Init-_Motor_GPIO_Init
	
_Motor_GPIO_Init:	
	opt	stack 3
; Regs used in _Motor_GPIO_Init: []
	line	22
	
l13819:	
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
	
l4364:	
	return
	opt stack 0
GLOBAL	__end_of_Motor_GPIO_Init
	__end_of_Motor_GPIO_Init:
;; =============== function _Motor_GPIO_Init ends ============

	signat	_Motor_GPIO_Init,88
	global	_Usart_Init
psect	text1183,local,class=CODE,delta=2
global __ptext1183
__ptext1183:

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
psect	text1183
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\Usart.c"
	line	39
	global	__size_of_Usart_Init
	__size_of_Usart_Init	equ	__end_of_Usart_Init-_Usart_Init
	
_Usart_Init:	
	opt	stack 3
; Regs used in _Usart_Init: [wreg]
	line	40
	
l13811:	
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
	
l13813:	
;Usart.c: 43: GIE=1;
	bsf	(95/8),(95)&7
	line	44
	
l13815:	
;Usart.c: 44: PEIE=1;
	bsf	(94/8),(94)&7
	line	45
	
l13817:	
;Usart.c: 45: RCIE=1;
	bsf	(1125/8)^080h,(1125)&7
	line	46
	
l5764:	
	return
	opt stack 0
GLOBAL	__end_of_Usart_Init
	__end_of_Usart_Init:
;; =============== function _Usart_Init ends ============

	signat	_Usart_Init,88
	global	_Usart_GPIO_Init
psect	text1184,local,class=CODE,delta=2
global __ptext1184
__ptext1184:

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
psect	text1184
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\Usart.c"
	line	28
	global	__size_of_Usart_GPIO_Init
	__size_of_Usart_GPIO_Init	equ	__end_of_Usart_GPIO_Init-_Usart_GPIO_Init
	
_Usart_GPIO_Init:	
	opt	stack 3
; Regs used in _Usart_GPIO_Init: []
	line	29
	
l13809:	
;Usart.c: 29: TRISC6=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1086/8)^080h,(1086)&7
	line	30
;Usart.c: 30: TRISC7=1;
	bsf	(1087/8)^080h,(1087)&7
	line	31
	
l5761:	
	return
	opt stack 0
GLOBAL	__end_of_Usart_GPIO_Init
	__end_of_Usart_GPIO_Init:
;; =============== function _Usart_GPIO_Init ends ============

	signat	_Usart_GPIO_Init,88
	global	_LCD1602_GPIO_Init
psect	text1185,local,class=CODE,delta=2
global __ptext1185
__ptext1185:

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
psect	text1185
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\LCD1602.c"
	line	180
	global	__size_of_LCD1602_GPIO_Init
	__size_of_LCD1602_GPIO_Init	equ	__end_of_LCD1602_GPIO_Init-_LCD1602_GPIO_Init
	
_LCD1602_GPIO_Init:	
	opt	stack 3
; Regs used in _LCD1602_GPIO_Init: [wreg+status,2]
	line	181
	
l13803:	
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
	
l13805:	
;LCD1602.c: 184: TRISD=0x00;
	clrf	(136)^080h	;volatile
	line	185
	
l13807:	
;LCD1602.c: 185: ADCON1=0x07;
	movlw	(07h)
	movwf	(159)^080h	;volatile
	line	186
	
l1504:	
	return
	opt stack 0
GLOBAL	__end_of_LCD1602_GPIO_Init
	__end_of_LCD1602_GPIO_Init:
;; =============== function _LCD1602_GPIO_Init ends ============

	signat	_LCD1602_GPIO_Init,88
	global	_Motor_Speed_Set
psect	text1186,local,class=CODE,delta=2
global __ptext1186
__ptext1186:

;; *************** function _Motor_Speed_Set *****************
;; Defined at:
;;		line 60 in file "D:\6_pic_project\00_Design_Flow_Car\Driver\Motor.c"
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
psect	text1186
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\Motor.c"
	line	60
	global	__size_of_Motor_Speed_Set
	__size_of_Motor_Speed_Set	equ	__end_of_Motor_Speed_Set-_Motor_Speed_Set
	
_Motor_Speed_Set:	
	opt	stack 3
; Regs used in _Motor_Speed_Set: [wreg+status,2+status,0+btemp+1]
	line	61
	
l13767:	
;Motor.c: 61: if(Speed1 > 0 )
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Motor_Speed_Set@Speed1+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4905
	movlw	low(01h)
	subwf	(Motor_Speed_Set@Speed1)^080h,w
u4905:

	skipc
	goto	u4901
	goto	u4900
u4901:
	goto	l4373
u4900:
	line	63
	
l13769:	
;Motor.c: 62: {
;Motor.c: 63: RB4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(52/8),(52)&7
	line	64
;Motor.c: 64: RB5 = 0;
	bcf	(53/8),(53)&7
	line	65
	
l13771:	
;Motor.c: 65: CCPR1L=(unsigned char)Speed1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Motor_Speed_Set@Speed1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	line	66
;Motor.c: 66: }
	goto	l13775
	line	67
	
l4373:	
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
	
l13773:	
;Motor.c: 71: CCPR1L=(unsigned char)(-Speed1);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	decf	(Motor_Speed_Set@Speed1)^080h,w
	xorlw	0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	goto	l13775
	line	72
	
l4374:	
	line	74
	
l13775:	
;Motor.c: 72: }
;Motor.c: 74: if(Speed2 >0 )
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Motor_Speed_Set@Speed2+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4915
	movlw	low(01h)
	subwf	(Motor_Speed_Set@Speed2)^080h,w
u4915:

	skipc
	goto	u4911
	goto	u4910
u4911:
	goto	l4375
u4910:
	line	76
	
l13777:	
;Motor.c: 75: {
;Motor.c: 76: RB6 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(54/8),(54)&7
	line	77
;Motor.c: 77: RB7 = 0;
	bcf	(55/8),(55)&7
	line	78
	
l13779:	
;Motor.c: 78: CCPR2L=(unsigned char)Speed2;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Motor_Speed_Set@Speed2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(27)	;volatile
	line	79
;Motor.c: 79: }
	goto	l4377
	line	80
	
l4375:	
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
	
l13781:	
;Motor.c: 84: CCPR2L=(unsigned char)(-Speed2);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	decf	(Motor_Speed_Set@Speed2)^080h,w
	xorlw	0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(27)	;volatile
	goto	l4377
	line	85
	
l4376:	
	line	86
	
l4377:	
	return
	opt stack 0
GLOBAL	__end_of_Motor_Speed_Set
	__end_of_Motor_Speed_Set:
;; =============== function _Motor_Speed_Set ends ============

	signat	_Motor_Speed_Set,8312
	global	_Service
psect	text1187,local,class=CODE,delta=2
global __ptext1187
__ptext1187:

;; *************** function _Service *****************
;; Defined at:
;;		line 58 in file "D:\6_pic_project\00_Design_Flow_Car\User\Car_demo\Car_demo.c"
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
;;      Temps:          0       8       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		i1_Trace_PID
;;		i1_Motor_Speed_Set
;;		_Velocity_PID
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text1187
	file	"D:\6_pic_project\00_Design_Flow_Car\User\Car_demo\Car_demo.c"
	line	58
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
	movwf	(??_Service+4)
	movf	fsr0,w
	movwf	(??_Service+5)
	movf	pclath,w
	movwf	(??_Service+6)
	movf	btemp+1,w
	movwf	(??_Service+7)
	ljmp	_Service
psect	text1187
	line	59
	
i1l13743:	
;Car_demo.c: 59: Speed_left = 40 - Trace_PID();
	fcall	i1_Trace_PID
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?i1_Trace_PID)),w
	xorlw	0ffh
	addlw	1
	addlw	028h
	movwf	(??_Service+0)+0
	movf	(??_Service+0)+0,w
	movwf	(_Speed_left)
	line	60
;Car_demo.c: 60: Speed_right = 40 + Trace_PID();
	fcall	i1_Trace_PID
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?i1_Trace_PID)),w
	addlw	028h
	movwf	(??_Service+0)+0
	movf	(??_Service+0)+0,w
	movwf	(_Speed_right)
	line	61
	
i1l13745:	
;Car_demo.c: 61: Motor_Speed_Set(Speed_left,Speed_right);
	movf	(_Speed_left),w
	movwf	(??_Service+0)+0
	clrf	(??_Service+0)+0+1
	movf	0+(??_Service+0)+0,w
	movwf	(?i1_Motor_Speed_Set)
	movf	1+(??_Service+0)+0,w
	movwf	(?i1_Motor_Speed_Set+1)
	movf	(_Speed_right),w
	movwf	(??_Service+2)+0
	clrf	(??_Service+2)+0+1
	movf	0+(??_Service+2)+0,w
	movwf	0+(?i1_Motor_Speed_Set)+02h
	movf	1+(??_Service+2)+0,w
	movwf	1+(?i1_Motor_Speed_Set)+02h
	fcall	i1_Motor_Speed_Set
	line	63
	
i1l13747:	
;Car_demo.c: 63: if(RCIF==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u487_21
	goto	u487_20
u487_21:
	goto	i1l753
u487_20:
	line	65
	
i1l13749:	
;Car_demo.c: 67: if(bluetooth == '#'){}
	movf	(26),w	;volatile
	movwf	(??_Service+0)+0
	movf	(??_Service+0)+0,w
	movwf	(_bluetooth)
	line	67
	
i1l754:	
	line	79
;Car_demo.c: 79: RCIF=0;
	bcf	(101/8),(101)&7
	line	80
;Car_demo.c: 80: }
	goto	i1l759
	line	81
	
i1l753:	
;Car_demo.c: 81: else if(T0IF==1)
	btfss	(90/8),(90)&7
	goto	u488_21
	goto	u488_20
u488_21:
	goto	i1l756
u488_20:
	line	83
	
i1l13751:	
;Car_demo.c: 82: {
;Car_demo.c: 83: TMR0=60;
	movlw	(03Ch)
	movwf	(1)	;volatile
	line	84
	
i1l13753:	
;Car_demo.c: 84: T0IF=0;
	bcf	(90/8),(90)&7
	line	86
;Car_demo.c: 86: Speed = Encoder_Counter;
	movf	(_Encoder_Counter),w
	movwf	(??_Service+0)+0
	clrf	(??_Service+0)+0+1
	movf	0+(??_Service+0)+0,w
	movwf	(_Speed)
	movf	1+(??_Service+0)+0,w
	movwf	(_Speed+1)
	line	87
	
i1l13755:	
;Car_demo.c: 87: Encoder_Counter=0;
	clrf	(_Encoder_Counter)
	line	89
	
i1l13757:	
;Car_demo.c: 89: PWM = Velocity_PID(Speed,Speed_Set);
	movf	(_Speed+1),w
	clrf	(?_Velocity_PID+1)
	addwf	(?_Velocity_PID+1)
	movf	(_Speed),w
	clrf	(?_Velocity_PID)
	addwf	(?_Velocity_PID)

	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_Speed_Set+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?_Velocity_PID)+02h
	addwf	1+(?_Velocity_PID)+02h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_Speed_Set)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(?_Velocity_PID)+02h
	addwf	0+(?_Velocity_PID)+02h

	fcall	_Velocity_PID
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_Velocity_PID)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(_PWM+1)^0180h
	addwf	(_PWM+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_Velocity_PID)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(_PWM)^0180h
	addwf	(_PWM)^0180h

	line	91
	
i1l13759:	
;Car_demo.c: 91: PWM1 = PWM;
	movf	(_PWM+1)^0180h,w
	clrf	(_PWM1+1)^0180h
	addwf	(_PWM1+1)^0180h
	movf	(_PWM)^0180h,w
	clrf	(_PWM1)^0180h
	addwf	(_PWM1)^0180h

	line	92
	
i1l13761:	
;Car_demo.c: 92: PWM2 = PWM;
	movf	(_PWM+1)^0180h,w
	clrf	(_PWM2+1)^0180h
	addwf	(_PWM2+1)^0180h
	movf	(_PWM)^0180h,w
	clrf	(_PWM2)^0180h
	addwf	(_PWM2)^0180h

	line	93
;Car_demo.c: 93: }
	goto	i1l759
	line	94
	
i1l756:	
;Car_demo.c: 94: else if(INTF==1)
	btfss	(89/8),(89)&7
	goto	u489_21
	goto	u489_20
u489_21:
	goto	i1l759
u489_20:
	line	96
	
i1l13763:	
;Car_demo.c: 95: {
;Car_demo.c: 96: Encoder_Counter++;
	movlw	(01h)
	movwf	(??_Service+0)+0
	movf	(??_Service+0)+0,w
	addwf	(_Encoder_Counter),f
	line	97
	
i1l13765:	
;Car_demo.c: 97: INTF=0;
	bcf	(89/8),(89)&7
	goto	i1l759
	line	98
	
i1l758:	
	goto	i1l759
	line	99
	
i1l757:	
	goto	i1l759
	
i1l755:	
	
i1l759:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_Service+7),w
	movwf	btemp+1
	movf	(??_Service+6),w
	movwf	pclath
	movf	(??_Service+5),w
	movwf	fsr0
	swapf	(??_Service+4)^00h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_Service
	__end_of_Service:
;; =============== function _Service ends ============

	signat	_Service,88
	global	i1_Trace_PID
psect	text1188,local,class=CODE,delta=2
global __ptext1188
__ptext1188:

;; *************** function i1_Trace_PID *****************
;; Defined at:
;;		line 74 in file "D:\6_pic_project\00_Design_Flow_Car\Driver\pid.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Trace_PID       3   56[BANK0 ] float 
;;  Trace_PID       3   53[BANK0 ] float 
;; Return value:  Size  Location     Type
;;                  2   43[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       8       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		i1___awtoft
;;		i1___ftmul
;;		i1___ftadd
;;		i1___fttol
;; This function is called by:
;;		_Service
;; This function uses a non-reentrant model
;;
psect	text1188
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\pid.c"
	line	74
	global	__size_ofi1_Trace_PID
	__size_ofi1_Trace_PID	equ	__end_ofi1_Trace_PID-i1_Trace_PID
	
i1_Trace_PID:	
	opt	stack 1
; Regs used in i1_Trace_PID: [wreg+status,2+status,0+pclath+cstack]
	line	75
	
i1l14347:	
;pid.c: 75: float Kp=3.0;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(i1Trace_PID@Kp)
	movlw	0x40
	movwf	(i1Trace_PID@Kp+1)
	movlw	0x40
	movwf	(i1Trace_PID@Kp+2)
	line	76
;pid.c: 76: float Kd=1.0;
	movlw	0x0
	movwf	(i1Trace_PID@Kd)
	movlw	0x80
	movwf	(i1Trace_PID@Kd+1)
	movlw	0x3f
	movwf	(i1Trace_PID@Kd+2)
	line	82
	
i1l14349:	
;pid.c: 78: static int turn_err;
;pid.c: 79: static int last_err;
;pid.c: 80: static int err_difference;
;pid.c: 82: Trace_Byte = (RC0<<7|RC3<<6|RE0<<5|RE1<<4|RE2<<3|RA4<<2|RC4<<1|RC5);
	movlw	0
	btfsc	(61/8),(61)&7
	movlw	1
	movwf	(??i1_Trace_PID+0)+0
	movlw	0
	btfsc	(60/8),(60)&7
	movlw	1
	movwf	(??i1_Trace_PID+1)+0
	movlw	01h
u615_25:
	clrc
	rlf	(??i1_Trace_PID+1)+0,f
	addlw	-1
	skipz
	goto	u615_25
	movlw	0
	btfsc	(44/8),(44)&7
	movlw	1
	movwf	(??i1_Trace_PID+2)+0
	movlw	02h
u616_25:
	clrc
	rlf	(??i1_Trace_PID+2)+0,f
	addlw	-1
	skipz
	goto	u616_25
	movlw	0
	btfsc	(74/8),(74)&7
	movlw	1
	movwf	(??i1_Trace_PID+3)+0
	movlw	03h
u617_25:
	clrc
	rlf	(??i1_Trace_PID+3)+0,f
	addlw	-1
	skipz
	goto	u617_25
	movlw	0
	btfsc	(73/8),(73)&7
	movlw	1
	movwf	(??i1_Trace_PID+4)+0
	movlw	04h
u618_25:
	clrc
	rlf	(??i1_Trace_PID+4)+0,f
	addlw	-1
	skipz
	goto	u618_25
	movlw	0
	btfsc	(72/8),(72)&7
	movlw	1
	movwf	(??i1_Trace_PID+5)+0
	movlw	05h
u619_25:
	clrc
	rlf	(??i1_Trace_PID+5)+0,f
	addlw	-1
	skipz
	goto	u619_25
	movlw	0
	btfsc	(59/8),(59)&7
	movlw	1
	movwf	(??i1_Trace_PID+6)+0
	movlw	06h
u620_25:
	clrc
	rlf	(??i1_Trace_PID+6)+0,f
	addlw	-1
	skipz
	goto	u620_25
	movlw	0
	btfsc	(56/8),(56)&7
	movlw	(1 << (07h))
	iorwf	0+(??i1_Trace_PID+6)+0,w
	iorwf	0+(??i1_Trace_PID+5)+0,w
	iorwf	0+(??i1_Trace_PID+4)+0,w
	iorwf	0+(??i1_Trace_PID+3)+0,w
	iorwf	0+(??i1_Trace_PID+2)+0,w
	iorwf	0+(??i1_Trace_PID+1)+0,w
	iorwf	(??i1_Trace_PID+0)+0,w
	movwf	(??i1_Trace_PID+7)+0
	movf	(??i1_Trace_PID+7)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_Trace_Byte)^0180h
	line	85
	
i1l14351:	
;pid.c: 85: if( RE2==0 && RE1 == 0 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(74/8),(74)&7
	goto	u621_21
	goto	u621_20
u621_21:
	goto	i1l9232
u621_20:
	
i1l14353:	
	btfsc	(73/8),(73)&7
	goto	u622_21
	goto	u622_20
u622_21:
	goto	i1l9232
u622_20:
	line	87
	
i1l14355:	
;pid.c: 86: {
;pid.c: 87: turn_err=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(Trace_PID@turn_err)^080h
	clrf	(Trace_PID@turn_err+1)^080h
	line	88
;pid.c: 88: }
	goto	i1l14373
	line	89
	
i1l9232:	
;pid.c: 89: else if(RE0 == 0 && RE1 == 0)
	btfsc	(72/8),(72)&7
	goto	u623_21
	goto	u623_20
u623_21:
	goto	i1l9234
u623_20:
	
i1l14357:	
	btfsc	(73/8),(73)&7
	goto	u624_21
	goto	u624_20
u624_21:
	goto	i1l9234
u624_20:
	line	91
	
i1l14359:	
;pid.c: 90: {
;pid.c: 91: turn_err=-1;
	movlw	low(-1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Trace_PID@turn_err)^080h
	movlw	high(-1)
	movwf	((Trace_PID@turn_err)^080h)+1
	line	92
;pid.c: 92: }
	goto	i1l14373
	line	93
	
i1l9234:	
;pid.c: 93: else if(RE0 == 0 && RE1 == 1)
	btfsc	(72/8),(72)&7
	goto	u625_21
	goto	u625_20
u625_21:
	goto	i1l9236
u625_20:
	
i1l14361:	
	btfss	(73/8),(73)&7
	goto	u626_21
	goto	u626_20
u626_21:
	goto	i1l9236
u626_20:
	line	95
	
i1l14363:	
;pid.c: 94: {
;pid.c: 95: turn_err=-2;
	movlw	low(-2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Trace_PID@turn_err)^080h
	movlw	high(-2)
	movwf	((Trace_PID@turn_err)^080h)+1
	line	96
;pid.c: 96: }
	goto	i1l14373
	line	97
	
i1l9236:	
;pid.c: 97: else if(RA4 == 0 && RE2 == 0)
	btfsc	(44/8),(44)&7
	goto	u627_21
	goto	u627_20
u627_21:
	goto	i1l9238
u627_20:
	
i1l14365:	
	btfsc	(74/8),(74)&7
	goto	u628_21
	goto	u628_20
u628_21:
	goto	i1l9238
u628_20:
	line	99
	
i1l14367:	
;pid.c: 98: {
;pid.c: 99: turn_err=1;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Trace_PID@turn_err)^080h
	movlw	high(01h)
	movwf	((Trace_PID@turn_err)^080h)+1
	line	100
;pid.c: 100: }
	goto	i1l14373
	line	101
	
i1l9238:	
;pid.c: 101: else if(RA4 == 0 && RE2 == 1)
	btfsc	(44/8),(44)&7
	goto	u629_21
	goto	u629_20
u629_21:
	goto	i1l14373
u629_20:
	
i1l14369:	
	btfss	(74/8),(74)&7
	goto	u630_21
	goto	u630_20
u630_21:
	goto	i1l14373
u630_20:
	line	103
	
i1l14371:	
;pid.c: 102: {
;pid.c: 103: turn_err=2;
	movlw	low(02h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Trace_PID@turn_err)^080h
	movlw	high(02h)
	movwf	((Trace_PID@turn_err)^080h)+1
	goto	i1l14373
	line	104
	
i1l9240:	
	goto	i1l14373
	line	106
	
i1l9239:	
	goto	i1l14373
	
i1l9237:	
	goto	i1l14373
	
i1l9235:	
	goto	i1l14373
	
i1l9233:	
	
i1l14373:	
;pid.c: 104: }
;pid.c: 106: err_difference= turn_err - last_err;
	bcf	status, 5	;RP0=0, select bank0
	comf	(Trace_PID@last_err),w
	movwf	(??i1_Trace_PID+0)+0
	comf	(Trace_PID@last_err+1),w
	movwf	((??i1_Trace_PID+0)+0+1)
	incf	(??i1_Trace_PID+0)+0,f
	skipnz
	incf	((??i1_Trace_PID+0)+0+1),f
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Trace_PID@turn_err)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	0+(??i1_Trace_PID+0)+0,w
	movwf	(Trace_PID@err_difference)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Trace_PID@turn_err+1)^080h,w
	skipnc
	incf	(Trace_PID@turn_err+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	1+(??i1_Trace_PID+0)+0,w
	movwf	1+(Trace_PID@err_difference)
	line	107
	
i1l14375:	
;pid.c: 107: last_err= turn_err;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Trace_PID@turn_err+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(Trace_PID@last_err+1)
	addwf	(Trace_PID@last_err+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Trace_PID@turn_err)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(Trace_PID@last_err)
	addwf	(Trace_PID@last_err)

	line	109
	
i1l14377:	
;pid.c: 109: return (int)(turn_err*Kp + err_difference*Kd);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Trace_PID@turn_err+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?i1___awtoft+1)
	addwf	(?i1___awtoft+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Trace_PID@turn_err)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?i1___awtoft)
	addwf	(?i1___awtoft)

	fcall	i1___awtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?i1___awtoft)),w
	movwf	0+(?i1___ftmul)+03h
	movf	(1+(?i1___awtoft)),w
	movwf	1+(?i1___ftmul)+03h
	movf	(2+(?i1___awtoft)),w
	movwf	2+(?i1___ftmul)+03h
	movf	(i1Trace_PID@Kp),w
	movwf	(?i1___ftmul)
	movf	(i1Trace_PID@Kp+1),w
	movwf	(?i1___ftmul+1)
	movf	(i1Trace_PID@Kp+2),w
	movwf	(?i1___ftmul+2)
	fcall	i1___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?i1___ftmul)),w
	movwf	0+(?i1___ftadd)+03h
	movf	(1+(?i1___ftmul)),w
	movwf	1+(?i1___ftadd)+03h
	movf	(2+(?i1___ftmul)),w
	movwf	2+(?i1___ftadd)+03h
	movf	(Trace_PID@err_difference+1),w
	clrf	(?i1___awtoft+1)
	addwf	(?i1___awtoft+1)
	movf	(Trace_PID@err_difference),w
	clrf	(?i1___awtoft)
	addwf	(?i1___awtoft)

	fcall	i1___awtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?i1___awtoft)),w
	movwf	0+(?i1___ftmul)+03h
	movf	(1+(?i1___awtoft)),w
	movwf	1+(?i1___ftmul)+03h
	movf	(2+(?i1___awtoft)),w
	movwf	2+(?i1___ftmul)+03h
	movf	(i1Trace_PID@Kd),w
	movwf	(?i1___ftmul)
	movf	(i1Trace_PID@Kd+1),w
	movwf	(?i1___ftmul+1)
	movf	(i1Trace_PID@Kd+2),w
	movwf	(?i1___ftmul+2)
	fcall	i1___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?i1___ftmul)),w
	movwf	(?i1___ftadd)
	movf	(1+(?i1___ftmul)),w
	movwf	(?i1___ftadd+1)
	movf	(2+(?i1___ftmul)),w
	movwf	(?i1___ftadd+2)
	fcall	i1___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?i1___ftadd)),w
	movwf	(?i1___fttol)
	movf	(1+(?i1___ftadd)),w
	movwf	(?i1___fttol+1)
	movf	(2+(?i1___ftadd)),w
	movwf	(?i1___fttol+2)
	fcall	i1___fttol
	movf	1+(((0+(?i1___fttol)))),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?i1_Trace_PID+1)
	addwf	(?i1_Trace_PID+1)
	movf	0+(((0+(?i1___fttol)))),w
	clrf	(?i1_Trace_PID)
	addwf	(?i1_Trace_PID)

	goto	i1l9241
	
i1l14379:	
	line	110
	
i1l9241:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Trace_PID
	__end_ofi1_Trace_PID:
;; =============== function i1_Trace_PID ends ============

	signat	i1_Trace_PID,90
	global	_Velocity_PID
psect	text1189,local,class=CODE,delta=2
global __ptext1189
__ptext1189:

;; *************** function _Velocity_PID *****************
;; Defined at:
;;		line 56 in file "D:\6_pic_project\00_Design_Flow_Car\Driver\pid.c"
;; Parameters:    Size  Location     Type
;;  velocity        2   43[BANK0 ] int 
;;  velocity_cal    2   45[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  a               3   49[BANK0 ] float 
;; Return value:  Size  Location     Type
;;                  2   43[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
;;		i1___awtoft
;;		___ftneg
;;		i1___ftadd
;;		i1___ftmul
;;		_I_amplitude_limiting
;;		i1___fttol
;; This function is called by:
;;		_Service
;; This function uses a non-reentrant model
;;
psect	text1189
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\pid.c"
	line	56
	global	__size_of_Velocity_PID
	__size_of_Velocity_PID	equ	__end_of_Velocity_PID-_Velocity_PID
	
_Velocity_PID:	
	opt	stack 1
; Regs used in _Velocity_PID: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	57
	
i1l13783:	
;pid.c: 57: float a = 0.3;
	movlw	0x9a
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Velocity_PID@a)
	movlw	0x99
	movwf	(Velocity_PID@a+1)
	movlw	0x3e
	movwf	(Velocity_PID@a+2)
	line	59
	
i1l13785:	
;pid.c: 59: if(velocity_calcu < 0)
	btfss	(Velocity_PID@velocity_calcu+1),7
	goto	u492_21
	goto	u492_20
u492_21:
	goto	i1l13789
u492_20:
	line	61
	
i1l13787:	
;pid.c: 60: {
;pid.c: 61: velocity = -velocity;
	comf	(Velocity_PID@velocity),f
	comf	(Velocity_PID@velocity+1),f
	incf	(Velocity_PID@velocity),f
	skipnz
	incf	(Velocity_PID@velocity+1),f
	goto	i1l13789
	line	62
	
i1l9222:	
	line	64
	
i1l13789:	
;pid.c: 62: }
;pid.c: 64: Velocity.error = velocity - velocity_calcu;
	comf	(Velocity_PID@velocity_calcu),w
	movwf	(??_Velocity_PID+0)+0
	comf	(Velocity_PID@velocity_calcu+1),w
	movwf	((??_Velocity_PID+0)+0+1)
	incf	(??_Velocity_PID+0)+0,f
	skipnz
	incf	((??_Velocity_PID+0)+0+1),f
	movf	(Velocity_PID@velocity),w
	addwf	0+(??_Velocity_PID+0)+0,w
	movwf	(?i1___awtoft)
	movf	(Velocity_PID@velocity+1),w
	skipnc
	incf	(Velocity_PID@velocity+1),w
	addwf	1+(??_Velocity_PID+0)+0,w
	movwf	1+(?i1___awtoft)
	fcall	i1___awtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?i1___awtoft)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	0+(_Velocity)^0180h+09h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?i1___awtoft)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	1+(_Velocity)^0180h+09h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?i1___awtoft)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	2+(_Velocity)^0180h+09h
	line	65
	
i1l13791:	
;pid.c: 65: filt_velocity = a*Velocity.error+(1-a)*last_filt_velocity;
	movf	(_last_filt_velocity)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?i1___ftmul)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_last_filt_velocity+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?i1___ftmul+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_last_filt_velocity+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?i1___ftmul+2)
	movlw	0x0
	movwf	(?i1___ftadd)
	movlw	0x80
	movwf	(?i1___ftadd+1)
	movlw	0x3f
	movwf	(?i1___ftadd+2)
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
	movwf	0+(?i1___ftadd)+03h
	movf	(1+(?___ftneg)),w
	movwf	1+(?i1___ftadd)+03h
	movf	(2+(?___ftneg)),w
	movwf	2+(?i1___ftadd)+03h
	fcall	i1___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?i1___ftadd)),w
	movwf	0+(?i1___ftmul)+03h
	movf	(1+(?i1___ftadd)),w
	movwf	1+(?i1___ftmul)+03h
	movf	(2+(?i1___ftadd)),w
	movwf	2+(?i1___ftmul)+03h
	fcall	i1___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?i1___ftmul)),w
	movwf	(?i1___ftadd)
	movf	(1+(?i1___ftmul)),w
	movwf	(?i1___ftadd+1)
	movf	(2+(?i1___ftmul)),w
	movwf	(?i1___ftadd+2)
	movf	(Velocity_PID@a),w
	movwf	(?i1___ftmul)
	movf	(Velocity_PID@a+1),w
	movwf	(?i1___ftmul+1)
	movf	(Velocity_PID@a+2),w
	movwf	(?i1___ftmul+2)
	movlw	(09h)
	addlw	_Velocity&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	0+(?i1___ftmul)+03h
	incf	fsr0,f
	movf	indf,w
	movwf	1+(?i1___ftmul)+03h
	incf	fsr0,f
	movf	indf,w
	movwf	2+(?i1___ftmul)+03h
	fcall	i1___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?i1___ftmul)),w
	movwf	0+(?i1___ftadd)+03h
	movf	(1+(?i1___ftmul)),w
	movwf	1+(?i1___ftadd)+03h
	movf	(2+(?i1___ftmul)),w
	movwf	2+(?i1___ftadd)+03h
	fcall	i1___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?i1___ftadd)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_filt_velocity)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?i1___ftadd)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_filt_velocity+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?i1___ftadd)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_filt_velocity+2)^0180h
	line	66
	
i1l13793:	
;pid.c: 66: Velocity.error_sum += filt_velocity ;
	movf	(_filt_velocity)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?i1___ftadd)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_filt_velocity+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?i1___ftadd+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_filt_velocity+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?i1___ftadd+2)
	movlw	(0Fh)
	addlw	_Velocity&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	0+(?i1___ftadd)+03h
	incf	fsr0,f
	movf	indf,w
	movwf	1+(?i1___ftadd)+03h
	incf	fsr0,f
	movf	indf,w
	movwf	2+(?i1___ftadd)+03h
	fcall	i1___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?i1___ftadd)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	0+(_Velocity)^0180h+0Fh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?i1___ftadd)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	1+(_Velocity)^0180h+0Fh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?i1___ftadd)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	2+(_Velocity)^0180h+0Fh
	line	67
	
i1l13795:	
;pid.c: 67: I_amplitude_limiting(20,&Velocity.error_sum);
	movlw	(_Velocity+0Fh)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Velocity_PID+0)+0
	movf	(??_Velocity_PID+0)+0,w
	movwf	(?_I_amplitude_limiting)
	movlw	(014h)
	fcall	_I_amplitude_limiting
	line	68
	
i1l13797:	
;pid.c: 68: last_filt_velocity = filt_velocity;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_filt_velocity)^0180h,w
	movwf	(_last_filt_velocity)^0180h
	movf	(_filt_velocity+1)^0180h,w
	movwf	(_last_filt_velocity+1)^0180h
	movf	(_filt_velocity+2)^0180h,w
	movwf	(_last_filt_velocity+2)^0180h
	line	70
	
i1l13799:	
;pid.c: 70: return ((int)(filt_velocity * Velocity.Kp + Velocity.error_sum * Velocity.Ki);
	movf	(_Velocity)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?i1___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_Velocity+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?i1___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_Velocity+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?i1___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_filt_velocity)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?i1___ftmul)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_filt_velocity+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?i1___ftmul+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_filt_velocity+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?i1___ftmul+2)
	fcall	i1___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?i1___ftmul)),w
	movwf	0+(?i1___ftadd)+03h
	movf	(1+(?i1___ftmul)),w
	movwf	1+(?i1___ftadd)+03h
	movf	(2+(?i1___ftmul)),w
	movwf	2+(?i1___ftadd)+03h
	movlw	(0Fh)
	addlw	_Velocity&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	0+(?i1___ftmul)+03h
	incf	fsr0,f
	movf	indf,w
	movwf	1+(?i1___ftmul)+03h
	incf	fsr0,f
	movf	indf,w
	movwf	2+(?i1___ftmul)+03h
	movlw	(03h)
	addlw	_Velocity&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(?i1___ftmul)
	incf	fsr0,f
	movf	indf,w
	movwf	(?i1___ftmul+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(?i1___ftmul+2)
	fcall	i1___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?i1___ftmul)),w
	movwf	(?i1___ftadd)
	movf	(1+(?i1___ftmul)),w
	movwf	(?i1___ftadd+1)
	movf	(2+(?i1___ftmul)),w
	movwf	(?i1___ftadd+2)
	fcall	i1___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?i1___ftadd)),w
	movwf	(?i1___fttol)
	movf	(1+(?i1___ftadd)),w
	movwf	(?i1___fttol+1)
	movf	(2+(?i1___ftadd)),w
	movwf	(?i1___fttol+2)
	fcall	i1___fttol
	movf	1+(((0+(?i1___fttol)))),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_Velocity_PID+1)
	addwf	(?_Velocity_PID+1)
	movf	0+(((0+(?i1___fttol)))),w
	clrf	(?_Velocity_PID)
	addwf	(?_Velocity_PID)

	goto	i1l9223
	
i1l13801:	
	line	71
	
i1l9223:	
	return
	opt stack 0
GLOBAL	__end_of_Velocity_PID
	__end_of_Velocity_PID:
;; =============== function _Velocity_PID ends ============

	signat	_Velocity_PID,8314
	global	i1___awtoft
psect	text1190,local,class=CODE,delta=2
global __ptext1190
__ptext1190:

;; *************** function i1___awtoft *****************
;; Defined at:
;;		line 33 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awtoft.c"
;; Parameters:    Size  Location     Type
;;  __awtoft        2   10[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  __awtoft        1   13[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   10[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       4       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1___ftpack
;; This function is called by:
;;		_Velocity_PID
;;		i1_Trace_PID
;; This function uses a non-reentrant model
;;
psect	text1190
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awtoft.c"
	line	33
	global	__size_ofi1___awtoft
	__size_ofi1___awtoft	equ	__end_ofi1___awtoft-i1___awtoft
	
i1___awtoft:	
	opt	stack 1
; Regs used in i1___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
i1l14545:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(i1___awtoft@sign)
	line	37
	btfss	(i1___awtoft@c+1),7
	goto	u679_21
	goto	u679_20
u679_21:
	goto	i1l14549
u679_20:
	line	38
	
i1l14547:	
	comf	(i1___awtoft@c),f
	comf	(i1___awtoft@c+1),f
	incf	(i1___awtoft@c),f
	skipnz
	incf	(i1___awtoft@c+1),f
	line	39
	clrf	(i1___awtoft@sign)
	bsf	status,0
	rlf	(i1___awtoft@sign),f
	goto	i1l14549
	line	40
	
i1l10801:	
	line	41
	
i1l14549:	
	movf	(i1___awtoft@c),w
	movwf	(?i1___ftpack)
	movf	(i1___awtoft@c+1),w
	movwf	(?i1___ftpack+1)
	clrf	(?i1___ftpack+2)
	movlw	(08Eh)
	movwf	(??i1___awtoft+0)+0
	movf	(??i1___awtoft+0)+0,w
	movwf	0+(?i1___ftpack)+03h
	movf	(i1___awtoft@sign),w
	movwf	(??i1___awtoft+1)+0
	movf	(??i1___awtoft+1)+0,w
	movwf	0+(?i1___ftpack)+04h
	fcall	i1___ftpack
	movf	(0+(?i1___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?i1___awtoft)
	movf	(1+(?i1___ftpack)),w
	movwf	(?i1___awtoft+1)
	movf	(2+(?i1___ftpack)),w
	movwf	(?i1___awtoft+2)
	goto	i1l10802
	
i1l14551:	
	line	42
	
i1l10802:	
	return
	opt stack 0
GLOBAL	__end_ofi1___awtoft
	__end_ofi1___awtoft:
;; =============== function i1___awtoft ends ============

	signat	i1___awtoft,91
	global	i1___ftmul
psect	text1191,local,class=CODE,delta=2
global __ptext1191
__ptext1191:

;; *************** function i1___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  __ftmul         3   14[BANK0 ] float 
;;  __ftmul         3   17[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  __ftmul         3   25[BANK0 ] unsigned um
;;  __ftmul         1   29[BANK0 ] unsigned char 
;;  __ftmul         1   28[BANK0 ] unsigned char 
;;  __ftmul         1   24[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   14[BANK0 ] float 
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
;;		i1___ftpack
;; This function is called by:
;;		_Velocity_PID
;;		i1_Trace_PID
;; This function uses a non-reentrant model
;;
psect	text1191
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftmul.c"
	line	52
	global	__size_ofi1___ftmul
	__size_ofi1___ftmul	equ	__end_ofi1___ftmul-i1___ftmul
	
i1___ftmul:	
	opt	stack 1
; Regs used in i1___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
i1l14451:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(i1___ftmul@f1),w
	movwf	((??i1___ftmul+0)+0)
	movf	(i1___ftmul@f1+1),w
	movwf	((??i1___ftmul+0)+0+1)
	movf	(i1___ftmul@f1+2),w
	movwf	((??i1___ftmul+0)+0+2)
	clrc
	rlf	(??i1___ftmul+0)+1,w
	rlf	(??i1___ftmul+0)+2,w
	movwf	(??i1___ftmul+3)+0
	movf	(??i1___ftmul+3)+0,w
	movwf	(i1___ftmul@exp)
	movf	((i1___ftmul@exp)),f
	skipz
	goto	u655_21
	goto	u655_20
u655_21:
	goto	i1l14457
u655_20:
	line	57
	
i1l14453:	
	movlw	0x0
	movwf	(?i1___ftmul)
	movlw	0x0
	movwf	(?i1___ftmul+1)
	movlw	0x0
	movwf	(?i1___ftmul+2)
	goto	i1l10764
	
i1l14455:	
	goto	i1l10764
	
i1l10763:	
	line	58
	
i1l14457:	
	movf	(i1___ftmul@f2),w
	movwf	((??i1___ftmul+0)+0)
	movf	(i1___ftmul@f2+1),w
	movwf	((??i1___ftmul+0)+0+1)
	movf	(i1___ftmul@f2+2),w
	movwf	((??i1___ftmul+0)+0+2)
	clrc
	rlf	(??i1___ftmul+0)+1,w
	rlf	(??i1___ftmul+0)+2,w
	movwf	(??i1___ftmul+3)+0
	movf	(??i1___ftmul+3)+0,w
	movwf	(i1___ftmul@sign)
	movf	((i1___ftmul@sign)),f
	skipz
	goto	u656_21
	goto	u656_20
u656_21:
	goto	i1l14463
u656_20:
	line	59
	
i1l14459:	
	movlw	0x0
	movwf	(?i1___ftmul)
	movlw	0x0
	movwf	(?i1___ftmul+1)
	movlw	0x0
	movwf	(?i1___ftmul+2)
	goto	i1l10764
	
i1l14461:	
	goto	i1l10764
	
i1l10765:	
	line	60
	
i1l14463:	
	movf	(i1___ftmul@sign),w
	addlw	07Bh
	movwf	(??i1___ftmul+0)+0
	movf	(??i1___ftmul+0)+0,w
	addwf	(i1___ftmul@exp),f
	line	61
	movf	(i1___ftmul@f1),w
	movwf	((??i1___ftmul+0)+0)
	movf	(i1___ftmul@f1+1),w
	movwf	((??i1___ftmul+0)+0+1)
	movf	(i1___ftmul@f1+2),w
	movwf	((??i1___ftmul+0)+0+2)
	movlw	010h
u657_25:
	clrc
	rrf	(??i1___ftmul+0)+2,f
	rrf	(??i1___ftmul+0)+1,f
	rrf	(??i1___ftmul+0)+0,f
u657_20:
	addlw	-1
	skipz
	goto	u657_25
	movf	0+(??i1___ftmul+0)+0,w
	movwf	(??i1___ftmul+3)+0
	movf	(??i1___ftmul+3)+0,w
	movwf	(i1___ftmul@sign)
	line	62
	movf	(i1___ftmul@f2),w
	movwf	((??i1___ftmul+0)+0)
	movf	(i1___ftmul@f2+1),w
	movwf	((??i1___ftmul+0)+0+1)
	movf	(i1___ftmul@f2+2),w
	movwf	((??i1___ftmul+0)+0+2)
	movlw	010h
u658_25:
	clrc
	rrf	(??i1___ftmul+0)+2,f
	rrf	(??i1___ftmul+0)+1,f
	rrf	(??i1___ftmul+0)+0,f
u658_20:
	addlw	-1
	skipz
	goto	u658_25
	movf	0+(??i1___ftmul+0)+0,w
	movwf	(??i1___ftmul+3)+0
	movf	(??i1___ftmul+3)+0,w
	xorwf	(i1___ftmul@sign),f
	line	63
	movlw	(080h)
	movwf	(??i1___ftmul+0)+0
	movf	(??i1___ftmul+0)+0,w
	andwf	(i1___ftmul@sign),f
	line	64
	
i1l14465:	
	bsf	(i1___ftmul@f1)+(15/8),(15)&7
	line	66
	
i1l14467:	
	bsf	(i1___ftmul@f2)+(15/8),(15)&7
	line	67
	
i1l14469:	
	movlw	0FFh
	andwf	(i1___ftmul@f2),f
	movlw	0FFh
	andwf	(i1___ftmul@f2+1),f
	movlw	0
	andwf	(i1___ftmul@f2+2),f
	line	68
	
i1l14471:	
	movlw	0
	movwf	(i1___ftmul@f3_as_product)
	movlw	0
	movwf	(i1___ftmul@f3_as_product+1)
	movlw	0
	movwf	(i1___ftmul@f3_as_product+2)
	line	69
	
i1l14473:	
	movlw	(07h)
	movwf	(??i1___ftmul+0)+0
	movf	(??i1___ftmul+0)+0,w
	movwf	(i1___ftmul@cntr)
	goto	i1l14475
	line	70
	
i1l10766:	
	line	71
	
i1l14475:	
	btfss	(i1___ftmul@f1),(0)&7
	goto	u659_21
	goto	u659_20
u659_21:
	goto	i1l14479
u659_20:
	line	72
	
i1l14477:	
	movf	(i1___ftmul@f2),w
	addwf	(i1___ftmul@f3_as_product),f
	movf	(i1___ftmul@f2+1),w
	clrz
	skipnc
	incf	(i1___ftmul@f2+1),w
	skipnz
	goto	u660_21
	addwf	(i1___ftmul@f3_as_product+1),f
u660_21:
	movf	(i1___ftmul@f2+2),w
	clrz
	skipnc
	incf	(i1___ftmul@f2+2),w
	skipnz
	goto	u660_22
	addwf	(i1___ftmul@f3_as_product+2),f
u660_22:

	goto	i1l14479
	
i1l10767:	
	line	73
	
i1l14479:	
	movlw	01h
u661_25:
	clrc
	rrf	(i1___ftmul@f1+2),f
	rrf	(i1___ftmul@f1+1),f
	rrf	(i1___ftmul@f1),f
	addlw	-1
	skipz
	goto	u661_25

	line	74
	
i1l14481:	
	movlw	01h
u662_25:
	clrc
	rlf	(i1___ftmul@f2),f
	rlf	(i1___ftmul@f2+1),f
	rlf	(i1___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u662_25
	line	75
	
i1l14483:	
	movlw	low(01h)
	subwf	(i1___ftmul@cntr),f
	btfss	status,2
	goto	u663_21
	goto	u663_20
u663_21:
	goto	i1l14475
u663_20:
	goto	i1l14485
	
i1l10768:	
	line	76
	
i1l14485:	
	movlw	(09h)
	movwf	(??i1___ftmul+0)+0
	movf	(??i1___ftmul+0)+0,w
	movwf	(i1___ftmul@cntr)
	goto	i1l14487
	line	77
	
i1l10769:	
	line	78
	
i1l14487:	
	btfss	(i1___ftmul@f1),(0)&7
	goto	u664_21
	goto	u664_20
u664_21:
	goto	i1l14491
u664_20:
	line	79
	
i1l14489:	
	movf	(i1___ftmul@f2),w
	addwf	(i1___ftmul@f3_as_product),f
	movf	(i1___ftmul@f2+1),w
	clrz
	skipnc
	incf	(i1___ftmul@f2+1),w
	skipnz
	goto	u665_21
	addwf	(i1___ftmul@f3_as_product+1),f
u665_21:
	movf	(i1___ftmul@f2+2),w
	clrz
	skipnc
	incf	(i1___ftmul@f2+2),w
	skipnz
	goto	u665_22
	addwf	(i1___ftmul@f3_as_product+2),f
u665_22:

	goto	i1l14491
	
i1l10770:	
	line	80
	
i1l14491:	
	movlw	01h
u666_25:
	clrc
	rrf	(i1___ftmul@f1+2),f
	rrf	(i1___ftmul@f1+1),f
	rrf	(i1___ftmul@f1),f
	addlw	-1
	skipz
	goto	u666_25

	line	81
	
i1l14493:	
	movlw	01h
u667_25:
	clrc
	rrf	(i1___ftmul@f3_as_product+2),f
	rrf	(i1___ftmul@f3_as_product+1),f
	rrf	(i1___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u667_25

	line	82
	
i1l14495:	
	movlw	low(01h)
	subwf	(i1___ftmul@cntr),f
	btfss	status,2
	goto	u668_21
	goto	u668_20
u668_21:
	goto	i1l14487
u668_20:
	goto	i1l14497
	
i1l10771:	
	line	83
	
i1l14497:	
	movf	(i1___ftmul@f3_as_product),w
	movwf	(?i1___ftpack)
	movf	(i1___ftmul@f3_as_product+1),w
	movwf	(?i1___ftpack+1)
	movf	(i1___ftmul@f3_as_product+2),w
	movwf	(?i1___ftpack+2)
	movf	(i1___ftmul@exp),w
	movwf	(??i1___ftmul+0)+0
	movf	(??i1___ftmul+0)+0,w
	movwf	0+(?i1___ftpack)+03h
	movf	(i1___ftmul@sign),w
	movwf	(??i1___ftmul+1)+0
	movf	(??i1___ftmul+1)+0,w
	movwf	0+(?i1___ftpack)+04h
	fcall	i1___ftpack
	movf	(0+(?i1___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?i1___ftmul)
	movf	(1+(?i1___ftpack)),w
	movwf	(?i1___ftmul+1)
	movf	(2+(?i1___ftpack)),w
	movwf	(?i1___ftmul+2)
	goto	i1l10764
	
i1l14499:	
	line	84
	
i1l10764:	
	return
	opt stack 0
GLOBAL	__end_ofi1___ftmul
	__end_ofi1___ftmul:
;; =============== function i1___ftmul ends ============

	signat	i1___ftmul,91
	global	i1___ftadd
psect	text1192,local,class=CODE,delta=2
global __ptext1192
__ptext1192:

;; *************** function i1___ftadd *****************
;; Defined at:
;;		line 87 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftadd.c"
;; Parameters:    Size  Location     Type
;;  __ftadd         3   30[BANK0 ] float 
;;  __ftadd         3   33[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  __ftadd         1   42[BANK0 ] unsigned char 
;;  __ftadd         1   41[BANK0 ] unsigned char 
;;  __ftadd         1   40[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   30[BANK0 ] float 
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
;;		i1___ftpack
;; This function is called by:
;;		_Velocity_PID
;;		i1_Trace_PID
;; This function uses a non-reentrant model
;;
psect	text1192
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftadd.c"
	line	87
	global	__size_ofi1___ftadd
	__size_ofi1___ftadd	equ	__end_ofi1___ftadd-i1___ftadd
	
i1___ftadd:	
	opt	stack 1
; Regs used in i1___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
i1l14381:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(i1___ftadd@f1),w
	movwf	((??i1___ftadd+0)+0)
	movf	(i1___ftadd@f1+1),w
	movwf	((??i1___ftadd+0)+0+1)
	movf	(i1___ftadd@f1+2),w
	movwf	((??i1___ftadd+0)+0+2)
	clrc
	rlf	(??i1___ftadd+0)+1,w
	rlf	(??i1___ftadd+0)+2,w
	movwf	(??i1___ftadd+3)+0
	movf	(??i1___ftadd+3)+0,w
	movwf	(i1___ftadd@exp1)
	line	91
	movf	(i1___ftadd@f2),w
	movwf	((??i1___ftadd+0)+0)
	movf	(i1___ftadd@f2+1),w
	movwf	((??i1___ftadd+0)+0+1)
	movf	(i1___ftadd@f2+2),w
	movwf	((??i1___ftadd+0)+0+2)
	clrc
	rlf	(??i1___ftadd+0)+1,w
	rlf	(??i1___ftadd+0)+2,w
	movwf	(??i1___ftadd+3)+0
	movf	(??i1___ftadd+3)+0,w
	movwf	(i1___ftadd@exp2)
	line	92
	
i1l14383:	
	movf	(i1___ftadd@exp1),w
	skipz
	goto	u631_20
	goto	i1l14389
u631_20:
	
i1l14385:	
	movf	(i1___ftadd@exp2),w
	subwf	(i1___ftadd@exp1),w
	skipnc
	goto	u632_21
	goto	u632_20
u632_21:
	goto	i1l14393
u632_20:
	
i1l14387:	
	decf	(i1___ftadd@exp1),w
	xorlw	0ffh
	addwf	(i1___ftadd@exp2),w
	movwf	(??i1___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??i1___ftadd+0)+0,w
	skipc
	goto	u633_21
	goto	u633_20
u633_21:
	goto	i1l14393
u633_20:
	goto	i1l14389
	
i1l10711:	
	line	93
	
i1l14389:	
	movf	(i1___ftadd@f2),w
	movwf	(?i1___ftadd)
	movf	(i1___ftadd@f2+1),w
	movwf	(?i1___ftadd+1)
	movf	(i1___ftadd@f2+2),w
	movwf	(?i1___ftadd+2)
	goto	i1l10712
	
i1l14391:	
	goto	i1l10712
	
i1l10709:	
	line	94
	
i1l14393:	
	movf	(i1___ftadd@exp2),w
	skipz
	goto	u634_20
	goto	i1l10715
u634_20:
	
i1l14395:	
	movf	(i1___ftadd@exp1),w
	subwf	(i1___ftadd@exp2),w
	skipnc
	goto	u635_21
	goto	u635_20
u635_21:
	goto	i1l14399
u635_20:
	
i1l14397:	
	decf	(i1___ftadd@exp2),w
	xorlw	0ffh
	addwf	(i1___ftadd@exp1),w
	movwf	(??i1___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??i1___ftadd+0)+0,w
	skipc
	goto	u636_21
	goto	u636_20
u636_21:
	goto	i1l14399
u636_20:
	
i1l10715:	
	line	95
	goto	i1l10712
	
i1l10713:	
	line	96
	
i1l14399:	
	movlw	(06h)
	movwf	(??i1___ftadd+0)+0
	movf	(??i1___ftadd+0)+0,w
	movwf	(i1___ftadd@sign)
	line	97
	
i1l14401:	
	btfss	(i1___ftadd@f1+2),(23)&7
	goto	u637_21
	goto	u637_20
u637_21:
	goto	i1l10716
u637_20:
	line	98
	
i1l14403:	
	bsf	(i1___ftadd@sign)+(7/8),(7)&7
	
i1l10716:	
	line	99
	btfss	(i1___ftadd@f2+2),(23)&7
	goto	u638_21
	goto	u638_20
u638_21:
	goto	i1l10717
u638_20:
	line	100
	
i1l14405:	
	bsf	(i1___ftadd@sign)+(6/8),(6)&7
	
i1l10717:	
	line	101
	bsf	(i1___ftadd@f1)+(15/8),(15)&7
	line	102
	
i1l14407:	
	movlw	0FFh
	andwf	(i1___ftadd@f1),f
	movlw	0FFh
	andwf	(i1___ftadd@f1+1),f
	movlw	0
	andwf	(i1___ftadd@f1+2),f
	line	103
	
i1l14409:	
	bsf	(i1___ftadd@f2)+(15/8),(15)&7
	line	104
	movlw	0FFh
	andwf	(i1___ftadd@f2),f
	movlw	0FFh
	andwf	(i1___ftadd@f2+1),f
	movlw	0
	andwf	(i1___ftadd@f2+2),f
	line	106
	movf	(i1___ftadd@exp2),w
	subwf	(i1___ftadd@exp1),w
	skipnc
	goto	u639_21
	goto	u639_20
u639_21:
	goto	i1l14421
u639_20:
	goto	i1l14411
	line	109
	
i1l10719:	
	line	110
	
i1l14411:	
	movlw	01h
u640_25:
	clrc
	rlf	(i1___ftadd@f2),f
	rlf	(i1___ftadd@f2+1),f
	rlf	(i1___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u640_25
	line	111
	movlw	low(01h)
	subwf	(i1___ftadd@exp2),f
	line	112
	
i1l14413:	
	movf	(i1___ftadd@exp2),w
	xorwf	(i1___ftadd@exp1),w
	skipnz
	goto	u641_21
	goto	u641_20
u641_21:
	goto	i1l14419
u641_20:
	
i1l14415:	
	movlw	low(01h)
	subwf	(i1___ftadd@sign),f
	movf	((i1___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u642_21
	goto	u642_20
u642_21:
	goto	i1l14411
u642_20:
	goto	i1l14419
	
i1l10721:	
	goto	i1l14419
	
i1l10722:	
	line	113
	goto	i1l14419
	
i1l10724:	
	line	114
	
i1l14417:	
	movlw	01h
u643_25:
	clrc
	rrf	(i1___ftadd@f1+2),f
	rrf	(i1___ftadd@f1+1),f
	rrf	(i1___ftadd@f1),f
	addlw	-1
	skipz
	goto	u643_25

	line	115
	movlw	(01h)
	movwf	(??i1___ftadd+0)+0
	movf	(??i1___ftadd+0)+0,w
	addwf	(i1___ftadd@exp1),f
	goto	i1l14419
	line	116
	
i1l10723:	
	line	113
	
i1l14419:	
	movf	(i1___ftadd@exp1),w
	xorwf	(i1___ftadd@exp2),w
	skipz
	goto	u644_21
	goto	u644_20
u644_21:
	goto	i1l14417
u644_20:
	goto	i1l10726
	
i1l10725:	
	line	117
	goto	i1l10726
	
i1l10718:	
	
i1l14421:	
	movf	(i1___ftadd@exp1),w
	subwf	(i1___ftadd@exp2),w
	skipnc
	goto	u645_21
	goto	u645_20
u645_21:
	goto	i1l10726
u645_20:
	goto	i1l14423
	line	120
	
i1l10728:	
	line	121
	
i1l14423:	
	movlw	01h
u646_25:
	clrc
	rlf	(i1___ftadd@f1),f
	rlf	(i1___ftadd@f1+1),f
	rlf	(i1___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u646_25
	line	122
	movlw	low(01h)
	subwf	(i1___ftadd@exp1),f
	line	123
	
i1l14425:	
	movf	(i1___ftadd@exp2),w
	xorwf	(i1___ftadd@exp1),w
	skipnz
	goto	u647_21
	goto	u647_20
u647_21:
	goto	i1l14431
u647_20:
	
i1l14427:	
	movlw	low(01h)
	subwf	(i1___ftadd@sign),f
	movf	((i1___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u648_21
	goto	u648_20
u648_21:
	goto	i1l14423
u648_20:
	goto	i1l14431
	
i1l10730:	
	goto	i1l14431
	
i1l10731:	
	line	124
	goto	i1l14431
	
i1l10733:	
	line	125
	
i1l14429:	
	movlw	01h
u649_25:
	clrc
	rrf	(i1___ftadd@f2+2),f
	rrf	(i1___ftadd@f2+1),f
	rrf	(i1___ftadd@f2),f
	addlw	-1
	skipz
	goto	u649_25

	line	126
	movlw	(01h)
	movwf	(??i1___ftadd+0)+0
	movf	(??i1___ftadd+0)+0,w
	addwf	(i1___ftadd@exp2),f
	goto	i1l14431
	line	127
	
i1l10732:	
	line	124
	
i1l14431:	
	movf	(i1___ftadd@exp1),w
	xorwf	(i1___ftadd@exp2),w
	skipz
	goto	u650_21
	goto	u650_20
u650_21:
	goto	i1l14429
u650_20:
	goto	i1l10726
	
i1l10734:	
	goto	i1l10726
	line	128
	
i1l10727:	
	line	129
	
i1l10726:	
	btfss	(i1___ftadd@sign),(7)&7
	goto	u651_21
	goto	u651_20
u651_21:
	goto	i1l14435
u651_20:
	line	131
	
i1l14433:	
	movlw	0FFh
	xorwf	(i1___ftadd@f1),f
	movlw	0FFh
	xorwf	(i1___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(i1___ftadd@f1+2),f
	line	132
	movlw	01h
	addwf	(i1___ftadd@f1),f
	movlw	0
	skipnc
movlw 1
	addwf	(i1___ftadd@f1+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(i1___ftadd@f1+2),f
	goto	i1l14435
	line	133
	
i1l10735:	
	line	134
	
i1l14435:	
	btfss	(i1___ftadd@sign),(6)&7
	goto	u652_21
	goto	u652_20
u652_21:
	goto	i1l14439
u652_20:
	line	136
	
i1l14437:	
	movlw	0FFh
	xorwf	(i1___ftadd@f2),f
	movlw	0FFh
	xorwf	(i1___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(i1___ftadd@f2+2),f
	line	137
	movlw	01h
	addwf	(i1___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(i1___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(i1___ftadd@f2+2),f
	goto	i1l14439
	line	138
	
i1l10736:	
	line	139
	
i1l14439:	
	clrf	(i1___ftadd@sign)
	line	140
	movf	(i1___ftadd@f1),w
	addwf	(i1___ftadd@f2),f
	movf	(i1___ftadd@f1+1),w
	clrz
	skipnc
	incf	(i1___ftadd@f1+1),w
	skipnz
	goto	u653_21
	addwf	(i1___ftadd@f2+1),f
u653_21:
	movf	(i1___ftadd@f1+2),w
	clrz
	skipnc
	incf	(i1___ftadd@f1+2),w
	skipnz
	goto	u653_22
	addwf	(i1___ftadd@f2+2),f
u653_22:

	line	141
	
i1l14441:	
	btfss	(i1___ftadd@f2+2),(23)&7
	goto	u654_21
	goto	u654_20
u654_21:
	goto	i1l14447
u654_20:
	line	142
	
i1l14443:	
	movlw	0FFh
	xorwf	(i1___ftadd@f2),f
	movlw	0FFh
	xorwf	(i1___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(i1___ftadd@f2+2),f
	line	143
	movlw	01h
	addwf	(i1___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(i1___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(i1___ftadd@f2+2),f
	line	144
	
i1l14445:	
	clrf	(i1___ftadd@sign)
	bsf	status,0
	rlf	(i1___ftadd@sign),f
	goto	i1l14447
	line	145
	
i1l10737:	
	line	146
	
i1l14447:	
	movf	(i1___ftadd@f2),w
	movwf	(?i1___ftpack)
	movf	(i1___ftadd@f2+1),w
	movwf	(?i1___ftpack+1)
	movf	(i1___ftadd@f2+2),w
	movwf	(?i1___ftpack+2)
	movf	(i1___ftadd@exp1),w
	movwf	(??i1___ftadd+0)+0
	movf	(??i1___ftadd+0)+0,w
	movwf	0+(?i1___ftpack)+03h
	movf	(i1___ftadd@sign),w
	movwf	(??i1___ftadd+1)+0
	movf	(??i1___ftadd+1)+0,w
	movwf	0+(?i1___ftpack)+04h
	fcall	i1___ftpack
	movf	(0+(?i1___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?i1___ftadd)
	movf	(1+(?i1___ftpack)),w
	movwf	(?i1___ftadd+1)
	movf	(2+(?i1___ftpack)),w
	movwf	(?i1___ftadd+2)
	goto	i1l10712
	
i1l14449:	
	line	148
	
i1l10712:	
	return
	opt stack 0
GLOBAL	__end_ofi1___ftadd
	__end_ofi1___ftadd:
;; =============== function i1___ftadd ends ============

	signat	i1___ftadd,91
	global	i1___ftpack
psect	text1193,local,class=CODE,delta=2
global __ptext1193
__ptext1193:

;; *************** function i1___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\float.c"
;; Parameters:    Size  Location     Type
;;  __ftpack        3    0[COMMON] unsigned um
;;  __ftpack        1    3[COMMON] unsigned char 
;;  __ftpack        1    4[COMMON] unsigned char 
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
;;		i1___ftadd
;;		i1___ftmul
;;		i1___awtoft
;; This function uses a non-reentrant model
;;
psect	text1193
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\float.c"
	line	63
	global	__size_ofi1___ftpack
	__size_ofi1___ftpack	equ	__end_ofi1___ftpack-i1___ftpack
	
i1___ftpack:	
	opt	stack 1
; Regs used in i1___ftpack: [wreg+status,2+status,0]
	line	64
	
i1l14553:	
	movf	(i1___ftpack@exp),w
	skipz
	goto	u680_20
	goto	i1l14557
u680_20:
	
i1l14555:	
	movf	(i1___ftpack@arg+2),w
	iorwf	(i1___ftpack@arg+1),w
	iorwf	(i1___ftpack@arg),w
	skipz
	goto	u681_21
	goto	u681_20
u681_21:
	goto	i1l14563
u681_20:
	goto	i1l14557
	
i1l10999:	
	line	65
	
i1l14557:	
	movlw	0x0
	movwf	(?i1___ftpack)
	movlw	0x0
	movwf	(?i1___ftpack+1)
	movlw	0x0
	movwf	(?i1___ftpack+2)
	goto	i1l11000
	
i1l14559:	
	goto	i1l11000
	
i1l10997:	
	line	66
	goto	i1l14563
	
i1l11002:	
	line	67
	
i1l14561:	
	movlw	(01h)
	movwf	(??i1___ftpack+0)+0
	movf	(??i1___ftpack+0)+0,w
	addwf	(i1___ftpack@exp),f
	line	68
	movlw	01h
u682_25:
	clrc
	rrf	(i1___ftpack@arg+2),f
	rrf	(i1___ftpack@arg+1),f
	rrf	(i1___ftpack@arg),f
	addlw	-1
	skipz
	goto	u682_25

	goto	i1l14563
	line	69
	
i1l11001:	
	line	66
	
i1l14563:	
	movlw	low highword(0FE0000h)
	andwf	(i1___ftpack@arg+2),w
	btfss	status,2
	goto	u683_21
	goto	u683_20
u683_21:
	goto	i1l14561
u683_20:
	goto	i1l11004
	
i1l11003:	
	line	70
	goto	i1l11004
	
i1l11005:	
	line	71
	
i1l14565:	
	movlw	(01h)
	movwf	(??i1___ftpack+0)+0
	movf	(??i1___ftpack+0)+0,w
	addwf	(i1___ftpack@exp),f
	line	72
	
i1l14567:	
	movlw	01h
	addwf	(i1___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(i1___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(i1___ftpack@arg+2),f
	line	73
	
i1l14569:	
	movlw	01h
u684_25:
	clrc
	rrf	(i1___ftpack@arg+2),f
	rrf	(i1___ftpack@arg+1),f
	rrf	(i1___ftpack@arg),f
	addlw	-1
	skipz
	goto	u684_25

	line	74
	
i1l11004:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(i1___ftpack@arg+2),w
	btfss	status,2
	goto	u685_21
	goto	u685_20
u685_21:
	goto	i1l14565
u685_20:
	goto	i1l14573
	
i1l11006:	
	line	75
	goto	i1l14573
	
i1l11008:	
	line	76
	
i1l14571:	
	movlw	low(01h)
	subwf	(i1___ftpack@exp),f
	line	77
	movlw	01h
u686_25:
	clrc
	rlf	(i1___ftpack@arg),f
	rlf	(i1___ftpack@arg+1),f
	rlf	(i1___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u686_25
	goto	i1l14573
	line	78
	
i1l11007:	
	line	75
	
i1l14573:	
	btfss	(i1___ftpack@arg+1),(15)&7
	goto	u687_21
	goto	u687_20
u687_21:
	goto	i1l14571
u687_20:
	
i1l11009:	
	line	79
	btfsc	(i1___ftpack@exp),(0)&7
	goto	u688_21
	goto	u688_20
u688_21:
	goto	i1l11010
u688_20:
	line	80
	
i1l14575:	
	movlw	0FFh
	andwf	(i1___ftpack@arg),f
	movlw	07Fh
	andwf	(i1___ftpack@arg+1),f
	movlw	0FFh
	andwf	(i1___ftpack@arg+2),f
	
i1l11010:	
	line	81
	clrc
	rrf	(i1___ftpack@exp),f

	line	82
	
i1l14577:	
	movf	(i1___ftpack@exp),w
	movwf	((??i1___ftpack+0)+0)
	clrf	((??i1___ftpack+0)+0+1)
	clrf	((??i1___ftpack+0)+0+2)
	movlw	010h
u689_25:
	clrc
	rlf	(??i1___ftpack+0)+0,f
	rlf	(??i1___ftpack+0)+1,f
	rlf	(??i1___ftpack+0)+2,f
u689_20:
	addlw	-1
	skipz
	goto	u689_25
	movf	0+(??i1___ftpack+0)+0,w
	iorwf	(i1___ftpack@arg),f
	movf	1+(??i1___ftpack+0)+0,w
	iorwf	(i1___ftpack@arg+1),f
	movf	2+(??i1___ftpack+0)+0,w
	iorwf	(i1___ftpack@arg+2),f
	line	83
	
i1l14579:	
	movf	(i1___ftpack@sign),w
	skipz
	goto	u690_20
	goto	i1l11011
u690_20:
	line	84
	
i1l14581:	
	bsf	(i1___ftpack@arg)+(23/8),(23)&7
	
i1l11011:	
	line	85
	line	86
	
i1l11000:	
	return
	opt stack 0
GLOBAL	__end_ofi1___ftpack
	__end_ofi1___ftpack:
;; =============== function i1___ftpack ends ============

	signat	i1___ftpack,91
	global	i1___fttol
psect	text1194,local,class=CODE,delta=2
global __ptext1194
__ptext1194:

;; *************** function i1___fttol *****************
;; Defined at:
;;		line 45 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\fttol.c"
;; Parameters:    Size  Location     Type
;;  __fttol         3    8[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  __fttol         4    5[BANK0 ] unsigned long 
;;  __fttol         1    9[BANK0 ] unsigned char 
;;  __fttol         1    4[BANK0 ] unsigned char 
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
;;		i1_Trace_PID
;; This function uses a non-reentrant model
;;
psect	text1194
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\fttol.c"
	line	45
	global	__size_ofi1___fttol
	__size_ofi1___fttol	equ	__end_ofi1___fttol-i1___fttol
	
i1___fttol:	
	opt	stack 2
; Regs used in i1___fttol: [wreg+status,2+status,0]
	line	49
	
i1l14501:	
	movf	(i1___fttol@f1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??i1___fttol+0)+0)
	movf	(i1___fttol@f1+1),w
	movwf	((??i1___fttol+0)+0+1)
	movf	(i1___fttol@f1+2),w
	movwf	((??i1___fttol+0)+0+2)
	clrc
	rlf	(??i1___fttol+0)+1,w
	rlf	(??i1___fttol+0)+2,w
	movwf	(??i1___fttol+3)+0
	movf	(??i1___fttol+3)+0,w
	movwf	(i1___fttol@exp1)
	movf	((i1___fttol@exp1)),f
	skipz
	goto	u669_21
	goto	u669_20
u669_21:
	goto	i1l14507
u669_20:
	line	50
	
i1l14503:	
	movlw	0
	movwf	(?i1___fttol+3)
	movlw	0
	movwf	(?i1___fttol+2)
	movlw	0
	movwf	(?i1___fttol+1)
	movlw	0
	movwf	(?i1___fttol)

	goto	i1l10775
	
i1l14505:	
	goto	i1l10775
	
i1l10774:	
	line	51
	
i1l14507:	
	movf	(i1___fttol@f1),w
	movwf	((??i1___fttol+0)+0)
	movf	(i1___fttol@f1+1),w
	movwf	((??i1___fttol+0)+0+1)
	movf	(i1___fttol@f1+2),w
	movwf	((??i1___fttol+0)+0+2)
	movlw	017h
u670_25:
	clrc
	rrf	(??i1___fttol+0)+2,f
	rrf	(??i1___fttol+0)+1,f
	rrf	(??i1___fttol+0)+0,f
u670_20:
	addlw	-1
	skipz
	goto	u670_25
	movf	0+(??i1___fttol+0)+0,w
	movwf	(??i1___fttol+3)+0
	movf	(??i1___fttol+3)+0,w
	movwf	(i1___fttol@sign1)
	line	52
	
i1l14509:	
	bsf	(i1___fttol@f1)+(15/8),(15)&7
	line	53
	
i1l14511:	
	movlw	0FFh
	andwf	(i1___fttol@f1),f
	movlw	0FFh
	andwf	(i1___fttol@f1+1),f
	movlw	0
	andwf	(i1___fttol@f1+2),f
	line	54
	
i1l14513:	
	movf	(i1___fttol@f1),w
	movwf	(i1___fttol@lval)
	movf	(i1___fttol@f1+1),w
	movwf	((i1___fttol@lval))+1
	movf	(i1___fttol@f1+2),w
	movwf	((i1___fttol@lval))+2
	clrf	((i1___fttol@lval))+3
	line	55
	
i1l14515:	
	movlw	low(08Eh)
	subwf	(i1___fttol@exp1),f
	line	56
	
i1l14517:	
	btfss	(i1___fttol@exp1),7
	goto	u671_21
	goto	u671_20
u671_21:
	goto	i1l14527
u671_20:
	line	57
	
i1l14519:	
	movf	(i1___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u672_21
	goto	u672_20
u672_21:
	goto	i1l14525
u672_20:
	line	58
	
i1l14521:	
	movlw	0
	movwf	(?i1___fttol+3)
	movlw	0
	movwf	(?i1___fttol+2)
	movlw	0
	movwf	(?i1___fttol+1)
	movlw	0
	movwf	(?i1___fttol)

	goto	i1l10775
	
i1l14523:	
	goto	i1l10775
	
i1l10777:	
	goto	i1l14525
	line	59
	
i1l10778:	
	line	60
	
i1l14525:	
	movlw	01h
u673_25:
	clrc
	rrf	(i1___fttol@lval+3),f
	rrf	(i1___fttol@lval+2),f
	rrf	(i1___fttol@lval+1),f
	rrf	(i1___fttol@lval),f
	addlw	-1
	skipz
	goto	u673_25

	line	61
	movlw	(01h)
	movwf	(??i1___fttol+0)+0
	movf	(??i1___fttol+0)+0,w
	addwf	(i1___fttol@exp1),f
	btfss	status,2
	goto	u674_21
	goto	u674_20
u674_21:
	goto	i1l14525
u674_20:
	goto	i1l14537
	
i1l10779:	
	line	62
	goto	i1l14537
	
i1l10776:	
	line	63
	
i1l14527:	
	movlw	(018h)
	subwf	(i1___fttol@exp1),w
	skipc
	goto	u675_21
	goto	u675_20
u675_21:
	goto	i1l14535
u675_20:
	line	64
	
i1l14529:	
	movlw	0
	movwf	(?i1___fttol+3)
	movlw	0
	movwf	(?i1___fttol+2)
	movlw	0
	movwf	(?i1___fttol+1)
	movlw	0
	movwf	(?i1___fttol)

	goto	i1l10775
	
i1l14531:	
	goto	i1l10775
	
i1l10781:	
	line	65
	goto	i1l14535
	
i1l10783:	
	line	66
	
i1l14533:	
	movlw	01h
	movwf	(??i1___fttol+0)+0
u676_25:
	clrc
	rlf	(i1___fttol@lval),f
	rlf	(i1___fttol@lval+1),f
	rlf	(i1___fttol@lval+2),f
	rlf	(i1___fttol@lval+3),f
	decfsz	(??i1___fttol+0)+0
	goto	u676_25
	line	67
	movlw	low(01h)
	subwf	(i1___fttol@exp1),f
	goto	i1l14535
	line	68
	
i1l10782:	
	line	65
	
i1l14535:	
	movf	(i1___fttol@exp1),f
	skipz
	goto	u677_21
	goto	u677_20
u677_21:
	goto	i1l14533
u677_20:
	goto	i1l14537
	
i1l10784:	
	goto	i1l14537
	line	69
	
i1l10780:	
	line	70
	
i1l14537:	
	movf	(i1___fttol@sign1),w
	skipz
	goto	u678_20
	goto	i1l14541
u678_20:
	line	71
	
i1l14539:	
	comf	(i1___fttol@lval),f
	comf	(i1___fttol@lval+1),f
	comf	(i1___fttol@lval+2),f
	comf	(i1___fttol@lval+3),f
	incf	(i1___fttol@lval),f
	skipnz
	incf	(i1___fttol@lval+1),f
	skipnz
	incf	(i1___fttol@lval+2),f
	skipnz
	incf	(i1___fttol@lval+3),f
	goto	i1l14541
	
i1l10785:	
	line	72
	
i1l14541:	
	movf	(i1___fttol@lval+3),w
	movwf	(?i1___fttol+3)
	movf	(i1___fttol@lval+2),w
	movwf	(?i1___fttol+2)
	movf	(i1___fttol@lval+1),w
	movwf	(?i1___fttol+1)
	movf	(i1___fttol@lval),w
	movwf	(?i1___fttol)

	goto	i1l10775
	
i1l14543:	
	line	73
	
i1l10775:	
	return
	opt stack 0
GLOBAL	__end_ofi1___fttol
	__end_ofi1___fttol:
;; =============== function i1___fttol ends ============

	signat	i1___fttol,92
	global	i1_Motor_Speed_Set
psect	text1195,local,class=CODE,delta=2
global __ptext1195
__ptext1195:

;; *************** function i1_Motor_Speed_Set *****************
;; Defined at:
;;		line 60 in file "D:\6_pic_project\00_Design_Flow_Car\Driver\Motor.c"
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
psect	text1195
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\Motor.c"
	line	60
	global	__size_ofi1_Motor_Speed_Set
	__size_ofi1_Motor_Speed_Set	equ	__end_ofi1_Motor_Speed_Set-i1_Motor_Speed_Set
	
i1_Motor_Speed_Set:	
	opt	stack 3
; Regs used in i1_Motor_Speed_Set: [wreg+status,2+status,0+btemp+1]
	line	61
	
i1l14331:	
;Motor.c: 61: if(Speed1 > 0 )
	movf	(i1Motor_Speed_Set@Speed1+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u613_25
	movlw	low(01h)
	subwf	(i1Motor_Speed_Set@Speed1),w
u613_25:

	skipc
	goto	u613_21
	goto	u613_20
u613_21:
	goto	i1l4373
u613_20:
	line	63
	
i1l14333:	
;Motor.c: 62: {
;Motor.c: 63: RB4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(52/8),(52)&7
	line	64
;Motor.c: 64: RB5 = 0;
	bcf	(53/8),(53)&7
	line	65
	
i1l14335:	
;Motor.c: 65: CCPR1L=(unsigned char)Speed1;
	movf	(i1Motor_Speed_Set@Speed1),w
	movwf	(21)	;volatile
	line	66
;Motor.c: 66: }
	goto	i1l14339
	line	67
	
i1l4373:	
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
	
i1l14337:	
;Motor.c: 71: CCPR1L=(unsigned char)(-Speed1);
	decf	(i1Motor_Speed_Set@Speed1),w
	xorlw	0ffh
	movwf	(21)	;volatile
	goto	i1l14339
	line	72
	
i1l4374:	
	line	74
	
i1l14339:	
;Motor.c: 72: }
;Motor.c: 74: if(Speed2 >0 )
	movf	(i1Motor_Speed_Set@Speed2+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u614_25
	movlw	low(01h)
	subwf	(i1Motor_Speed_Set@Speed2),w
u614_25:

	skipc
	goto	u614_21
	goto	u614_20
u614_21:
	goto	i1l4375
u614_20:
	line	76
	
i1l14341:	
;Motor.c: 75: {
;Motor.c: 76: RB6 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(54/8),(54)&7
	line	77
;Motor.c: 77: RB7 = 0;
	bcf	(55/8),(55)&7
	line	78
	
i1l14343:	
;Motor.c: 78: CCPR2L=(unsigned char)Speed2;
	movf	(i1Motor_Speed_Set@Speed2),w
	movwf	(27)	;volatile
	line	79
;Motor.c: 79: }
	goto	i1l4377
	line	80
	
i1l4375:	
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
	
i1l14345:	
;Motor.c: 84: CCPR2L=(unsigned char)(-Speed2);
	decf	(i1Motor_Speed_Set@Speed2),w
	xorlw	0ffh
	movwf	(27)	;volatile
	goto	i1l4377
	line	85
	
i1l4376:	
	line	86
	
i1l4377:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Motor_Speed_Set
	__end_ofi1_Motor_Speed_Set:
;; =============== function i1_Motor_Speed_Set ends ============

	signat	i1_Motor_Speed_Set,88
	global	___ftneg
psect	text1196,local,class=CODE,delta=2
global __ptext1196
__ptext1196:

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
psect	text1196
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftneg.c"
	line	16
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
	opt	stack 2
; Regs used in ___ftneg: [wreg]
	line	17
	
i1l14205:	
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u587_21
	goto	u587_20
u587_21:
	goto	i1l14209
u587_20:
	line	18
	
i1l14207:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	goto	i1l14209
	
i1l10828:	
	line	19
	
i1l14209:	
	goto	i1l10829
	
i1l14211:	
	line	20
	
i1l10829:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
;; =============== function ___ftneg ends ============

	signat	___ftneg,4219
	global	_I_amplitude_limiting
psect	text1197,local,class=CODE,delta=2
global __ptext1197
__ptext1197:

;; *************** function _I_amplitude_limiting *****************
;; Defined at:
;;		line 42 in file "D:\6_pic_project\00_Design_Flow_Car\Driver\pid.c"
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
psect	text1197
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\pid.c"
	line	42
	global	__size_of_I_amplitude_limiting
	__size_of_I_amplitude_limiting	equ	__end_of_I_amplitude_limiting-_I_amplitude_limiting
	
_I_amplitude_limiting:	
	opt	stack 2
; Regs used in _I_amplitude_limiting: [wreg-fsr0h+status,2+status,0]
;I_amplitude_limiting@number stored from wreg
	movwf	(I_amplitude_limiting@number)
	line	43
	
i1l14005:	
;pid.c: 43: if(*Error_sum > number)
	movf	(I_amplitude_limiting@Error_sum),w
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	subwf	(I_amplitude_limiting@number),w
	skipnc
	goto	u537_21
	goto	u537_20
u537_21:
	goto	i1l14009
u537_20:
	line	45
	
i1l14007:	
;pid.c: 44: {
;pid.c: 45: *Error_sum = number;
	movf	(I_amplitude_limiting@number),w
	movwf	(??_I_amplitude_limiting+0)+0
	movf	(I_amplitude_limiting@Error_sum),w
	movwf	fsr0
	movf	(??_I_amplitude_limiting+0)+0,w
	movwf	indf
	goto	i1l14009
	line	46
	
i1l9217:	
	line	48
	
i1l14009:	
;pid.c: 46: }
;pid.c: 48: if(*Error_sum <- number)
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
	goto	u538_25
	movf	0+(??_I_amplitude_limiting+0)+0,w
	subwf	indf,w
u538_25:

	skipnc
	goto	u538_21
	goto	u538_20
u538_21:
	goto	i1l9219
u538_20:
	line	50
	
i1l14011:	
;pid.c: 49: {
;pid.c: 50: *Error_sum = -number;
	decf	(I_amplitude_limiting@number),w
	xorlw	0ffh
	movwf	(??_I_amplitude_limiting+0)+0
	movf	(I_amplitude_limiting@Error_sum),w
	movwf	fsr0
	movf	(??_I_amplitude_limiting+0)+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	goto	i1l9219
	line	51
	
i1l9218:	
	line	52
	
i1l9219:	
	return
	opt stack 0
GLOBAL	__end_of_I_amplitude_limiting
	__end_of_I_amplitude_limiting:
;; =============== function _I_amplitude_limiting ends ============

	signat	_I_amplitude_limiting,8312
psect	text1198,local,class=CODE,delta=2
global __ptext1198
__ptext1198:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
