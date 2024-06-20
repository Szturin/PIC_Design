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
	FNCALL	_main,_Trace_GPIO_Init
	FNCALL	_main,_Usart_GPIO_Init
	FNCALL	_main,_Usart_Init
	FNCALL	_main,_Motor_GPIO_Init
	FNCALL	_main,_Motor_CCP_PWM_Init
	FNCALL	_main,_csb_init
	FNCALL	_main,_Delay_ms
	FNCALL	_main,_Encoder_Init
	FNCALL	_main,_Trace_Control
	FNCALL	_Trace_Control,_Motor_Speed_Set
	FNCALL	_Trace_Control,_Start_PD
	FNCALL	_Trace_Control,_Trace_PID
	FNCALL	_Trace_Control,_putch
	FNCALL	_Trace_PID,___awtoft
	FNCALL	_Trace_PID,___ftmul
	FNCALL	_Trace_PID,___wmul
	FNCALL	_Trace_PID,___ftadd
	FNCALL	_Trace_PID,___fttol
	FNCALL	___awtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftadd,___ftpack
	FNROOT	_main
	FNCALL	intlevel1,_Service
	global	intlevel1
	FNROOT	intlevel1
	global	_Speed_Velcolity
	global	_table
	global	_Kp
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"D:\6_pic_project\00_Design_Flow_Car\User\Car_demo\Car_demo.c"
	line	33

;initializer for _Speed_Velcolity
	retlw	02Dh
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
	global	_Circle_Mode
	global	_IO_flag
	global	_Speed_left
	global	_Speed_right
	global	_Start_Find_flag
	global	_Stop_Flag
	global	_Trace_Byte
	global	_Trace_Mode
	global	_Turn_PWM
	global	_bluetooth
	global	_recv_data
	global	_x
	global	_y
	global	_RBIF_FLAG
	global	_Counter_temp
	global	_Kd
	global	_Timer0_Counter
	global	_dis
	global	_err_difference
	global	_last_err
	global	_turn_err
	global	_Bifurcate_Flag
	global	_Key_Val
	global	_Motor_Flag
	global	_Speed_measure1
	global	_Speed_measure2
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

_recv_data:
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

_Circle_Mode:
       ds      1

_IO_flag:
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

_Trace_Mode:
       ds      1

_Turn_PWM:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"D:\6_pic_project\00_Design_Flow_Car\User\Car_demo\Car_demo.c"
	line	33
_Speed_Velcolity:
       ds      1

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_Counter_temp:
       ds      2

_Kd:
       ds      2

_Timer0_Counter:
       ds      2

_dis:
       ds      2

_err_difference:
       ds      2

_last_err:
       ds      2

_turn_err:
       ds      2

_Bifurcate_Flag:
       ds      1

_Key_Val:
       ds      1

_Motor_Flag:
       ds      1

_Speed_measure1:
       ds      1

_Speed_measure2:
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
	movlw	low((__pbssBANK0)+0Bh)
	fcall	clear_ram
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+013h)
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
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1
global __pcstackBANK1
__pcstackBANK1:
	global	??_Trace_Control
??_Trace_Control:	; 0 bytes @ 0x0
	ds	4
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
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
	global	?_Trace_GPIO_Init
?_Trace_GPIO_Init:	; 0 bytes @ 0x0
	global	?_csb_init
?_csb_init:	; 0 bytes @ 0x0
	global	?_Trace_Control
?_Trace_Control:	; 0 bytes @ 0x0
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
	global	??_Trace_GPIO_Init
??_Trace_GPIO_Init:	; 0 bytes @ 0x0
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
	global	Motor_Speed_Set@Speed1
Motor_Speed_Set@Speed1:	; 2 bytes @ 0x0
	global	Delay_ms@x
Delay_ms@x:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds	2
	global	??_Delay_ms
??_Delay_ms:	; 0 bytes @ 0x2
	global	??_Start_PD
??_Start_PD:	; 0 bytes @ 0x2
	global	Motor_Speed_Set@Speed2
Motor_Speed_Set@Speed2:	; 2 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	ds	1
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	ds	1
	global	??_Motor_Speed_Set
??_Motor_Speed_Set:	; 0 bytes @ 0x4
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	1
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x5
	ds	3
	global	?___fttol
?___fttol:	; 4 bytes @ 0x8
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x8
	ds	4
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
	global	??_main
