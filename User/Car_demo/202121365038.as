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
	FNCALL	_main,_Motor_Speed_Set
	FNROOT	_main
	FNCALL	intlevel1,_Service
	global	intlevel1
	FNROOT	intlevel1
	global	_table
	global	_Kp
	global	_Speed_Velcolity
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
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

	file	"D:\6_pic_project\00_Design_Flow_Car\User\Car_demo\Car_demo.c"
	line	33

;initializer for _Speed_Velcolity
	retlw	01Eh
	global	_Counter_temp
	global	_Encoder_Counter
	global	_Kd
	global	_Timer0_Counter
	global	_dis
	global	_err_difference
	global	_last_err
	global	_turn_err
	global	_Bifurcate_Flag
	global	_Circle_Mode
	global	_IO_flag
	global	_Key_Val
	global	_Motor_Flag
	global	_Speed_left
	global	_Speed_measure1
	global	_Speed_measure2
	global	_Speed_right
	global	_Start_Find_flag
	global	_Stop_Flag
	global	_Trace_Byte
	global	_Turn_PWM
	global	_bluetooth
	global	_recv_data
	global	_x
	global	_y
	global	_RBIF_FLAG
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
_Counter_temp:
       ds      2

_Encoder_Counter:
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

_Circle_Mode:
       ds      1

_IO_flag:
       ds      1

_Key_Val:
       ds      1

_Motor_Flag:
       ds      1

_Speed_left:
       ds      1

_Speed_measure1:
       ds      1

_Speed_measure2:
       ds      1

_Speed_right:
       ds      1

_Start_Find_flag:
       ds      1

_Stop_Flag:
       ds      1

_Trace_Byte:
       ds      1

_Turn_PWM:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\csb.c"
	line	9
_table:
       ds      16

psect	dataBANK0
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\pid.c"
	line	14
_Kp:
       ds      3

psect	dataBANK0
	file	"D:\6_pic_project\00_Design_Flow_Car\User\Car_demo\Car_demo.c"
	line	33
_Speed_Velcolity:
       ds      1

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
	movlw	low((__pbssBANK0)+01Dh)
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
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
	movlw low(__pdataBANK0+20)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_Motor_GPIO_Init
?_Motor_GPIO_Init:	; 0 bytes @ 0x0
	global	?_Motor_CCP_PWM_Init
?_Motor_CCP_PWM_Init:	; 0 bytes @ 0x0
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
	global	Motor_Speed_Set@Speed1
Motor_Speed_Set@Speed1:	; 2 bytes @ 0x0
	global	Delay_ms@x
Delay_ms@x:	; 2 bytes @ 0x0
	ds	2
	global	??_Delay_ms
??_Delay_ms:	; 0 bytes @ 0x2
	global	Motor_Speed_Set@Speed2
Motor_Speed_Set@Speed2:	; 2 bytes @ 0x2
	ds	2
	global	??_Motor_Speed_Set
??_Motor_Speed_Set:	; 0 bytes @ 0x4
	global	??_main
??_main:	; 0 bytes @ 0x4
	ds	4
;;Data sizes: Strings 3, constant 0, data 20, bss 33, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      5      10
;; BANK0           80      8      57
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; S10473$_cp	PTR const unsigned char  size(1) Largest target is 0
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
;;   _main->_Motor_Speed_Set
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
;; (0) _main                                                 4     4      0     217
;;                                              4 BANK0      4     4      0
;;                    _Trace_GPIO_Init
;;                    _Usart_GPIO_Init
;;                         _Usart_Init
;;                    _Motor_GPIO_Init
;;                 _Motor_CCP_PWM_Init
;;                           _csb_init
;;                           _Delay_ms
;;                       _Encoder_Init
;;                    _Motor_Speed_Set
;; ---------------------------------------------------------------------------------
;; (1) _Delay_ms                                             2     0      2      31
;;                                              0 BANK0      2     0      2
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
;; (1) _Motor_Speed_Set                                      4     0      4     186
;;                                              0 BANK0      4     0      4
;; ---------------------------------------------------------------------------------
;; (1) _Motor_CCP_PWM_Init                                   0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _Motor_GPIO_Init                                      0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (2) _Service                                              5     5      0       0
;;                                              0 COMMON     5     5      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
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
;;   _Motor_Speed_Set
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
;;BANK1               50      0       0       7        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      44      12        0.0%
;;ABS                  0      0      43       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       1       2        0.0%
;;BANK0               50      8      39       5       71.3%
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
;;		line 107 in file "D:\6_pic_project\00_Design_Flow_Car\User\Car_demo\Car_demo.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Trace_GPIO_Init
;;		_Usart_GPIO_Init
;;		_Usart_Init
;;		_Motor_GPIO_Init
;;		_Motor_CCP_PWM_Init
;;		_csb_init
;;		_Delay_ms
;;		_Encoder_Init
;;		_Motor_Speed_Set
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\6_pic_project\00_Design_Flow_Car\User\Car_demo\Car_demo.c"
	line	107
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	109
	
