
	; Microchip MPLAB XC8 C Compiler V1.44
	; Copyright (C) 1984-2017 HI-TECH Software

	; Auto-generated runtime startup code for final link stage.

	;
	; Compiler options:
	;
	; --chip=18F25K80 main.c can.c gpio.c -I../includes/
	;


	processor	18F25K80

	GLOBAL	_main,start
	FNROOT	_main

	pic18cxx	equ	1

	psect	config,class=CONFIG,delta=1,noexec
	psect	idloc,class=IDLOC,delta=1,noexec
	psect	const,class=CONST,delta=1,reloc=2,noexec
	psect	smallconst,class=SMALLCONST,delta=1,reloc=2,noexec
	psect	mediumconst,class=MEDIUMCONST,delta=1,reloc=2,noexec
	psect	rbss,class=COMRAM,space=1,noexec
	psect	bss,class=RAM,space=1,noexec
	psect	rdata,class=COMRAM,space=1,noexec
	psect	irdata,class=CODE,space=0,reloc=2,noexec
	psect	bss,class=RAM,space=1,noexec
	psect	data,class=RAM,space=1,noexec
	psect	idata,class=CODE,space=0,reloc=2,noexec
	psect	nvrram,class=COMRAM,space=1,noexec
	psect	nvbit,class=COMRAM,bit,space=1,noexec
	psect	temp,ovrld,class=COMRAM,space=1,noexec
	psect	struct,ovrld,class=COMRAM,space=1,noexec
	psect	rbit,class=COMRAM,bit,space=1,noexec
	psect	bigbss,class=BIGRAM,space=1,noexec
	psect	bigdata,class=BIGRAM,space=1,noexec
	psect	ibigdata,class=CODE,space=0,reloc=2,noexec
	psect	farbss,class=FARRAM,space=0,reloc=2,delta=1,noexec
	psect	nvFARRAM,class=FARRAM,space=0,reloc=2,delta=1,noexec
	psect	fardata,class=FARRAM,space=0,reloc=2,delta=1,noexec
	psect	ifardata,class=CODE,space=0,reloc=2,delta=1,noexec

	psect	reset_vec,class=CODE,delta=1,reloc=2
	psect	powerup,class=CODE,delta=1,reloc=2
	psect	init,class=CODE,delta=1,reloc=2
	psect	text,class=CODE,delta=1,reloc=2
GLOBAL	intlevel0,intlevel1,intlevel2
intlevel0:
intlevel1:
intlevel2:
GLOBAL	intlevel3
intlevel3:
	psect	clrtext,class=CODE,delta=1,reloc=2

	psect	intcode,class=CODE,delta=1,reloc=2
	psect	intcode_body,class=CODE,delta=1,reloc=2
	psect	intcodelo,class=CODE,delta=1,reloc=2
	psect	intret,class=CODE,delta=1,reloc=2
	psect	intentry,class=CODE,delta=1,reloc=2
	psect	intsave_regs,class=BIGRAM,space=1

	psect	eeprom_data,class=EEDATA,delta=1,noexec
	psect	smallconst
	GLOBAL	__smallconst
__smallconst:
	psect	mediumconst
	GLOBAL	__mediumconst
__mediumconst:
wreg	EQU	0FE8h
fsr0l	EQU	0FE9h
fsr0h	EQU	0FEAh
fsr1l	EQU	0FE1h
fsr1h	EQU	0FE2h
fsr2l	EQU	0FD9h
fsr2h	EQU	0FDAh
postinc0	EQU	0FEEh
postdec0	EQU	0FEDh
postinc1	EQU	0FE6h
postdec1	EQU	0FE5h
postinc2	EQU	0FDEh
postdec2	EQU	0FDDh
tblptrl	EQU	0FF6h
tblptrh	EQU	0FF7h
tblptru	EQU	0FF8h
tablat		EQU	0FF5h

	PSECT	ramtop,class=RAM,noexec
	GLOBAL	__S1			; top of RAM usage
	GLOBAL	__ramtop
	GLOBAL	__LRAM,__HRAM
__ramtop:

	psect	reset_vec
reset_vec:
	; No powerup routine
	; No interrupt routine
	GLOBAL __accesstop
__accesstop EQU 96

;Initialize the stack pointer (FSR1)
	global stacklo, stackhi
	stacklo	equ	060h
	stackhi	equ	0E40h


	psect	stack,class=STACK,space=2,noexec
	global ___sp,___inthi_sp,___intlo_sp
___sp:
___inthi_sp:
___intlo_sp:



	psect	init
start:
	global start_initialization
	goto start_initialization	;jump to C runtime clear & initialization

; Config register CONFIG1L @ 0x300000
;	VREG Sleep Enable bit
;	RETEN = OFF, Ultra low-power regulator is Disabled (Controlled by REGSLP bit)
;	LF-INTOSC Low-power Enable bit
;	INTOSCSEL = HIGH, LF-INTOSC in High-power mode during Sleep
;	SOSC Power Selection and mode Configuration bits
;	SOSCSEL = HIGH, High Power SOSC circuit selected
;	Extended Instruction Set
;	XINST = OFF, Disabled

	psect	config,class=CONFIG,delta=1,noexec
		org 0x0
		db 0x1D