??_main:	; 0 bytes @ 0x43
;;Data sizes: Strings 3, constant 0, data 20, bss 34, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      5      10
;; BANK0           80     67      79
;; BANK1           80      4      42
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
;; S10478$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
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
;;   _Trace_Control->_Trace_PID
;;   _Trace_PID->___ftadd
;;   ___awtoft->___fttol
;;   ___ftmul->___awtoft
;;   ___ftadd->___ftmul
;;   ___fttol->___ftpack
;;
;; Critical Paths under _Service in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   _main->_Trace_Control
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
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0    3409
;;                    _Trace_GPIO_Init
;;                    _Usart_GPIO_Init
;;                         _Usart_Init
;;                    _Motor_GPIO_Init
;;                 _Motor_CCP_PWM_Init
;;                           _csb_init
;;                           _Delay_ms
;;                       _Encoder_Init
;;                      _Trace_Control
;; ---------------------------------------------------------------------------------
;; (1) _Trace_Control                                        4     4      0    3387
;;                                              0 BANK1      4     4      0
;;                    _Motor_Speed_Set
;;                           _Start_PD
;;                          _Trace_PID
;;                              _putch
;; ---------------------------------------------------------------------------------
;; (2) _Trace_PID                                           10     8      2    3170
;;                                             57 BANK0     10     8      2
;;                           ___awtoft
;;                            ___ftmul
;;                             ___wmul
;;                            ___ftadd
;;                            ___fttol
;; ---------------------------------------------------------------------------------
;; (3) ___awtoft                                             6     3      3     445
;;                                             22 BANK0      6     3      3
;;                           ___ftpack
;;                             ___wmul (ARG)
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___ftmul                                             16    10      6     800
;;                                             28 BANK0     16    10      6
;;                           ___ftpack
;;                           ___awtoft (ARG)
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___ftadd                                             13     7      6    1537
;;                                             44 BANK0     13     7      6
;;                           ___ftpack
;;                            ___ftmul (ARG)
;;                           ___awtoft (ARG)
;;                             ___wmul (ARG)
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (1) _Delay_ms                                             2     0      2      22
;;                                              0 BANK0      2     0      2
;; ---------------------------------------------------------------------------------
;; (3) ___fttol                                             14    10      4     252
;;                                              8 BANK0     14    10      4
;;                           ___ftpack (ARG)
;;                             ___wmul (ARG)
;; ---------------------------------------------------------------------------------
;; (4) ___ftpack                                             8     3      5     312
;;                                              0 BANK0      8     3      5
;; ---------------------------------------------------------------------------------
;; (3) ___wmul                                               6     2      4     136
;;                                              0 BANK0      6     2      4
;; ---------------------------------------------------------------------------------
;; (2) _Start_PD                                            10     8      2       0
;;                                              0 BANK0     10     8      2
;; ---------------------------------------------------------------------------------
;; (1) _csb_init                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _Trace_GPIO_Init                                      0     0      0       0
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
;; (2) _Motor_Speed_Set                                      4     0      4     186
;;                                              0 BANK0      4     0      4
;; ---------------------------------------------------------------------------------
;; (1) _Motor_CCP_PWM_Init                                   0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _Motor_GPIO_Init                                      0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (5) _Service                                              5     5      0       0
;;                                              0 COMMON     5     5      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 5
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _Trace_GPIO_Init
;;   _Usart_GPIO_Init
;;   _Usart_Init
;;   _Motor_GPIO_Init
;;   _Motor_CCP_PWM_Init
;;   _csb_init
;;   _Delay_ms
;;   _Encoder_Init
;;   _Trace_Control
;;     _Motor_Speed_Set
;;     _Start_PD
;;     _Trace_PID
;;       ___awtoft
;;         ___ftpack
;;         ___wmul (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___wmul (ARG)
;;       ___ftmul
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
;;       ___wmul
;;       ___ftadd
;;         ___ftpack
;;         ___ftmul (ARG)
;;           ___ftpack
;;           ___awtoft (ARG)
;;             ___ftpack
;;             ___wmul (ARG)
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;               ___wmul (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___wmul (ARG)
;;         ___awtoft (ARG)
;;           ___ftpack
;;           ___wmul (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___wmul (ARG)
;;         ___wmul (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___wmul (ARG)
;;       ___fttol
;;         ___ftpack (ARG)
;;         ___wmul (ARG)
;;     _putch
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
;;BANK1               50      4      2A       7       52.5%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      87      12        0.0%
;;ABS                  0      0      83       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       4       2        0.0%
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
;;		line 227 in file "D:\6_pic_project\00_Design_Flow_Car\User\Car_demo\Car_demo.c"
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
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Trace_GPIO_Init
;;		_Usart_GPIO_Init
;;		_Usart_Init
;;		_Motor_GPIO_Init
;;		_Motor_CCP_PWM_Init
;;		_csb_init
;;		_Delay_ms
;;		_Encoder_Init
;;		_Trace_Control
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\6_pic_project\00_Design_Flow_Car\User\Car_demo\Car_demo.c"
	line	227
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	229
	
l12828:	
;Car_demo.c: 229: TRISB1=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1073/8)^080h,(1073)&7
	line	230
;Car_demo.c: 230: TRISA0=0;
	bcf	(1064/8)^080h,(1064)&7
	line	231
;Car_demo.c: 231: TRISA1=0;
	bcf	(1065/8)^080h,(1065)&7
	line	232
;Car_demo.c: 232: TRISA2=0;
	bcf	(1066/8)^080h,(1066)&7
	line	233
	
l12830:	
;Car_demo.c: 233: Trace_GPIO_Init();
	fcall	_Trace_GPIO_Init
	line	235
;Car_demo.c: 235: Usart_GPIO_Init();
	fcall	_Usart_GPIO_Init
	line	236
	
l12832:	
;Car_demo.c: 236: Usart_Init();
	fcall	_Usart_Init
	line	238
	
l12834:	
;Car_demo.c: 238: Motor_GPIO_Init();
	fcall	_Motor_GPIO_Init
	line	239
;Car_demo.c: 239: Motor_CCP_PWM_Init();
	fcall	_Motor_CCP_PWM_Init
	line	240
;Car_demo.c: 240: csb_init();
	fcall	_csb_init
	line	241
;Car_demo.c: 241: Delay_ms(5000);
	movlw	low(01388h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Delay_ms)
	movlw	high(01388h)
	movwf	((?_Delay_ms))+1
	fcall	_Delay_ms
	line	242
;Car_demo.c: 242: Encoder_Init();
	fcall	_Encoder_Init
	goto	l12836
	line	247
;Car_demo.c: 247: while(1)
	
l8621:	
	line	249
	
l12836:	
;Car_demo.c: 248: {
;Car_demo.c: 249: Trace_Control();
	fcall	_Trace_Control
	goto	l12836
	line	250
	
l8622:	
	line	247
	goto	l12836
	
l8623:	
	line	252
	
l8624:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_Trace_Control
psect	text842,local,class=CODE,delta=2
global __ptext842
__ptext842:

;; *************** function _Trace_Control *****************
;; Defined at:
;;		line 74 in file "D:\6_pic_project\00_Design_Flow_Car\User\Car_demo\Car_demo.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       4       0       0
;;      Totals:         0       0       4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_Motor_Speed_Set
;;		_Start_PD
;;		_Trace_PID
;;		_putch
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text842
	file	"D:\6_pic_project\00_Design_Flow_Car\User\Car_demo\Car_demo.c"
	line	74
	global	__size_of_Trace_Control
	__size_of_Trace_Control	equ	__end_of_Trace_Control-_Trace_Control
	
_Trace_Control:	
	opt	stack 3
; Regs used in _Trace_Control: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	75
	
l12728:	
;Car_demo.c: 75: if(Circle_Mode == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Circle_Mode),f
	skipz
	goto	u5971
	goto	u5970
u5971:
	goto	l12744
u5970:
	line	77
	
l12730:	
;Car_demo.c: 76: {
;Car_demo.c: 77: Motor_Speed_Set(Speed_Velcolity,Speed_Velcolity);
	movf	(_Speed_Velcolity),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_Trace_Control+0)^080h+0
	clrf	(??_Trace_Control+0)^080h+0+1
	movf	0+(??_Trace_Control+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Motor_Speed_Set)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(??_Trace_Control+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Motor_Speed_Set+1)
	movf	(_Speed_Velcolity),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_Trace_Control+2)^080h+0
	clrf	(??_Trace_Control+2)^080h+0+1
	movf	0+(??_Trace_Control+2)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?_Motor_Speed_Set)+02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(??_Trace_Control+2)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?_Motor_Speed_Set)+02h
	fcall	_Motor_Speed_Set
	line	79
	
l12732:	
;Car_demo.c: 79: if(Start_PD() == 1)
	fcall	_Start_PD
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(0+(?_Start_PD)),w
	iorwf	(1+(?_Start_PD)),w
	skipz
	goto	u5981
	goto	u5980
u5981:
	goto	l12736
u5980:
	line	81
	
l12734:	
;Car_demo.c: 80: {
;Car_demo.c: 81: Start_Find_flag = 1;
	clrf	(_Start_Find_flag)
	bsf	status,0
	rlf	(_Start_Find_flag),f
	goto	l12736
	line	82
	
l8577:	
	line	84
	
l12736:	
;Car_demo.c: 82: }
;Car_demo.c: 84: if(Encoder_Counter >200)
	movlw	high(0C9h)
	subwf	(_Encoder_Counter+1),w
	movlw	low(0C9h)
	skipnz
	subwf	(_Encoder_Counter),w
	skipc
	goto	u5991
	goto	u5990
u5991:
	goto	l8599
u5990:
	line	86
	
l12738:	
;Car_demo.c: 85: {
;Car_demo.c: 86: Start_Find_flag = 0;
	clrf	(_Start_Find_flag)
	line	87
	
l12740:	
;Car_demo.c: 87: Encoder_Counter=0;
	clrf	(_Encoder_Counter)
	clrf	(_Encoder_Counter+1)
	line	88
	
l12742:	
;Car_demo.c: 88: Circle_Mode = 1;
	clrf	(_Circle_Mode)
	bsf	status,0
	rlf	(_Circle_Mode),f
	goto	l8599
	line	89
	
l8578:	
	line	90
;Car_demo.c: 89: }
;Car_demo.c: 90: }
	goto	l8599
	line	91
	
l8576:	
	
l12744:	
;Car_demo.c: 91: else if(Circle_Mode == 1)
	movf	(_Circle_Mode),w
	xorlw	01h
	skipz
	goto	u6001
	goto	u6000
u6001:
	goto	l12770
u6000:
	line	93
	
l12746:	
;Car_demo.c: 92: {
;Car_demo.c: 93: if(Start_PD() == 1)
	fcall	_Start_PD
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(0+(?_Start_PD)),w
	iorwf	(1+(?_Start_PD)),w
	skipz
	goto	u6011
	goto	u6010
u6011:
	goto	l12750
u6010:
	line	95
	
l12748:	
;Car_demo.c: 94: {
;Car_demo.c: 95: Start_Find_flag =1;
	clrf	(_Start_Find_flag)
	bsf	status,0
	rlf	(_Start_Find_flag),f
	goto	l12750
	line	96
	
l8581:	
	line	98
	
l12750:	
;Car_demo.c: 96: }
;Car_demo.c: 98: if(Start_Find_flag == 1)
	movf	(_Start_Find_flag),w
	xorlw	01h
	skipz
	goto	u6021
	goto	u6020
u6021:
	goto	l12762
u6020:
	line	100
	
l12752:	
;Car_demo.c: 99: {
;Car_demo.c: 100: Motor_Speed_Set(Speed_Velcolity,Speed_Velcolity);
	movf	(_Speed_Velcolity),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_Trace_Control+0)^080h+0
	clrf	(??_Trace_Control+0)^080h+0+1
	movf	0+(??_Trace_Control+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Motor_Speed_Set)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(??_Trace_Control+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Motor_Speed_Set+1)
	movf	(_Speed_Velcolity),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_Trace_Control+2)^080h+0
	clrf	(??_Trace_Control+2)^080h+0+1
	movf	0+(??_Trace_Control+2)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?_Motor_Speed_Set)+02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(??_Trace_Control+2)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?_Motor_Speed_Set)+02h
	fcall	_Motor_Speed_Set
	line	101
	
l12754:	
;Car_demo.c: 101: if(Encoder_Counter > 200)
	movlw	high(0C9h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_Encoder_Counter+1),w
	movlw	low(0C9h)
	skipnz
	subwf	(_Encoder_Counter),w
	skipc
	goto	u6031
	goto	u6030
u6031:
	goto	l8599
u6030:
	line	103
	
l12756:	
;Car_demo.c: 102: {
;Car_demo.c: 103: IO_flag = 1;
	clrf	(_IO_flag)
	bsf	status,0
	rlf	(_IO_flag),f
	line	104
	
l12758:	
;Car_demo.c: 104: Encoder_Counter=0;
	clrf	(_Encoder_Counter)
	clrf	(_Encoder_Counter+1)
	line	105
	
l12760:	
;Car_demo.c: 105: Circle_Mode = 2;
	movlw	(02h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_Trace_Control+0)^080h+0
	movf	(??_Trace_Control+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_Circle_Mode)
	goto	l8599
	line	106
	
l8583:	
	line	107
;Car_demo.c: 106: }
;Car_demo.c: 107: }
	goto	l8599
	line	108
	
l8582:	
	line	110
	
l12762:	
;Car_demo.c: 108: else
;Car_demo.c: 109: {
;Car_demo.c: 110: Turn_PWM = Trace_PID();
	fcall	_Trace_PID
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_Trace_PID)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_Trace_Control+0)^080h+0
	movf	(??_Trace_Control+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_Turn_PWM)
	line	111
	
l12764:	
;Car_demo.c: 111: Speed_left = Speed_Velcolity - Turn_PWM;
	decf	(_Turn_PWM),w
	xorlw	0ffh
	addwf	(_Speed_Velcolity),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_Trace_Control+0)^080h+0
	movf	(??_Trace_Control+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_Speed_left)
	line	112
	
l12766:	
;Car_demo.c: 112: Speed_right = Speed_Velcolity + Turn_PWM;
	movf	(_Turn_PWM),w
	addwf	(_Speed_Velcolity),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_Trace_Control+0)^080h+0
	movf	(??_Trace_Control+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_Speed_right)
	line	113
	