l12059:	
;Car_demo.c: 109: TRISB1=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1073/8)^080h,(1073)&7
	line	110
;Car_demo.c: 110: TRISA0=0;
	bcf	(1064/8)^080h,(1064)&7
	line	111
;Car_demo.c: 111: TRISA1=0;
	bcf	(1065/8)^080h,(1065)&7
	line	112
	
l12061:	
;Car_demo.c: 112: Trace_GPIO_Init();
	fcall	_Trace_GPIO_Init
	line	114
;Car_demo.c: 114: Usart_GPIO_Init();
	fcall	_Usart_GPIO_Init
	line	115
	
l12063:	
;Car_demo.c: 115: Usart_Init();
	fcall	_Usart_Init
	line	117
	
l12065:	
;Car_demo.c: 117: Motor_GPIO_Init();
	fcall	_Motor_GPIO_Init
	line	118
;Car_demo.c: 118: Motor_CCP_PWM_Init();
	fcall	_Motor_CCP_PWM_Init
	line	119
;Car_demo.c: 119: csb_init();
	fcall	_csb_init
	line	120
;Car_demo.c: 120: Delay_ms(5000);
	movlw	low(01388h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Delay_ms)
	movlw	high(01388h)
	movwf	((?_Delay_ms))+1
	fcall	_Delay_ms
	line	121
;Car_demo.c: 121: Encoder_Init();
	fcall	_Encoder_Init
	goto	l12067
	line	123
;Car_demo.c: 123: while(1)
	
l8584:	
	line	125
	
l12067:	
;Car_demo.c: 124: {
;Car_demo.c: 125: Motor_Speed_Set(Speed_Velcolity,Speed_Velcolity);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Speed_Velcolity),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(?_Motor_Speed_Set)
	movf	1+(??_main+0)+0,w
	movwf	(?_Motor_Speed_Set+1)
	movf	(_Speed_Velcolity),w
	movwf	(??_main+2)+0
	clrf	(??_main+2)+0+1
	movf	0+(??_main+2)+0,w
	movwf	0+(?_Motor_Speed_Set)+02h
	movf	1+(??_main+2)+0,w
	movwf	1+(?_Motor_Speed_Set)+02h
	fcall	_Motor_Speed_Set
	goto	l12067
	line	228
	
l8585:	
	line	123
	goto	l12067
	
l8586:	
	line	230
	
l8587:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_Delay_ms
psect	text506,local,class=CODE,delta=2
global __ptext506
__ptext506:

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
psect	text506
	file	"D:\6_pic_project\00_Design_Flow_Car\System\Delay.c"
	line	4
	global	__size_of_Delay_ms
	__size_of_Delay_ms	equ	__end_of_Delay_ms-_Delay_ms
	
_Delay_ms:	
	opt	stack 6
; Regs used in _Delay_ms: [wreg]
	line	5
	
l12055:	
;Delay.c: 5: while(x--)
	goto	l12057
	
l5015:	
	line	7