; Config register CONFIG1H @ 0x300001
;	Oscillator
;	FOSC = INTIO2, Internal RC oscillator
;	PLL x4 Enable bit
;	PLLCFG = ON, Enabled
;	Fail-Safe Clock Monitor
;	FCMEN = OFF, Disabled
;	Internal External Oscillator Switch Over Mode
;	IESO = OFF, Disabled

	psect	config,class=CONFIG,delta=1,noexec
		org 0x1
		db 0x18

; Config register CONFIG2L @ 0x300002
;	Power Up Timer
;	PWRTEN = OFF, Disabled
;	Brown Out Detect
;	BOREN = SBORDIS, Enabled in hardware, SBOREN disabled
;	Brown-out Reset Voltage bits
;	BORV = 3, 1.8V
;	BORMV Power level
;	BORPWR = ZPBORMV, ZPBORMV instead of BORMV is selected

	psect	config,class=CONFIG,delta=1,noexec
		org 0x2
		db 0x7F

; Config register CONFIG2H @ 0x300003
;	Watchdog Timer
;	WDTEN = OFF, WDT disabled in hardware; SWDTEN bit disabled
;	Watchdog Postscaler
;	WDTPS = 1048576, 1:1048576

	psect	config,class=CONFIG,delta=1,noexec
		org 0x3
		db 0x7C

; Padding undefined space
	psect	config,class=CONFIG,delta=1,noexec
		org 0x4
		db 0xFF

; Config register CONFIG3H @ 0x300005
;	ECAN Mux bit
;	CANMX = PORTB, ECAN TX and RX pins are located on RB2 and RB3, respectively
;	MSSP address masking
;	MSSPMSK = MSK7, 7 Bit address masking mode
;	Master Clear Enable
;	MCLRE = ON, MCLR Enabled, RE3 Disabled

	psect	config,class=CONFIG,delta=1,noexec
		org 0x5
		db 0x89

; Config register CONFIG4L @ 0x300006
;	Stack Overflow Reset
;	STVREN = ON, Enabled
;	Boot Block Size
;	BBSIZ = BB2K, 2K word Boot Block size

	psect	config,class=CONFIG,delta=1,noexec
		org 0x6
		db 0x91

; Padding undefined space
	psect	config,class=CONFIG,delta=1,noexec
		org 0x7
		db 0xFF

; Config register CONFIG5L @ 0x300008
;	Code Protect 00800-01FFF
;	CP0 = OFF, Disabled
;	Code Protect 02000-03FFF
;	CP1 = OFF, Disabled
;	Code Protect 04000-05FFF
;	CP2 = OFF, Disabled
;	Code Protect 06000-07FFF
;	CP3 = OFF, Disabled

	psect	config,class=CONFIG,delta=1,noexec
		org 0x8
		db 0xF

; Config register CONFIG5H @ 0x300009
;	Code Protect Boot
;	CPB = OFF, Disabled
;	Data EE Read Protect
;	CPD = OFF, Disabled

	psect	config,class=CONFIG,delta=1,noexec
		org 0x9
		db 0xC0

; Config register CONFIG6L @ 0x30000A
;	Table Write Protect 00800-01FFF
;	WRT0 = OFF, Disabled
;	Table Write Protect 02000-03FFF
;	WRT1 = OFF, Disabled
;	Table Write Protect 04000-05FFF
;	WRT2 = OFF, Disabled
;	Table Write Protect 06000-07FFF
;	WRT3 = OFF, Disabled

	psect	config,class=CONFIG,delta=1,noexec
		org 0xA
		db 0xF

; Config register CONFIG6H @ 0x30000B
;	Config. Write Protect
;	WRTC = OFF, Disabled
;	Table Write Protect Boot
;	WRTB = OFF, Disabled
;	Data EE Write Protect
;	WRTD = OFF, Disabled

	psect	config,class=CONFIG,delta=1,noexec
		org 0xB
		db 0xE0

; Config register CONFIG7L @ 0x30000C
;	Table Read Protect 00800-01FFF
;	EBTR0 = OFF, Disabled
;	Table Read Protect 02000-03FFF
;	EBTR1 = OFF, Disabled
;	Table Read Protect 04000-05FFF
;	EBTR2 = OFF, Disabled
;	Table Read Protect 06000-07FFF
;	EBTR3 = OFF, Disabled

	psect	config,class=CONFIG,delta=1,noexec
		org 0xC
		db 0xF

; Config register CONFIG7H @ 0x30000D
;	Table Read Protect Boot
;	EBTRB = OFF, Disabled

	psect	config,class=CONFIG,delta=1,noexec
		org 0xD
		db 0x40


psect comram,class=COMRAM,space=1
psect abs1,class=ABS1,space=1
psect bigram,class=BIGRAM,space=1
psect ram,class=RAM,space=1
psect bank0,class=BANK0,space=1
psect bank1,class=BANK1,space=1
psect bank2,class=BANK2,space=1
psect bank3,class=BANK3,space=1
psect bank4,class=BANK4,space=1
psect bank5,class=BANK5,space=1
psect bank6,class=BANK6,space=1
psect bank7,class=BANK7,space=1
psect bank8,class=BANK8,space=1
psect bank9,class=BANK9,space=1
psect bank10,class=BANK10,space=1
psect bank11,class=BANK11,space=1
psect bank12,class=BANK12,space=1
psect bank13,class=BANK13,space=1
psect bank14,class=BANK14,space=1
psect sfr,class=SFR,space=1


	end	start