l12768:	
;Car_demo.c: 113: Motor_Speed_Set(Speed_left,Speed_right);
	movf	(_Speed_left),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_Trace_Control+0)^080h+0
	clrf	(??_Trace_Control+0)^080h+0+1
	movf	0+(??_Trace_Control+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Motor_Speed_Set)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(??_Trace_Control+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Motor_Speed_Set+1)
	movf	(_Speed_right),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_Trace_Control+2)^080h+0
	clrf	(??_Trace_Control+2)^080h+0+1
	movf	0+(??_Trace_Control+2)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?_Motor_Speed_Set)+02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(??_Trace_Control+2)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?_Motor_Speed_Set)+02h
	fcall	_Motor_Speed_Set
	goto	l8599
	line	114
	
l8584:	
	line	115
;Car_demo.c: 114: }
;Car_demo.c: 115: }
	goto	l8599
	line	116
	
l8580:	
	
l12770:	
;Car_demo.c: 116: else if(Circle_Mode == 2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Circle_Mode),w
	xorlw	02h
	skipz
	goto	u6041
	goto	u6040
u6041:
	goto	l12810
u6040:
	line	118
	
l12772:	
;Car_demo.c: 117: {
;Car_demo.c: 118: if(IO_flag == 0)
	movf	(_IO_flag),f
	skipz
	goto	u6051
	goto	u6050
u6051:
	goto	l12800
u6050:
	line	120
	
l12774:	
;Car_demo.c: 119: {
;Car_demo.c: 120: if(Start_PD() == 1)
	fcall	_Start_PD
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(0+(?_Start_PD)),w
	iorwf	(1+(?_Start_PD)),w
	skipz
	goto	u6061
	goto	u6060
u6061:
	goto	l12780
u6060:
	line	122
	
l12776:	
;Car_demo.c: 121: {
;Car_demo.c: 122: putch(3);
	movlw	(03h)
	fcall	_putch
	line	123
	
l12778:	
;Car_demo.c: 123: Start_Find_flag = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_Start_Find_flag)
	bsf	status,0
	rlf	(_Start_Find_flag),f
	goto	l12780
	line	124
	
l8588:	
	line	126
	
l12780:	
;Car_demo.c: 124: }
;Car_demo.c: 126: if(Start_Find_flag)
	movf	(_Start_Find_flag),w
	skipz
	goto	u6070
	goto	l12792
u6070:
	line	128
	
l12782:	
;Car_demo.c: 127: {
;Car_demo.c: 128: Motor_Speed_Set(Speed_Velcolity,Speed_Velcolity);
	movf	(_Speed_Velcolity),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_Trace_Control+0)^080h+0
	clrf	(??_Trace_Control+0)^080h+0+1
	movf	0+(??_Trace_Control+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Motor_Speed_Set)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(??_Trace_Control+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Motor_Speed_Set+1)
	movf	(_Speed_Velcolity),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_Trace_Control+2)^080h+0
	clrf	(??_Trace_Control+2)^080h+0+1
	movf	0+(??_Trace_Control+2)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?_Motor_Speed_Set)+02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(??_Trace_Control+2)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?_Motor_Speed_Set)+02h
	fcall	_Motor_Speed_Set
	line	129
	
l12784:	
;Car_demo.c: 129: if(Encoder_Counter > 120)
	movlw	high(079h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_Encoder_Counter+1),w
	movlw	low(079h)
	skipnz
	subwf	(_Encoder_Counter),w
	skipc
	goto	u6081
	goto	u6080
u6081:
	goto	l8599
u6080:
	line	131
	
l12786:	
;Car_demo.c: 130: {
;Car_demo.c: 131: Start_Find_flag = 0;
	clrf	(_Start_Find_flag)
	line	132
;Car_demo.c: 132: IO_flag = 0;
	clrf	(_IO_flag)
	line	133
	
l12788:	
;Car_demo.c: 133: Encoder_Counter=0;
	clrf	(_Encoder_Counter)
	clrf	(_Encoder_Counter+1)
	line	134
	
l12790:	
;Car_demo.c: 134: Circle_Mode = 3;
	movlw	(03h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_Trace_Control+0)^080h+0
	movf	(??_Trace_Control+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_Circle_Mode)
	goto	l8599
	line	135
	
l8590:	
	line	136
;Car_demo.c: 135: }
;Car_demo.c: 136: }
	goto	l8599
	line	137
	
l8589:	
	line	139
	
l12792:	
;Car_demo.c: 137: else
;Car_demo.c: 138: {
;Car_demo.c: 139: Turn_PWM = Trace_PID();
	fcall	_Trace_PID
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_Trace_PID)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_Trace_Control+0)^080h+0
	movf	(??_Trace_Control+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_Turn_PWM)
	line	140
	
l12794:	
;Car_demo.c: 140: Speed_left = Speed_Velcolity - Turn_PWM;
	decf	(_Turn_PWM),w
	xorlw	0ffh
	addwf	(_Speed_Velcolity),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_Trace_Control+0)^080h+0
	movf	(??_Trace_Control+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_Speed_left)
	line	141
	
l12796:	
;Car_demo.c: 141: Speed_right = Speed_Velcolity + Turn_PWM;
	movf	(_Turn_PWM),w
	addwf	(_Speed_Velcolity),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_Trace_Control+0)^080h+0
	movf	(??_Trace_Control+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_Speed_right)
	line	142
	
l12798:	
;Car_demo.c: 142: Motor_Speed_Set(Speed_left,Speed_right);
	movf	(_Speed_left),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_Trace_Control+0)^080h+0
	clrf	(??_Trace_Control+0)^080h+0+1
	movf	0+(??_Trace_Control+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Motor_Speed_Set)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(??_Trace_Control+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Motor_Speed_Set+1)
	movf	(_Speed_right),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_Trace_Control+2)^080h+0
	clrf	(??_Trace_Control+2)^080h+0+1
	movf	0+(??_Trace_Control+2)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?_Motor_Speed_Set)+02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(??_Trace_Control+2)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?_Motor_Speed_Set)+02h
	fcall	_Motor_Speed_Set
	goto	l8599
	line	143
	
l8591:	
	line	144
;Car_demo.c: 143: }
;Car_demo.c: 144: }
	goto	l8599
	line	145
	
l8587:	
	line	147
	
l12800:	
;Car_demo.c: 145: else
;Car_demo.c: 146: {
;Car_demo.c: 147: Motor_Speed_Set(20,60);
	movlw	low(014h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Motor_Speed_Set)
	movlw	high(014h)
	movwf	((?_Motor_Speed_Set))+1
	movlw	low(03Ch)
	movwf	0+(?_Motor_Speed_Set)+02h
	movlw	high(03Ch)
	movwf	(0+(?_Motor_Speed_Set)+02h)+1
	fcall	_Motor_Speed_Set
	line	148
	
l12802:	
;Car_demo.c: 148: if(Encoder_Counter > 320)
	movlw	high(0141h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_Encoder_Counter+1),w
	movlw	low(0141h)
	skipnz
	subwf	(_Encoder_Counter),w
	skipc
	goto	u6091
	goto	u6090
u6091:
	goto	l8599
u6090:
	line	150
	
l12804:	
;Car_demo.c: 149: {
;Car_demo.c: 150: Start_Find_flag = 0;
	clrf	(_Start_Find_flag)
	line	151
	
l12806:	
;Car_demo.c: 151: Encoder_Counter=0;
	clrf	(_Encoder_Counter)
	clrf	(_Encoder_Counter+1)
	line	152
	
l12808:	
;Car_demo.c: 152: IO_flag = 0;
	clrf	(_IO_flag)
	goto	l8599
	line	153
	
l8593:	
	goto	l8599
	line	155
	
l8592:	
	line	156
;Car_demo.c: 153: }
;Car_demo.c: 155: }
;Car_demo.c: 156: }
	goto	l8599
	line	157
	
l8586:	
	
l12810:	
;Car_demo.c: 157: else if(Circle_Mode == 3)
	movf	(_Circle_Mode),w
	xorlw	03h
	skipz
	goto	u6101
	goto	u6100
u6101:
	goto	l8599
u6100:
	line	159
	
l12812:	
;Car_demo.c: 158: {
;Car_demo.c: 159: if(Start_PD() == 1)
	fcall	_Start_PD
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(0+(?_Start_PD)),w
	iorwf	(1+(?_Start_PD)),w
	skipz
	goto	u6111
	goto	u6110
u6111:
	goto	l12816
u6110:
	line	161
	
l12814:	
;Car_demo.c: 160: {
;Car_demo.c: 161: Start_Find_flag = 1;
	clrf	(_Start_Find_flag)
	bsf	status,0
	rlf	(_Start_Find_flag),f
	line	162
;Car_demo.c: 162: Stop_Flag=1;
	clrf	(_Stop_Flag)
	bsf	status,0
	rlf	(_Stop_Flag),f
	goto	l12816
	line	163
	
l8596:	
	line	165
	
l12816:	
;Car_demo.c: 163: }
;Car_demo.c: 165: if(Stop_Flag == 1)
	movf	(_Stop_Flag),w
	xorlw	01h
	skipz
	goto	u6121
	goto	u6120
u6121:
	goto	l12820
u6120:
	line	167
	
l12818:	
;Car_demo.c: 166: {
;Car_demo.c: 167: Motor_Speed_Set(0,0);
	movlw	low(0)
	movwf	(?_Motor_Speed_Set)
	movlw	high(0)
	movwf	((?_Motor_Speed_Set))+1
	movlw	low(0)
	movwf	0+(?_Motor_Speed_Set)+02h
	movlw	high(0)
	movwf	(0+(?_Motor_Speed_Set)+02h)+1
	fcall	_Motor_Speed_Set
	line	168
;Car_demo.c: 168: }
	goto	l8599
	line	169
	
l8597:	
	line	171
	
l12820:	
;Car_demo.c: 169: else
;Car_demo.c: 170: {
;Car_demo.c: 171: Turn_PWM = Trace_PID();
	fcall	_Trace_PID
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_Trace_PID)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_Trace_Control+0)^080h+0
	movf	(??_Trace_Control+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_Turn_PWM)
	line	172
	