;Delay.c: 6: {
;Delay.c: 7: _nop();
	nop
	goto	l12057
	line	8
	
l5014:	
	line	5
	
l12057:	
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
	goto	u4635
	movlw	low(0FFFFh)
	xorwf	((Delay_ms@x)),w
u4635:

	skipz
	goto	u4631
	goto	u4630
u4631:
	goto	l5015
u4630:
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
	global	_csb_init
psect	text507,local,class=CODE,delta=2
global __ptext507
__ptext507:

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
psect	text507
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\csb.c"
	line	22
	global	__size_of_csb_init
	__size_of_csb_init	equ	__end_of_csb_init-_csb_init
	
_csb_init:	
	opt	stack 6
; Regs used in _csb_init: [wreg+status,2]
	line	23
	
l12037:	
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
	
l12039:	
;csb.c: 30: ADCON1=7;TRISD=0;
	movlw	(07h)
	movwf	(159)^080h	;volatile
	
l12041:	
	clrf	(136)^080h	;volatile
	line	32
	
l12043:	
;csb.c: 32: RA0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7
	line	33
	
l12045:	
;csb.c: 33: RA1 = 1;
	bsf	(41/8),(41)&7
	line	35
	
l12047:	
;csb.c: 35: T1CON=0B00000000;
	clrf	(16)	;volatile
	line	36
	
l12049:	
;csb.c: 36: TMR1H=0x00;
	clrf	(15)	;volatile
	line	37
	
l12051:	
;csb.c: 37: TMR1L=0x00;
	clrf	(14)	;volatile
	line	38
	
l12053:	
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
psect	text508,local,class=CODE,delta=2
global __ptext508
__ptext508:

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
psect	text508
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\pid.c"
	line	21
	global	__size_of_Trace_GPIO_Init
	__size_of_Trace_GPIO_Init	equ	__end_of_Trace_GPIO_Init-_Trace_GPIO_Init
	
_Trace_GPIO_Init:	
	opt	stack 6
; Regs used in _Trace_GPIO_Init: []
	line	22
	
l12035:	
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
psect	text509,local,class=CODE,delta=2
global __ptext509
__ptext509:

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
psect	text509
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\Encoder.c"
	line	4
	global	__size_of_Encoder_Init
	__size_of_Encoder_Init	equ	__end_of_Encoder_Init-_Encoder_Init
	
_Encoder_Init:	
	opt	stack 6
; Regs used in _Encoder_Init: [wreg]
	line	5
	
l12027:	
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
	
l12029:	
;Encoder.c: 12: OPTION_REG=0B01000111;
	movlw	(047h)
	movwf	(129)^080h	;volatile
	line	15
	
l12031:	
;Encoder.c: 15: T0IE=1;
	bsf	(93/8),(93)&7
	line	16
	
l12033:	
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
psect	text510,local,class=CODE,delta=2
global __ptext510
__ptext510:

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
psect	text510
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\Usart.c"
	line	48
	global	__size_of_Usart_Init
	__size_of_Usart_Init	equ	__end_of_Usart_Init-_Usart_Init
	
_Usart_Init:	
	opt	stack 6
; Regs used in _Usart_Init: [wreg]
	line	49
	
l12019:	
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
	
l12021:	
;Usart.c: 52: GIE=1;
	bsf	(95/8),(95)&7
	line	53
	
l12023:	
;Usart.c: 53: PEIE=1;
	bsf	(94/8),(94)&7
	line	54
	
l12025:	
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
psect	text511,local,class=CODE,delta=2
global __ptext511
__ptext511:

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
psect	text511
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\Usart.c"
	line	37
	global	__size_of_Usart_GPIO_Init
	__size_of_Usart_GPIO_Init	equ	__end_of_Usart_GPIO_Init-_Usart_GPIO_Init
	
_Usart_GPIO_Init:	
	opt	stack 6
; Regs used in _Usart_GPIO_Init: []
	line	38
	
l12017:	
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
	global	_Motor_Speed_Set
psect	text512,local,class=CODE,delta=2
global __ptext512
__ptext512:

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
psect	text512
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\Motor.c"
	line	60
	global	__size_of_Motor_Speed_Set
	__size_of_Motor_Speed_Set	equ	__end_of_Motor_Speed_Set-_Motor_Speed_Set
	
_Motor_Speed_Set:	
	opt	stack 6
; Regs used in _Motor_Speed_Set: [wreg+status,2+status,0+btemp+1]
	line	61
	
l12001:	
;Motor.c: 61: if(Speed1 > 0 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Motor_Speed_Set@Speed1+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4615
	movlw	low(01h)
	subwf	(Motor_Speed_Set@Speed1),w
u4615:

	skipc
	goto	u4611
	goto	u4610
u4611:
	goto	l3608
u4610:
	line	63
	
l12003:	
;Motor.c: 62: {
;Motor.c: 63: RB4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(52/8),(52)&7
	line	64
;Motor.c: 64: RB5 = 0;
	bcf	(53/8),(53)&7
	line	65
	
l12005:	
;Motor.c: 65: CCPR1L=(unsigned char)Speed1;
	movf	(Motor_Speed_Set@Speed1),w
	movwf	(21)	;volatile
	line	66
;Motor.c: 66: }
	goto	l12009
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
	
l12007:	
;Motor.c: 71: CCPR1L=(unsigned char)(-Speed1);
	decf	(Motor_Speed_Set@Speed1),w
	xorlw	0ffh
	movwf	(21)	;volatile
	goto	l12009
	line	72
	
l3609:	
	line	74
	
l12009:	
;Motor.c: 72: }
;Motor.c: 74: if(Speed2 >0 )
	movf	(Motor_Speed_Set@Speed2+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4625
	movlw	low(01h)
	subwf	(Motor_Speed_Set@Speed2),w
u4625:

	skipc
	goto	u4621
	goto	u4620
u4621:
	goto	l3610
u4620:
	line	76
	
l12011:	
;Motor.c: 75: {
;Motor.c: 76: RB6 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(54/8),(54)&7
	line	77
;Motor.c: 77: RB7 = 0;
	bcf	(55/8),(55)&7
	line	78
	
l12013:	
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
	
l12015:	
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
psect	text513,local,class=CODE,delta=2
global __ptext513
__ptext513:

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
psect	text513
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\Motor.c"
	line	31
	global	__size_of_Motor_CCP_PWM_Init
	__size_of_Motor_CCP_PWM_Init	equ	__end_of_Motor_CCP_PWM_Init-_Motor_CCP_PWM_Init
	
_Motor_CCP_PWM_Init:	
	opt	stack 6
; Regs used in _Motor_CCP_PWM_Init: [wreg+status,2]
	line	33
	
l11993:	
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
	
l11995:	
;Motor.c: 42: T2CON=0;
	clrf	(18)	;volatile
	line	43
	
l11997:	
;Motor.c: 43: TMR2=0;
	clrf	(17)	;volatile
	line	44
	
l11999:	
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
psect	text514,local,class=CODE,delta=2
global __ptext514
__ptext514:

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
psect	text514
	file	"D:\6_pic_project\00_Design_Flow_Car\Driver\Motor.c"
	line	21
	global	__size_of_Motor_GPIO_Init
	__size_of_Motor_GPIO_Init	equ	__end_of_Motor_GPIO_Init-_Motor_GPIO_Init
	
_Motor_GPIO_Init:	
	opt	stack 6
; Regs used in _Motor_GPIO_Init: []
	line	22
	
l11991:	
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
psect	text515,local,class=CODE,delta=2
global __ptext515
__ptext515:

;; *************** function _Service *****************
;; Defined at:
;;		line 57 in file "D:\6_pic_project\00_Design_Flow_Car\User\Car_demo\Car_demo.c"
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
psect	text515
	file	"D:\6_pic_project\00_Design_Flow_Car\User\Car_demo\Car_demo.c"
	line	57
	global	__size_of_Service
	__size_of_Service	equ	__end_of_Service-_Service
	
_Service:	
	opt	stack 6
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
psect	text515
	line	59
	
i1l11635:	
;Car_demo.c: 59: if(RCIF==1)
	btfss	(101/8),(101)&7
	goto	u372_21
	goto	u372_20
u372_21:
	goto	i1l8559
u372_20:
	line	61
	
i1l11637:	
;Car_demo.c: 60: {
;Car_demo.c: 61: bluetooth=RCREG;
	movf	(26),w	;volatile
	movwf	(??_Service+0)+0
	movf	(??_Service+0)+0,w
	movwf	(_bluetooth)
	line	62
;Car_demo.c: 62: if(bluetooth == 1){Speed_Velcolity=10;}
	movf	(_bluetooth),w
	xorlw	01h
	skipz
	goto	u373_21
	goto	u373_20
u373_21:
	goto	i1l8560
u373_20:
	
i1l11639:	
	movlw	(0Ah)
	movwf	(??_Service+0)+0
	movf	(??_Service+0)+0,w
	movwf	(_Speed_Velcolity)
	
i1l8560:	
	line	63
;Car_demo.c: 63: if(bluetooth == 2){Speed_Velcolity=40;}
	movf	(_bluetooth),w
	xorlw	02h
	skipz
	goto	u374_21
	goto	u374_20
u374_21:
	goto	i1l8561
u374_20:
	
i1l11641:	
	movlw	(028h)
	movwf	(??_Service+0)+0
	movf	(??_Service+0)+0,w
	movwf	(_Speed_Velcolity)
	
i1l8561:	
	line	64
;Car_demo.c: 64: if(bluetooth == 3){Speed_Velcolity=70;}
	movf	(_bluetooth),w
	xorlw	03h
	skipz
	goto	u375_21
	goto	u375_20
u375_21:
	goto	i1l8562
u375_20:
	
i1l11643:	
	movlw	(046h)
	movwf	(??_Service+0)+0
	movf	(??_Service+0)+0,w
	movwf	(_Speed_Velcolity)
	
i1l8562:	
	line	65
;Car_demo.c: 65: if(bluetooth == 4){Speed_Velcolity=100;}
	movf	(_bluetooth),w
	xorlw	04h
	skipz
	goto	u376_21
	goto	u376_20
u376_21:
	goto	i1l11647
u376_20:
	
i1l11645:	
	movlw	(064h)
	movwf	(??_Service+0)+0
	movf	(??_Service+0)+0,w
	movwf	(_Speed_Velcolity)
	goto	i1l11647
	
i1l8563:	
	line	66
	
i1l11647:	
;Car_demo.c: 66: RCIF=0;
	bcf	(101/8),(101)&7
	line	67
;Car_demo.c: 67: }
	goto	i1l8564
	line	68
	
i1l8559:	
;Car_demo.c: 68: else if(T0IF==1)
	btfss	(90/8),(90)&7
	goto	u377_21
	goto	u377_20
u377_21:
	goto	i1l8565
u377_20:
	line	70
	
i1l11649:	
;Car_demo.c: 69: {
;Car_demo.c: 70: TMR0=60;
	movlw	(03Ch)
	movwf	(1)	;volatile
	line	71
	
i1l11651:	
;Car_demo.c: 71: T0IF=0;
	bcf	(90/8),(90)&7
	line	72
;Car_demo.c: 72: }
	goto	i1l8564
	line	73
	
i1l8565:	
;Car_demo.c: 73: else if(INTF==1)
	btfss	(89/8),(89)&7
	goto	u378_21
	goto	u378_20
u378_21:
	goto	i1l8567
u378_20:
	line	75
	
i1l11653:	
;Car_demo.c: 74: {
;Car_demo.c: 75: if(Start_Find_flag)
	movf	(_Start_Find_flag),w
	skipz
	goto	u379_20
	goto	i1l11657
u379_20:
	line	77
	
i1l11655:	
;Car_demo.c: 76: {
;Car_demo.c: 77: Encoder_Counter++;
	movlw	low(01h)
	addwf	(_Encoder_Counter),f
	skipnc
	incf	(_Encoder_Counter+1),f
	movlw	high(01h)
	addwf	(_Encoder_Counter+1),f
	goto	i1l11657
	line	78
	
i1l8568:	
	line	79
	
i1l11657:	
;Car_demo.c: 78: }
;Car_demo.c: 79: INTF=0;
	bcf	(89/8),(89)&7
	line	80
;Car_demo.c: 80: }
	goto	i1l8564
	line	81
	
i1l8567:	
;Car_demo.c: 81: else if(RBIF == 1)
	btfss	(88/8),(88)&7
	goto	u380_21
	goto	u380_20
u380_21:
	goto	i1l8564
u380_20:
	line	83
	
i1l11659:	
;Car_demo.c: 82: {
;Car_demo.c: 83: RBIF=0;
	bcf	(88/8),(88)&7
	goto	i1l8564
	line	84
	
i1l8570:	
	goto	i1l8564
	line	85
	
i1l8569:	
	goto	i1l8564
	
i1l8566:	
	
i1l8564:	
;Car_demo.c: 84: }
;Car_demo.c: 85: TMR1IF=0;
	bcf	(96/8),(96)&7
	line	86
	
i1l8571:	
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
psect	text516,local,class=CODE,delta=2
global __ptext516
__ptext516:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