l12822:	
;Car_demo.c: 172: Speed_left = Speed_Velcolity - Turn_PWM;
	decf	(_Turn_PWM),w
	xorlw	0ffh
	addwf	(_Speed_Velcolity),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_Trace_Control+0)^080h+0
	movf	(??_Trace_Control+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_Speed_left)
	line	173
	
l12824:	
;Car_demo.c: 173: Speed_right = Speed_Velcolity + Turn_PWM;
	movf	(_Turn_PWM),w
	addwf	(_Speed_Velcolity),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_Trace_Control+0)^080h+0
	movf	(??_Trace_Control+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_Speed_right)
	line	174
	
l12826:	
;Car_demo.c: 174: Motor_Speed_Set(Speed_left,Speed_right);
	movf	(_Speed_left),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_Trace_Control+0)^080h+0
	clrf	(??_Trace_Control+0)^080h+0+1
	movf	0+(??_Trace_Control+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Motor_Speed_Set)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(??_Trace_Control+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Motor_Speed_Set+1)
	movf	(_Speed_right),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_Trace_Control+2)^080h+0
	clrf	(??_Trace_Control+2)^080h+0+1
	movf	0+(??_Trace_Control+2)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?_Motor_Speed_Set)+02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(??_Trace_Control+2)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?_Motor_Speed_Set)+02h
	fcall	_Motor_Speed_Set
	goto	l8599
	line	175
	
l8598:	
	goto	l8599
	line	176
	
l8595:	
	goto	l8599
	line	177
	
l8594:	
	goto	l8599
	
l8585:	
	goto	l8599
	
l8579:	
	
l8599:	
	return
	opt stack 0
GLOBAL	__end_of_Trace_Control
	__end_of_Trace_Control:
;; =============== function _Trace_Control ends ============

	signat	_Trace_Control,88
	global	_Trace_PID
psect	text843,local,class=CODE,delta=2
global __ptext843
__ptext843:

;; *************** function _Trace_PID *****************
;; Defined at:
;;		line 33 in file "D:\6_pic_project\00_Design_Flow_Car\Driver\pid.c"
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
;;		_Trace_Control
;; This function uses a non-reentrant model
;;
psect	text843
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\pid.c"
	line	33
	global	__size_of_Trace_PID
	__size_of_Trace_PID	equ	__end_of_Trace_PID-_Trace_PID
	
_Trace_PID:	
	opt	stack 3
; Regs used in _Trace_PID: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	34
	
l12686:	
;pid.c: 34: Trace_Byte = (RC0<<7|RC3<<6|RE0<<5|RE1<<4|RE2<<3|RA4<<2|RC4<<1|RC5);
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
u5915:
	clrc
	rlf	(??_Trace_PID+1)+0,f
	addlw	-1
	skipz
	goto	u5915
	movlw	0
	btfsc	(44/8),(44)&7
	movlw	1
	movwf	(??_Trace_PID+2)+0
	movlw	02h
u5925:
	clrc
	rlf	(??_Trace_PID+2)+0,f
	addlw	-1
	skipz
	goto	u5925
	movlw	0
	btfsc	(74/8),(74)&7
	movlw	1
	movwf	(??_Trace_PID+3)+0
	movlw	03h
u5935:
	clrc
	rlf	(??_Trace_PID+3)+0,f
	addlw	-1
	skipz
	goto	u5935
	movlw	0
	btfsc	(73/8),(73)&7
	movlw	1
	movwf	(??_Trace_PID+4)+0
	movlw	04h
u5945:
	clrc
	rlf	(??_Trace_PID+4)+0,f
	addlw	-1
	skipz
	goto	u5945
	movlw	0
	btfsc	(72/8),(72)&7
	movlw	1
	movwf	(??_Trace_PID+5)+0
	movlw	05h
u5955:
	clrc
	rlf	(??_Trace_PID+5)+0,f
	addlw	-1
	skipz
	goto	u5955
	movlw	0
	btfsc	(59/8),(59)&7
	movlw	1
	movwf	(??_Trace_PID+6)+0
	movlw	06h
u5965:
	clrc
	rlf	(??_Trace_PID+6)+0,f
	addlw	-1
	skipz
	goto	u5965
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
	line	36
;pid.c: 36: switch(Trace_Byte)
	goto	l12720
	line	39
;pid.c: 37: {
;pid.c: 39: case 0B11100111:
	
l7100:	
	line	40
	
l12688:	
;pid.c: 40: turn_err=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_turn_err)^080h
	clrf	(_turn_err+1)^080h
	line	41
;pid.c: 41: break;
	goto	l12722
	line	42
;pid.c: 42: case 0B11110111:
	
l7102:	
	line	43
	
l12690:	
;pid.c: 43: turn_err=-1;
	movlw	low(-1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_turn_err)^080h
	movlw	high(-1)
	movwf	((_turn_err)^080h)+1
	line	44
;pid.c: 44: break;
	goto	l12722
	line	45
;pid.c: 45: case 0B11101111:
	
l7103:	
	line	46
	
l12692:	
;pid.c: 46: turn_err=1;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_turn_err)^080h
	movlw	high(01h)
	movwf	((_turn_err)^080h)+1
	line	47
;pid.c: 47: break;
	goto	l12722
	line	49
;pid.c: 49: case 0B11001111:
	
l7104:	
	line	50
	
l12694:	
;pid.c: 50: turn_err=2;
	movlw	low(02h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_turn_err)^080h
	movlw	high(02h)
	movwf	((_turn_err)^080h)+1
	line	51
;pid.c: 51: break;
	goto	l12722
	line	52
;pid.c: 52: case 0B11011111:
	
l7105:	
	line	53
	
l12696:	
;pid.c: 53: turn_err=3;
	movlw	low(03h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_turn_err)^080h
	movlw	high(03h)
	movwf	((_turn_err)^080h)+1
	line	54
;pid.c: 54: break;
	goto	l12722
	line	55
;pid.c: 55: case 0B10011111:
	
l7106:	
	line	56
	
l12698:	
;pid.c: 56: turn_err=4;
	movlw	low(04h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_turn_err)^080h
	movlw	high(04h)
	movwf	((_turn_err)^080h)+1
	line	57
;pid.c: 57: break;
	goto	l12722
	line	58
;pid.c: 58: case 0B10111111:
	
l7107:	
	line	59
	
l12700:	
;pid.c: 59: turn_err=5;
	movlw	low(05h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_turn_err)^080h
	movlw	high(05h)
	movwf	((_turn_err)^080h)+1
	line	60
;pid.c: 60: break;
	goto	l12722
	line	61
;pid.c: 61: case 0B00111111:
	
l7108:	
	line	62
	
l12702:	
;pid.c: 62: turn_err=6;
	movlw	low(06h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_turn_err)^080h
	movlw	high(06h)
	movwf	((_turn_err)^080h)+1
	line	63
;pid.c: 63: break;
	goto	l12722
	line	64
;pid.c: 64: case 0B01111111:
	
l7109:	
	line	65
	
l12704:	
;pid.c: 65: turn_err=7;
	movlw	low(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_turn_err)^080h
	movlw	high(07h)
	movwf	((_turn_err)^080h)+1
	line	66
;pid.c: 66: break;
	goto	l12722
	line	69
;pid.c: 69: case 0B11110011:
	
l7110:	
	line	70
	
l12706:	
;pid.c: 70: turn_err=-2;
	movlw	low(-2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_turn_err)^080h
	movlw	high(-2)
	movwf	((_turn_err)^080h)+1
	line	71
;pid.c: 71: break;
	goto	l12722
	line	72
;pid.c: 72: case 0B11111011:
	
l7111:	
	line	73
	
l12708:	
;pid.c: 73: turn_err=-3;
	movlw	low(-3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_turn_err)^080h
	movlw	high(-3)
	movwf	((_turn_err)^080h)+1
	line	74
;pid.c: 74: break;
	goto	l12722
	line	75
;pid.c: 75: case 0B11111001:
	
l7112:	
	line	76
	
l12710:	
;pid.c: 76: turn_err=-4;
	movlw	low(-4)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_turn_err)^080h
	movlw	high(-4)
	movwf	((_turn_err)^080h)+1
	line	77
;pid.c: 77: break;
	goto	l12722
	line	78
;pid.c: 78: case 0B11111101:
	
l7113:	
	line	79
	
l12712:	
;pid.c: 79: turn_err=-5;
	movlw	low(-5)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_turn_err)^080h
	movlw	high(-5)
	movwf	((_turn_err)^080h)+1
	line	80
;pid.c: 80: break;
	goto	l12722
	line	81
;pid.c: 81: case 0B11111100:
	
l7114:	
	line	82
	
l12714:	
;pid.c: 82: turn_err=-6;
	movlw	low(-6)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_turn_err)^080h
	movlw	high(-6)
	movwf	((_turn_err)^080h)+1
	line	83
;pid.c: 83: break;
	goto	l12722
	line	84
;pid.c: 84: case 0B11111110:
	
l7115:	
	line	85
	
l12716:	
;pid.c: 85: turn_err=-7;
	movlw	low(-7)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_turn_err)^080h
	movlw	high(-7)
	movwf	((_turn_err)^080h)+1
	line	86
;pid.c: 86: break;
	goto	l12722
	line	87
	
l12718:	
;pid.c: 87: }
	goto	l12722
	line	36
	
l7099:	
	
l12720:	
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
	goto	l12702
	xorlw	127^63	; case 127
	skipnz
	goto	l12704
	xorlw	159^127	; case 159
	skipnz
	goto	l12698
	xorlw	191^159	; case 191
	skipnz
	goto	l12700
	xorlw	207^191	; case 207
	skipnz
	goto	l12694
	xorlw	223^207	; case 223
	skipnz
	goto	l12696
	xorlw	231^223	; case 231
	skipnz
	goto	l12688
	xorlw	239^231	; case 239
	skipnz
	goto	l12692
	xorlw	243^239	; case 243
	skipnz
	goto	l12706
	xorlw	247^243	; case 247
	skipnz
	goto	l12690
	xorlw	249^247	; case 249
	skipnz
	goto	l12710
	xorlw	251^249	; case 251
	skipnz
	goto	l12708
	xorlw	252^251	; case 252
	skipnz
	goto	l12714
	xorlw	253^252	; case 253
	skipnz
	goto	l12712
	xorlw	254^253	; case 254
	skipnz
	goto	l12716
	goto	l12722
	opt asmopt_on

	line	87
	
l7101:	
	line	89
	
l12722:	
;pid.c: 89: err_difference= turn_err - last_err;
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
	line	91
;pid.c: 91: last_err= turn_err;
	movf	(_turn_err+1)^080h,w
	clrf	(_last_err+1)^080h
	addwf	(_last_err+1)^080h
	movf	(_turn_err)^080h,w
	clrf	(_last_err)^080h
	addwf	(_last_err)^080h

	line	93
	
l12724:	
;pid.c: 93: return (int)(turn_err*Kp + err_difference*Kd);
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

	goto	l7116
	
l12726:	
	line	94
	
l7116:	
	return
	opt stack 0
GLOBAL	__end_of_Trace_PID
	__end_of_Trace_PID:
;; =============== function _Trace_PID ends ============

	signat	_Trace_PID,90
	global	___awtoft
psect	text844,local,class=CODE,delta=2
global __ptext844
__ptext844:

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
psect	text844
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt	stack 3
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l12678:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awtoft@sign)
	line	37
	btfss	(___awtoft@c+1),7
	goto	u5901
	goto	u5900
u5901:
	goto	l12682
u5900:
	line	38
	
l12680:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	clrf	(___awtoft@sign)
	bsf	status,0
	rlf	(___awtoft@sign),f
	goto	l12682
	line	40
	
l9462:	
	line	41
	
l12682:	
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
	goto	l9463
	
l12684:	
	line	42
	
l9463:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
;; =============== function ___awtoft ends ============

	signat	___awtoft,4219
	global	___ftmul
psect	text845,local,class=CODE,delta=2
global __ptext845
__ptext845:

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
psect	text845
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 3
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l12628:	
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
	goto	u5761
	goto	u5760
u5761:
	goto	l12634
u5760:
	line	57
	
l12630:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l9425
	
l12632:	
	goto	l9425
	
l9424:	
	line	58
	
l12634:	
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
	goto	u5771
	goto	u5770
u5771:
	goto	l12640
u5770:
	line	59
	
l12636:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l9425
	
l12638:	
	goto	l9425
	
l9426:	
	line	60
	
l12640:	
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
u5785:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u5780:
	addlw	-1
	skipz
	goto	u5785
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
u5795:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u5790:
	addlw	-1
	skipz
	goto	u5795
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
	
l12642:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l12644:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l12646:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l12648:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	69
	
l12650:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l12652
	line	70
	
l9427:	
	line	71
	
l12652:	
	btfss	(___ftmul@f1),(0)&7
	goto	u5801
	goto	u5800
u5801:
	goto	l12656
u5800:
	line	72
	
l12654:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u5811
	addwf	(___ftmul@f3_as_product+1),f
u5811:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u5812
	addwf	(___ftmul@f3_as_product+2),f
u5812:

	goto	l12656
	
l9428:	
	line	73
	
l12656:	
	movlw	01h
u5825:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u5825

	line	74
	
l12658:	
	movlw	01h
u5835:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u5835
	line	75
	
l12660:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u5841
	goto	u5840
u5841:
	goto	l12652
u5840:
	goto	l12662
	
l9429:	
	line	76
	
l12662:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l12664
	line	77
	
l9430:	
	line	78
	
l12664:	
	btfss	(___ftmul@f1),(0)&7
	goto	u5851
	goto	u5850
u5851:
	goto	l12668
u5850:
	line	79
	
l12666:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u5861
	addwf	(___ftmul@f3_as_product+1),f
u5861:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u5862
	addwf	(___ftmul@f3_as_product+2),f
u5862:

	goto	l12668
	
l9431:	
	line	80
	
l12668:	
	movlw	01h
u5875:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u5875

	line	81
	
l12670:	
	movlw	01h
u5885:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u5885

	line	82
	
l12672:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u5891
	goto	u5890
u5891:
	goto	l12664
u5890:
	goto	l12674
	
l9432:	
	line	83
	
l12674:	
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
	goto	l9425
	
l12676:	
	line	84
	
l9425:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftadd
psect	text846,local,class=CODE,delta=2
global __ptext846
__ptext846:

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
psect	text846
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
	opt	stack 3
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l12558:	
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
	
l12560:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u5520
	goto	l12566
u5520:
	
l12562:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u5531
	goto	u5530
u5531:
	goto	l12570
u5530:
	
l12564:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u5541
	goto	u5540
u5541:
	goto	l12570
u5540:
	goto	l12566
	
l9372:	
	line	93
	
l12566:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l9373
	
l12568:	
	goto	l9373
	
l9370:	
	line	94
	
l12570:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u5550
	goto	l9376
u5550:
	
l12572:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u5561
	goto	u5560
u5561:
	goto	l12576
u5560:
	
l12574:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u5571
	goto	u5570
u5571:
	goto	l12576
u5570:
	
l9376:	
	line	95
	goto	l9373
	
l9374:	
	line	96
	
l12576:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l12578:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u5581
	goto	u5580
u5581:
	goto	l9377
u5580:
	line	98
	
l12580:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l9377:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u5591
	goto	u5590
u5591:
	goto	l9378
u5590:
	line	100
	
l12582:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l9378:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l12584:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l12586:	
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
	goto	u5601
	goto	u5600
u5601:
	goto	l12598
u5600:
	goto	l12588
	line	109
	
l9380:	
	line	110
	
l12588:	
	movlw	01h
u5615:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u5615
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
l12590:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u5621
	goto	u5620
u5621:
	goto	l12596
u5620:
	
l12592:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u5631
	goto	u5630
u5631:
	goto	l12588
u5630:
	goto	l12596
	
l9382:	
	goto	l12596
	
l9383:	
	line	113
	goto	l12596
	
l9385:	
	line	114
	
l12594:	
	movlw	01h
u5645:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u5645

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	l12596
	line	116
	
l9384:	
	line	113
	
l12596:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u5651
	goto	u5650
u5651:
	goto	l12594
u5650:
	goto	l9387
	
l9386:	
	line	117
	goto	l9387
	
l9379:	
	
l12598:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u5661
	goto	u5660
u5661:
	goto	l9387
u5660:
	goto	l12600
	line	120
	
l9389:	
	line	121
	
l12600:	
	movlw	01h
u5675:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u5675
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
l12602:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u5681
	goto	u5680
u5681:
	goto	l12608
u5680:
	
l12604:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u5691
	goto	u5690
u5691:
	goto	l12600
u5690:
	goto	l12608
	
l9391:	
	goto	l12608
	
l9392:	
	line	124
	goto	l12608
	
l9394:	
	line	125
	
l12606:	
	movlw	01h
u5705:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u5705

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	l12608
	line	127
	
l9393:	
	line	124
	
l12608:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u5711
	goto	u5710
u5711:
	goto	l12606
u5710:
	goto	l9387
	
l9395:	
	goto	l9387
	line	128
	
l9388:	
	line	129
	
l9387:	
	btfss	(___ftadd@sign),(7)&7
	goto	u5721
	goto	u5720
u5721:
	goto	l12612
u5720:
	line	131
	
l12610:	
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
	goto	l12612
	line	133
	
l9396:	
	line	134
	
l12612:	
	btfss	(___ftadd@sign),(6)&7
	goto	u5731
	goto	u5730
u5731:
	goto	l12616
u5730:
	line	136
	
l12614:	
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
	goto	l12616
	line	138
	
l9397:	
	line	139
	
l12616:	
	clrf	(___ftadd@sign)
	line	140
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u5741
	addwf	(___ftadd@f2+1),f
u5741:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u5742
	addwf	(___ftadd@f2+2),f
u5742:

	line	141
	
l12618:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u5751
	goto	u5750
u5751:
	goto	l12624
u5750:
	line	142
	
l12620:	
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
	
l12622:	
	clrf	(___ftadd@sign)
	bsf	status,0
	rlf	(___ftadd@sign),f
	goto	l12624
	line	145
	
l9398:	
	line	146
	
l12624:	
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
	goto	l9373
	
l12626:	
	line	148
	
l9373:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
;; =============== function ___ftadd ends ============

	signat	___ftadd,8315
	global	_Delay_ms
psect	text847,local,class=CODE,delta=2
global __ptext847
__ptext847:

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
;;		_Self_Check
;; This function uses a non-reentrant model
;;
psect	text847
	file	"D:\6_pic_project\00_Design_Flow_Car\System\Delay.c"
	line	4
	global	__size_of_Delay_ms
	__size_of_Delay_ms	equ	__end_of_Delay_ms-_Delay_ms
	
_Delay_ms:	
	opt	stack 6
; Regs used in _Delay_ms: [wreg]
	line	5
	
l12554:	
;Delay.c: 5: while(x--)
	goto	l12556
	
l5015:	
	line	7
;Delay.c: 6: {
;Delay.c: 7: _nop();
	nop
	goto	l12556
	line	8
	
l5014:	
	line	5
	
l12556:	
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
	goto	u5515
	movlw	low(0FFFFh)
	xorwf	((Delay_ms@x)),w
u5515:

	skipz
	goto	u5511
	goto	u5510
u5511:
	goto	l5015
u5510:
	goto	l5017
	
l5016:	
	line	9
	
l5017:	
	return
	opt stack 0
GLOBAL	__end_of_Delay_ms
	__end_of_Delay_ms:
;; =============== function _Delay_ms ends ============

	signat	_Delay_ms,4216
	global	___fttol
psect	text848,local,class=CODE,delta=2
global __ptext848
__ptext848:

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
psect	text848
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 4
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l11868:	
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
	goto	l11874
u4260:
	line	50
	
l11870:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l9436
	
l11872:	
	goto	l9436
	
l9435:	
	line	51
	
l11874:	
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
	
l11876:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l11878:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l11880:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l11882:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l11884:	
	btfss	(___fttol@exp1),7
	goto	u4281
	goto	u4280
u4281:
	goto	l11894
u4280:
	line	57
	
l11886:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u4291
	goto	u4290
u4291:
	goto	l11892
u4290:
	line	58
	
l11888:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l9436
	
l11890:	
	goto	l9436
	
l9438:	
	goto	l11892
	line	59
	
l9439:	
	line	60
	
l11892:	
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
	goto	l11892
u4310:
	goto	l11904
	
l9440:	
	line	62
	goto	l11904
	
l9437:	
	line	63
	
l11894:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u4321
	goto	u4320
u4321:
	goto	l11902
u4320:
	line	64
	
l11896:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l9436
	
l11898:	
	goto	l9436
	
l9442:	
	line	65
	goto	l11902
	
l9444:	
	line	66
	
l11900:	
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
	goto	l11902
	line	68
	
l9443:	
	line	65
	
l11902:	
	movf	(___fttol@exp1),f
	skipz
	goto	u4341
	goto	u4340
u4341:
	goto	l11900
u4340:
	goto	l11904
	
l9445:	
	goto	l11904
	line	69
	
l9441:	
	line	70
	
l11904:	
	movf	(___fttol@sign1),w
	skipz
	goto	u4350
	goto	l11908
u4350:
	line	71
	
l11906:	
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
	goto	l11908
	
l9446:	
	line	72
	
l11908:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l9436
	
l11910:	
	line	73
	
l9436:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text849,local,class=CODE,delta=2
global __ptext849
__ptext849:

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
psect	text849
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 3
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l12422:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftpack@exp),w
	skipz
	goto	u5250
	goto	l12426
u5250:
	
l12424:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u5261
	goto	u5260
u5261:
	goto	l12432
u5260:
	goto	l12426
	
l9660:	
	line	65
	
l12426:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l9661
	
l12428:	
	goto	l9661
	
l9658:	
	line	66
	goto	l12432
	
l9663:	
	line	67
	
l12430:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u5275:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u5275

	goto	l12432
	line	69
	
l9662:	
	line	66
	
l12432:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u5281
	goto	u5280
u5281:
	goto	l12430
u5280:
	goto	l9665
	
l9664:	
	line	70
	goto	l9665
	
l9666:	
	line	71
	
l12434:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l12436:	
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
	
l12438:	
	movlw	01h
u5295:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u5295

	line	74
	
l9665:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u5301
	goto	u5300
u5301:
	goto	l12434
u5300:
	goto	l12442
	
l9667:	
	line	75
	goto	l12442
	
l9669:	
	line	76
	
l12440:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u5315:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u5315
	goto	l12442
	line	78
	
l9668:	
	line	75
	
l12442:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u5321
	goto	u5320
u5321:
	goto	l12440
u5320:
	
l9670:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u5331
	goto	u5330
u5331:
	goto	l9671
u5330:
	line	80
	
l12444:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l9671:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l12446:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u5345:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u5340:
	addlw	-1
	skipz
	goto	u5345
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l12448:	
	movf	(___ftpack@sign),w
	skipz
	goto	u5350
	goto	l9672
u5350:
	line	84
	
l12450:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l9672:	
	line	85
	line	86
	
l9661:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	___wmul
psect	text850,local,class=CODE,delta=2
global __ptext850
__ptext850:

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
psect	text850
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 4
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l12410:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l12412
	line	6
	
l9326:	
	line	7
	
l12412:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u5211
	goto	u5210
u5211:
	goto	l9327
u5210:
	line	8
	
l12414:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l9327:	
	line	9
	movlw	01h
	
u5225:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u5225
	line	10
	
l12416:	
	movlw	01h
	
u5235:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u5235
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u5241
	goto	u5240
u5241:
	goto	l12412
u5240:
	goto	l12418
	
l9328:	
	line	12
	
l12418:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l9329
	
l12420:	
	line	13
	
l9329:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_Start_PD
psect	text851,local,class=CODE,delta=2
global __ptext851
__ptext851:

;; *************** function _Start_PD *****************
;; Defined at:
;;		line 55 in file "D:\6_pic_project\00_Design_Flow_Car\User\Car_demo\Car_demo.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Trace_Control
;;		_Self_Check
;; This function uses a non-reentrant model
;;
psect	text851
	file	"D:\6_pic_project\00_Design_Flow_Car\User\Car_demo\Car_demo.c"
	line	55
	global	__size_of_Start_PD
	__size_of_Start_PD	equ	__end_of_Start_PD-_Start_PD
	
_Start_PD:	
	opt	stack 5
; Regs used in _Start_PD: [wreg-fsr0h+status,2+status,0]
	line	56
	
l12384:	
;Car_demo.c: 56: Trace_Mode = (RC0<<7|RC3<<6|RE0<<5|RE1<<4|RE2<<3|RA4<<2|RC4<<1|RC5);
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
u5145:
	clrc
	rlf	(??_Start_PD+1)+0,f
	addlw	-1
	skipz
	goto	u5145
	movlw	0
	btfsc	(44/8),(44)&7
	movlw	1
	movwf	(??_Start_PD+2)+0
	movlw	02h
u5155:
	clrc
	rlf	(??_Start_PD+2)+0,f
	addlw	-1
	skipz
	goto	u5155
	movlw	0
	btfsc	(74/8),(74)&7
	movlw	1
	movwf	(??_Start_PD+3)+0
	movlw	03h
u5165:
	clrc
	rlf	(??_Start_PD+3)+0,f
	addlw	-1
	skipz
	goto	u5165
	movlw	0
	btfsc	(73/8),(73)&7
	movlw	1
	movwf	(??_Start_PD+4)+0
	movlw	04h
u5175:
	clrc
	rlf	(??_Start_PD+4)+0,f
	addlw	-1
	skipz
	goto	u5175
	movlw	0
	btfsc	(72/8),(72)&7
	movlw	1
	movwf	(??_Start_PD+5)+0
	movlw	05h
u5185:
	clrc
	rlf	(??_Start_PD+5)+0,f
	addlw	-1
	skipz
	goto	u5185
	movlw	0
	btfsc	(59/8),(59)&7
	movlw	1
	movwf	(??_Start_PD+6)+0
	movlw	06h
u5195:
	clrc
	rlf	(??_Start_PD+6)+0,f
	addlw	-1
	skipz
	goto	u5195
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
	movwf	(_Trace_Mode)
	line	58
;Car_demo.c: 58: switch(Trace_Mode)
	goto	l12400
	line	61
;Car_demo.c: 59: {
;Car_demo.c: 61: case 0B10000001:
	
l8566:	
	goto	l12386
	line	62
	
l8567:	
	goto	l12386
	line	63
	
l8568:	
	goto	l12386
	line	64
	
l8569:	
	line	65
	
l12386:	
;Car_demo.c: 62: case 0B10000000:
;Car_demo.c: 63: case 0B00000001:
;Car_demo.c: 64: case 0B00000000:
;Car_demo.c: 65: return 1;
	movlw	low(01h)
	movwf	(?_Start_PD)
	movlw	high(01h)
	movwf	((?_Start_PD))+1
	goto	l8570
	
l12388:	
	goto	l8570
	line	66
;Car_demo.c: 66: case 0B11111111:
	
l8571:	
	line	67
	
l12390:	
;Car_demo.c: 67: return 99;
	movlw	low(063h)
	movwf	(?_Start_PD)
	movlw	high(063h)
	movwf	((?_Start_PD))+1
	goto	l8570
	
l12392:	
	goto	l8570
	line	68
;Car_demo.c: 68: default:
	
l8572:	
	line	69
	
l12394:	
;Car_demo.c: 69: return 0;
	clrf	(?_Start_PD)
	clrf	(?_Start_PD+1)
	goto	l8570
	
l12396:	
	goto	l8570
	line	70
	
l12398:	
;Car_demo.c: 70: }
	goto	l8570
	line	58
	
l8565:	
	
l12400:	
	movf	(_Trace_Mode),w
	; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 0 to 255
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
; jumptable            260     6 (fixed)
; rangetable           260     6 (fixed)
; spacedrange          518     9 (fixed)
; locatedrange         256     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l12386
	xorlw	1^0	; case 1
	skipnz
	goto	l12386
	xorlw	128^1	; case 128
	skipnz
	goto	l12386
	xorlw	129^128	; case 129
	skipnz
	goto	l12386
	xorlw	255^129	; case 255
	skipnz
	goto	l12390
	goto	l12394
	opt asmopt_on

	line	70
	
l8573:	
	line	71
	
l8570:	
	return
	opt stack 0
GLOBAL	__end_of_Start_PD
	__end_of_Start_PD:
;; =============== function _Start_PD ends ============

	signat	_Start_PD,90
	global	_csb_init
psect	text852,local,class=CODE,delta=2
global __ptext852
__ptext852:

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
psect	text852
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\csb.c"
	line	22
	global	__size_of_csb_init
	__size_of_csb_init	equ	__end_of_csb_init-_csb_init
	
_csb_init:	
	opt	stack 6
; Regs used in _csb_init: [wreg+status,2]
	line	23
	
l12340:	
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
	
l12342:	
;csb.c: 30: ADCON1=7;TRISD=0;
	movlw	(07h)
	movwf	(159)^080h	;volatile
	
l12344:	
	clrf	(136)^080h	;volatile
	line	32
	
l12346:	
;csb.c: 32: RA0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7
	line	33
	
l12348:	
;csb.c: 33: RA1 = 1;
	bsf	(41/8),(41)&7
	line	35
	
l12350:	
;csb.c: 35: T1CON=0B00000000;
	clrf	(16)	;volatile
	line	36
	
l12352:	
;csb.c: 36: TMR1H=0x00;
	clrf	(15)	;volatile
	line	37
	
l12354:	
;csb.c: 37: TMR1L=0x00;
	clrf	(14)	;volatile
	line	38
	
l12356:	
;csb.c: 38: TMR1ON=0x00;
	bcf	(128/8),(128)&7
	line	39
	
l7813:	
	return
	opt stack 0
GLOBAL	__end_of_csb_init
	__end_of_csb_init:
;; =============== function _csb_init ends ============

	signat	_csb_init,88
	global	_Trace_GPIO_Init
psect	text853,local,class=CODE,delta=2
global __ptext853
__ptext853:

;; *************** function _Trace_GPIO_Init *****************
;; Defined at:
;;		line 21 in file "D:\6_pic_project\00_Design_Flow_Car\Driver\pid.c"
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
psect	text853
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\pid.c"
	line	21
	global	__size_of_Trace_GPIO_Init
	__size_of_Trace_GPIO_Init	equ	__end_of_Trace_GPIO_Init-_Trace_GPIO_Init
	
_Trace_GPIO_Init:	
	opt	stack 6
; Regs used in _Trace_GPIO_Init: []
	line	22
	
l12338:	
;pid.c: 22: TRISE0=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1096/8)^080h,(1096)&7
	line	23
;pid.c: 23: TRISE1=1;
	bsf	(1097/8)^080h,(1097)&7
	line	24
;pid.c: 24: TRISE2=1;
	bsf	(1098/8)^080h,(1098)&7
	line	25
;pid.c: 25: TRISA4=1;
	bsf	(1068/8)^080h,(1068)&7
	line	26
;pid.c: 26: TRISC0=1;
	bsf	(1080/8)^080h,(1080)&7
	line	27
;pid.c: 27: TRISC3=1;
	bsf	(1083/8)^080h,(1083)&7
	line	28
;pid.c: 28: TRISC4=1;
	bsf	(1084/8)^080h,(1084)&7
	line	29
;pid.c: 29: TRISC5=1;
	bsf	(1085/8)^080h,(1085)&7
	line	30
	
l7096:	
	return
	opt stack 0
GLOBAL	__end_of_Trace_GPIO_Init
	__end_of_Trace_GPIO_Init:
;; =============== function _Trace_GPIO_Init ends ============

	signat	_Trace_GPIO_Init,88
	global	_Encoder_Init
psect	text854,local,class=CODE,delta=2
global __ptext854
__ptext854:

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
psect	text854
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\Encoder.c"
	line	4
	global	__size_of_Encoder_Init
	__size_of_Encoder_Init	equ	__end_of_Encoder_Init-_Encoder_Init
	
_Encoder_Init:	
	opt	stack 6
; Regs used in _Encoder_Init: [wreg]
	line	5
	
l12330:	
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
	
l12332:	
;Encoder.c: 12: OPTION_REG=0B01000111;
	movlw	(047h)
	movwf	(129)^080h	;volatile
	line	15
	
l12334:	
;Encoder.c: 15: T0IE=1;
	bsf	(93/8),(93)&7
	line	16
	
l12336:	
;Encoder.c: 16: T0IF=0;
	bcf	(90/8),(90)&7
	line	17
;Encoder.c: 17: TMR0=60;
	movlw	(03Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	line	18
	
l6399:	
	return
	opt stack 0
GLOBAL	__end_of_Encoder_Init
	__end_of_Encoder_Init:
;; =============== function _Encoder_Init ends ============

	signat	_Encoder_Init,88
	global	_Usart_Init
psect	text855,local,class=CODE,delta=2
global __ptext855
__ptext855:

;; *************** function _Usart_Init *****************
;; Defined at:
;;		line 48 in file "D:\6_pic_project\00_Design_Flow_Car\Driver\Usart.c"
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
psect	text855
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\Usart.c"
	line	48
	global	__size_of_Usart_Init
	__size_of_Usart_Init	equ	__end_of_Usart_Init-_Usart_Init
	
_Usart_Init:	
	opt	stack 6
; Regs used in _Usart_Init: [wreg]
	line	49
	
l12322:	
;Usart.c: 49: TXSTA=0B00100100;
	movlw	(024h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(152)^080h	;volatile
	line	50
;Usart.c: 50: RCSTA=0B10010000;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	51
;Usart.c: 51: SPBRG=12;
	movlw	(0Ch)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	52
	
l12324:	
;Usart.c: 52: GIE=1;
	bsf	(95/8),(95)&7
	line	53
	
l12326:	
;Usart.c: 53: PEIE=1;
	bsf	(94/8),(94)&7
	line	54
	
l12328:	
;Usart.c: 54: RCIE=1;
	bsf	(1125/8)^080h,(1125)&7
	line	55
	
l4319:	
	return
	opt stack 0
GLOBAL	__end_of_Usart_Init
	__end_of_Usart_Init:
;; =============== function _Usart_Init ends ============

	signat	_Usart_Init,88
	global	_Usart_GPIO_Init
psect	text856,local,class=CODE,delta=2
global __ptext856
__ptext856:

;; *************** function _Usart_GPIO_Init *****************
;; Defined at:
;;		line 37 in file "D:\6_pic_project\00_Design_Flow_Car\Driver\Usart.c"
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
psect	text856
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\Usart.c"
	line	37
	global	__size_of_Usart_GPIO_Init
	__size_of_Usart_GPIO_Init	equ	__end_of_Usart_GPIO_Init-_Usart_GPIO_Init
	
_Usart_GPIO_Init:	
	opt	stack 6
; Regs used in _Usart_GPIO_Init: []
	line	38
	
l12320:	
;Usart.c: 38: TRISC6=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1086/8)^080h,(1086)&7
	line	39
;Usart.c: 39: TRISC7=1;
	bsf	(1087/8)^080h,(1087)&7
	line	40
	
l4316:	
	return
	opt stack 0
GLOBAL	__end_of_Usart_GPIO_Init
	__end_of_Usart_GPIO_Init:
;; =============== function _Usart_GPIO_Init ends ============

	signat	_Usart_GPIO_Init,88
	global	_putch
psect	text857,local,class=CODE,delta=2
global __ptext857
__ptext857:

;; *************** function _putch *****************
;; Defined at:
;;		line 22 in file "D:\6_pic_project\00_Design_Flow_Car\Driver\Usart.c"
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
;;		_Trace_Control
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text857
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\Usart.c"
	line	22
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
	opt	stack 5
; Regs used in _putch: [wreg]
;putch@ch stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(putch@ch)
	line	23
	
l12292:	
;Usart.c: 23: TXREG=ch;
	movf	(putch@ch),w
	movwf	(25)	;volatile
	line	24
;Usart.c: 24: while(TRMT==0);
	goto	l4304
	
l4305:	
	
l4304:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1217/8)^080h,(1217)&7
	goto	u5061
	goto	u5060
u5061:
	goto	l4304
u5060:
	goto	l4307
	
l4306:	
	line	25
	
l4307:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
;; =============== function _putch ends ============

	signat	_putch,4216
	global	_Motor_Speed_Set
psect	text858,local,class=CODE,delta=2
global __ptext858
__ptext858:

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
;;		_Trace_Control
;; This function uses a non-reentrant model
;;
psect	text858
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\Motor.c"
	line	60
	global	__size_of_Motor_Speed_Set
	__size_of_Motor_Speed_Set	equ	__end_of_Motor_Speed_Set-_Motor_Speed_Set
	
_Motor_Speed_Set:	
	opt	stack 5
; Regs used in _Motor_Speed_Set: [wreg+status,2+status,0+btemp+1]
	line	61
	
l12276:	
;Motor.c: 61: if(Speed1 > 0 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Motor_Speed_Set@Speed1+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u5045
	movlw	low(01h)
	subwf	(Motor_Speed_Set@Speed1),w
u5045:

	skipc
	goto	u5041
	goto	u5040
u5041:
	goto	l3608
u5040:
	line	63
	
l12278:	
;Motor.c: 62: {
;Motor.c: 63: RB4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(52/8),(52)&7
	line	64
;Motor.c: 64: RB5 = 0;
	bcf	(53/8),(53)&7
	line	65
	
l12280:	
;Motor.c: 65: CCPR1L=(unsigned char)Speed1;
	movf	(Motor_Speed_Set@Speed1),w
	movwf	(21)	;volatile
	line	66
;Motor.c: 66: }
	goto	l12284
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
	
l12282:	
;Motor.c: 71: CCPR1L=(unsigned char)(-Speed1);
	decf	(Motor_Speed_Set@Speed1),w
	xorlw	0ffh
	movwf	(21)	;volatile
	goto	l12284
	line	72
	
l3609:	
	line	74
	
l12284:	
;Motor.c: 72: }
;Motor.c: 74: if(Speed2 >0 )
	movf	(Motor_Speed_Set@Speed2+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u5055
	movlw	low(01h)
	subwf	(Motor_Speed_Set@Speed2),w
u5055:

	skipc
	goto	u5051
	goto	u5050
u5051:
	goto	l3610
u5050:
	line	76
	
l12286:	
;Motor.c: 75: {
;Motor.c: 76: RB6 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(54/8),(54)&7
	line	77
;Motor.c: 77: RB7 = 0;
	bcf	(55/8),(55)&7
	line	78
	
l12288:	
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
	
l12290:	
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
psect	text859,local,class=CODE,delta=2
global __ptext859
__ptext859:

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
psect	text859
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\Motor.c"
	line	31
	global	__size_of_Motor_CCP_PWM_Init
	__size_of_Motor_CCP_PWM_Init	equ	__end_of_Motor_CCP_PWM_Init-_Motor_CCP_PWM_Init
	
_Motor_CCP_PWM_Init:	
	opt	stack 6
; Regs used in _Motor_CCP_PWM_Init: [wreg+status,2]
	line	33
	
l12268:	
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
	
l12270:	
;Motor.c: 42: T2CON=0;
	clrf	(18)	;volatile
	line	43
	
l12272:	
;Motor.c: 43: TMR2=0;
	clrf	(17)	;volatile
	line	44
	
l12274:	
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
psect	text860,local,class=CODE,delta=2
global __ptext860
__ptext860:

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
psect	text860
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\Motor.c"
	line	21
	global	__size_of_Motor_GPIO_Init
	__size_of_Motor_GPIO_Init	equ	__end_of_Motor_GPIO_Init-_Motor_GPIO_Init
	
_Motor_GPIO_Init:	
	opt	stack 6
; Regs used in _Motor_GPIO_Init: []
	line	22
	
l12266:	
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
	global	_Service
psect	text861,local,class=CODE,delta=2
global __ptext861
__ptext861:

;; *************** function _Service *****************
;; Defined at:
;;		line 181 in file "D:\6_pic_project\00_Design_Flow_Car\User\Car_demo\Car_demo.c"
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
psect	text861
	file	"D:\6_pic_project\00_Design_Flow_Car\User\Car_demo\Car_demo.c"
	line	181
	global	__size_of_Service
	__size_of_Service	equ	__end_of_Service-_Service
	
_Service:	
	opt	stack 3
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
psect	text861
	line	183
	
i1l11748:	
;Car_demo.c: 183: if(RCIF==1)
	btfss	(101/8),(101)&7
	goto	u393_21
	goto	u393_20
u393_21:
	goto	i1l8602
u393_20:
	line	185
	
i1l11750:	
;Car_demo.c: 184: {
;Car_demo.c: 185: bluetooth=RCREG;
	movf	(26),w	;volatile
	movwf	(??_Service+0)+0
	movf	(??_Service+0)+0,w
	movwf	(_bluetooth)
	line	186
;Car_demo.c: 186: if(bluetooth == 1){Speed_Velcolity=25;}
	movf	(_bluetooth),w
	xorlw	01h
	skipz
	goto	u394_21
	goto	u394_20
u394_21:
	goto	i1l8603
u394_20:
	
i1l11752:	
	movlw	(019h)
	movwf	(??_Service+0)+0
	movf	(??_Service+0)+0,w
	movwf	(_Speed_Velcolity)
	
i1l8603:	
	line	187
;Car_demo.c: 187: if(bluetooth == 2){Speed_Velcolity=30;}
	movf	(_bluetooth),w
	xorlw	02h
	skipz
	goto	u395_21
	goto	u395_20
u395_21:
	goto	i1l8604
u395_20:
	
i1l11754:	
	movlw	(01Eh)
	movwf	(??_Service+0)+0
	movf	(??_Service+0)+0,w
	movwf	(_Speed_Velcolity)
	
i1l8604:	
	line	188
;Car_demo.c: 188: if(bluetooth == 3){Speed_Velcolity=50;}
	movf	(_bluetooth),w
	xorlw	03h
	skipz
	goto	u396_21
	goto	u396_20
u396_21:
	goto	i1l8605
u396_20:
	
i1l11756:	
	movlw	(032h)
	movwf	(??_Service+0)+0
	movf	(??_Service+0)+0,w
	movwf	(_Speed_Velcolity)
	
i1l8605:	
	line	189
;Car_demo.c: 189: if(bluetooth == 4){Speed_Velcolity=55;}
	movf	(_bluetooth),w
	xorlw	04h
	skipz
	goto	u397_21
	goto	u397_20
u397_21:
	goto	i1l11760
u397_20:
	
i1l11758:	
	movlw	(037h)
	movwf	(??_Service+0)+0
	movf	(??_Service+0)+0,w
	movwf	(_Speed_Velcolity)
	goto	i1l11760
	
i1l8606:	
	line	192
	
i1l11760:	
;Car_demo.c: 192: RCIF=0;
	bcf	(101/8),(101)&7
	line	193
;Car_demo.c: 193: }
	goto	i1l8607
	line	194
	
i1l8602:	
;Car_demo.c: 194: else if(T0IF==1)
	btfss	(90/8),(90)&7
	goto	u398_21
	goto	u398_20
u398_21:
	goto	i1l8608
u398_20:
	line	196
	
i1l11762:	
;Car_demo.c: 195: {
;Car_demo.c: 196: TMR0=60;
	movlw	(03Ch)
	movwf	(1)	;volatile
	line	197
	
i1l11764:	
;Car_demo.c: 197: T0IF=0;
	bcf	(90/8),(90)&7
	line	198
;Car_demo.c: 198: }
	goto	i1l8607
	line	199
	
i1l8608:	
;Car_demo.c: 199: else if(INTF==1)
	btfss	(89/8),(89)&7
	goto	u399_21
	goto	u399_20
u399_21:
	goto	i1l8610
u399_20:
	line	201
	
i1l11766:	
;Car_demo.c: 200: {
;Car_demo.c: 201: if(Start_Find_flag)
	movf	(_Start_Find_flag),w
	skipz
	goto	u400_20
	goto	i1l11770
u400_20:
	line	203
	
i1l11768:	
;Car_demo.c: 202: {
;Car_demo.c: 203: Encoder_Counter++;
	movlw	low(01h)
	addwf	(_Encoder_Counter),f
	skipnc
	incf	(_Encoder_Counter+1),f
	movlw	high(01h)
	addwf	(_Encoder_Counter+1),f
	goto	i1l11770
	line	204
	
i1l8611:	
	line	205
	
i1l11770:	
;Car_demo.c: 204: }
;Car_demo.c: 205: INTF=0;
	bcf	(89/8),(89)&7
	line	206
;Car_demo.c: 206: }
	goto	i1l8607
	line	207
	
i1l8610:	
;Car_demo.c: 207: else if(RBIF == 1)
	btfss	(88/8),(88)&7
	goto	u401_21
	goto	u401_20
u401_21:
	goto	i1l8607
u401_20:
	line	209
	
i1l11772:	
;Car_demo.c: 208: {
;Car_demo.c: 209: RBIF=0;
	bcf	(88/8),(88)&7
	goto	i1l8607
	line	210
	
i1l8613:	
	goto	i1l8607
	line	211
	
i1l8612:	
	goto	i1l8607
	
i1l8609:	
	
i1l8607:	
;Car_demo.c: 210: }
;Car_demo.c: 211: TMR1IF=0;
	bcf	(96/8),(96)&7
	line	212
	
i1l8614:	
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
psect	text862,local,class=CODE,delta=2
global __ptext862
__ptext862:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
