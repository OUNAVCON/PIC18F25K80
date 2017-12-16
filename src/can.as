opt subtitle "Microchip Technology Omniscient Code Generator v1.44 (Free mode) build 201709140600"

opt pagewidth 120

	opt lm

	processor	18F25K80
opt include "/opt/microchip/xc8/v1.44/include/18f25k80.cgen.inc"
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 52 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXERRCNT equ 0E41h ;# 
# 122 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TXERRCNT equ 0E42h ;# 
# 192 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
BRGCON1 equ 0E43h ;# 
# 268 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
BRGCON2 equ 0E44h ;# 
# 353 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
BRGCON3 equ 0E45h ;# 
# 406 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXFCON0 equ 0E46h ;# 
# 468 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXFCON1 equ 0E47h ;# 
# 530 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF6SIDH equ 0E48h ;# 
# 650 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF6SIDL equ 0E49h ;# 
# 757 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF6EIDH equ 0E4Ah ;# 
# 877 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF6EIDL equ 0E4Bh ;# 
# 997 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF7SIDH equ 0E4Ch ;# 
# 1117 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF7SIDL equ 0E4Dh ;# 
# 1224 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF7EIDH equ 0E4Eh ;# 
# 1344 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF7EIDL equ 0E4Fh ;# 
# 1464 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF8SIDH equ 0E50h ;# 
# 1584 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF8SIDL equ 0E51h ;# 
# 1691 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF8EIDH equ 0E52h ;# 
# 1811 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF8EIDL equ 0E53h ;# 
# 1931 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF9SIDH equ 0E54h ;# 
# 2051 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF9SIDL equ 0E55h ;# 
# 2158 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF9EIDH equ 0E56h ;# 
# 2278 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF9EIDL equ 0E57h ;# 
# 2398 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF10SIDH equ 0E58h ;# 
# 2518 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF10SIDL equ 0E59h ;# 
# 2625 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF10EIDH equ 0E5Ah ;# 
# 2745 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF10EIDL equ 0E5Bh ;# 
# 2865 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF11SIDH equ 0E5Ch ;# 
# 2985 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF11SIDL equ 0E5Dh ;# 
# 3092 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF11EIDH equ 0E5Eh ;# 
# 3212 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF11EIDL equ 0E5Fh ;# 
# 3332 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF12SIDH equ 0E60h ;# 
# 3452 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF12SIDL equ 0E61h ;# 
# 3559 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF12EIDH equ 0E62h ;# 
# 3679 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF12EIDL equ 0E63h ;# 
# 3799 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF13SIDH equ 0E64h ;# 
# 3919 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF13SIDL equ 0E65h ;# 
# 4026 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF13EIDH equ 0E66h ;# 
# 4146 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF13EIDL equ 0E67h ;# 
# 4266 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF14SIDH equ 0E68h ;# 
# 4386 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF14SIDL equ 0E69h ;# 
# 4493 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF14EIDH equ 0E6Ah ;# 
# 4613 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF14EIDL equ 0E6Bh ;# 
# 4733 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF15SIDH equ 0E6Ch ;# 
# 4853 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF15SIDL equ 0E6Dh ;# 
# 4960 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF15EIDH equ 0E6Eh ;# 
# 5080 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF15EIDL equ 0E6Fh ;# 
# 5200 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
SDFLC equ 0E70h ;# 
# 5252 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXFBCON0 equ 0E71h ;# 
# 5336 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXFBCON1 equ 0E72h ;# 
# 5420 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXFBCON2 equ 0E73h ;# 
# 5504 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXFBCON3 equ 0E74h ;# 
# 5588 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXFBCON4 equ 0E75h ;# 
# 5672 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXFBCON5 equ 0E76h ;# 
# 5756 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXFBCON6 equ 0E77h ;# 
# 5840 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXFBCON7 equ 0E78h ;# 
# 5924 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
MSEL0 equ 0E79h ;# 
# 6012 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
MSEL1 equ 0E7Ah ;# 
# 6100 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
MSEL2 equ 0E7Bh ;# 
# 6188 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
MSEL3 equ 0E7Ch ;# 
# 6276 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
BSEL0 equ 0E7Dh ;# 
# 6327 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
BIE0 equ 0E7Eh ;# 
# 6403 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TXBIE equ 0E7Fh ;# 
# 6457 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B0CON equ 0E80h ;# 
# 6719 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B0SIDH equ 0E81h ;# 
# 6839 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B0SIDL equ 0E82h ;# 
# 6956 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B0EIDH equ 0E83h ;# 
# 7076 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B0EIDL equ 0E84h ;# 
# 7196 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B0DLC equ 0E85h ;# 
# 7325 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B0D0 equ 0E86h ;# 
# 7395 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B0D1 equ 0E87h ;# 
# 7465 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B0D2 equ 0E88h ;# 
# 7535 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B0D3 equ 0E89h ;# 
# 7605 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B0D4 equ 0E8Ah ;# 
# 7675 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B0D5 equ 0E8Bh ;# 
# 7745 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B0D6 equ 0E8Ch ;# 
# 7815 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B0D7 equ 0E8Dh ;# 
# 7885 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CANSTAT_RO9 equ 0E8Eh ;# 
# 7996 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CANCON_RO9 equ 0E8Fh ;# 
# 8088 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B1CON equ 0E90h ;# 
# 8350 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B1SIDH equ 0E91h ;# 
# 8470 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B1SIDL equ 0E92h ;# 
# 8587 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B1EIDH equ 0E93h ;# 
# 8707 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B1EIDL equ 0E94h ;# 
# 8827 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B1DLC equ 0E95h ;# 
# 8956 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B1D0 equ 0E96h ;# 
# 9026 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B1D1 equ 0E97h ;# 
# 9096 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B1D2 equ 0E98h ;# 
# 9166 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B1D3 equ 0E99h ;# 
# 9236 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B1D4 equ 0E9Ah ;# 
# 9306 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B1D5 equ 0E9Bh ;# 
# 9376 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B1D6 equ 0E9Ch ;# 
# 9446 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B1D7 equ 0E9Dh ;# 
# 9516 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CANSTAT_RO8 equ 0E9Eh ;# 
# 9627 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CANCON_RO8 equ 0E9Fh ;# 
# 9719 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B2CON equ 0EA0h ;# 
# 9981 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B2SIDH equ 0EA1h ;# 
# 10101 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B2SIDL equ 0EA2h ;# 
# 10227 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B2EIDH equ 0EA3h ;# 
# 10347 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B2EIDL equ 0EA4h ;# 
# 10467 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B2DLC equ 0EA5h ;# 
# 10596 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B2D0 equ 0EA6h ;# 
# 10666 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B2D1 equ 0EA7h ;# 
# 10736 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B2D2 equ 0EA8h ;# 
# 10806 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B2D3 equ 0EA9h ;# 
# 10876 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B2D4 equ 0EAAh ;# 
# 10946 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B2D5 equ 0EABh ;# 
# 11016 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B2D6 equ 0EACh ;# 
# 11086 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B2D7 equ 0EADh ;# 
# 11156 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CANSTAT_RO7 equ 0EAEh ;# 
# 11267 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CANCON_RO7 equ 0EAFh ;# 
# 11359 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B3CON equ 0EB0h ;# 
# 11621 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B3SIDH equ 0EB1h ;# 
# 11741 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B3SIDL equ 0EB2h ;# 
# 11867 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B3EIDH equ 0EB3h ;# 
# 11987 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B3EIDL equ 0EB4h ;# 
# 12107 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B3DLC equ 0EB5h ;# 
# 12236 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B3D0 equ 0EB6h ;# 
# 12306 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B3D1 equ 0EB7h ;# 
# 12376 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B3D2 equ 0EB8h ;# 
# 12446 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B3D3 equ 0EB9h ;# 
# 12516 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B3D4 equ 0EBAh ;# 
# 12586 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B3D5 equ 0EBBh ;# 
# 12656 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B3D6 equ 0EBCh ;# 
# 12726 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B3D7 equ 0EBDh ;# 
# 12796 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CANSTAT_RO6 equ 0EBEh ;# 
# 12907 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CANCON_RO6 equ 0EBFh ;# 
# 12999 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B4CON equ 0EC0h ;# 
# 13261 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B4SIDH equ 0EC1h ;# 
# 13381 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B4SIDL equ 0EC2h ;# 
# 13507 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B4EIDH equ 0EC3h ;# 
# 13627 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B4EIDL equ 0EC4h ;# 
# 13747 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B4DLC equ 0EC5h ;# 
# 13876 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B4D0 equ 0EC6h ;# 
# 13946 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B4D1 equ 0EC7h ;# 
# 14016 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B4D2 equ 0EC8h ;# 
# 14086 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B4D3 equ 0EC9h ;# 
# 14156 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B4D4 equ 0ECAh ;# 
# 14226 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B4D5 equ 0ECBh ;# 
# 14296 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B4D6 equ 0ECCh ;# 
# 14366 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B4D7 equ 0ECDh ;# 
# 14436 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CANSTAT_RO5 equ 0ECEh ;# 
# 14547 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CANCON_RO5 equ 0ECFh ;# 
# 14639 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B5CON equ 0ED0h ;# 
# 14901 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B5SIDH equ 0ED1h ;# 
# 15021 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B5SIDL equ 0ED2h ;# 
# 15147 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B5EIDH equ 0ED3h ;# 
# 15267 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B5EIDL equ 0ED4h ;# 
# 15387 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B5DLC equ 0ED5h ;# 
# 15516 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B5D0 equ 0ED6h ;# 
# 15586 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B5D1 equ 0ED7h ;# 
# 15656 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B5D2 equ 0ED8h ;# 
# 15726 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B5D3 equ 0ED9h ;# 
# 15796 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B5D4 equ 0EDAh ;# 
# 15866 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B5D5 equ 0EDBh ;# 
# 15936 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B5D6 equ 0EDCh ;# 
# 16006 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
B5D7 equ 0EDDh ;# 
# 16076 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CANSTAT_RO4 equ 0EDEh ;# 
# 16187 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CANCON_RO4 equ 0EDFh ;# 
# 16279 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF0SIDH equ 0EE0h ;# 
# 16399 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF0SIDL equ 0EE1h ;# 
# 16506 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF0EIDH equ 0EE2h ;# 
# 16626 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF0EIDL equ 0EE3h ;# 
# 16746 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF1SIDH equ 0EE4h ;# 
# 16866 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF1SIDL equ 0EE5h ;# 
# 16973 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF1EIDH equ 0EE6h ;# 
# 17093 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF1EIDL equ 0EE7h ;# 
# 17213 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF2SIDH equ 0EE8h ;# 
# 17333 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF2SIDL equ 0EE9h ;# 
# 17440 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF2EIDH equ 0EEAh ;# 
# 17560 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF2EIDL equ 0EEBh ;# 
# 17680 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF3SIDH equ 0EECh ;# 
# 17800 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF3SIDL equ 0EEDh ;# 
# 17907 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF3EIDH equ 0EEEh ;# 
# 18027 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF3EIDL equ 0EEFh ;# 
# 18147 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF4SIDH equ 0EF0h ;# 
# 18267 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF4SIDL equ 0EF1h ;# 
# 18374 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF4EIDH equ 0EF2h ;# 
# 18494 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF4EIDL equ 0EF3h ;# 
# 18614 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF5SIDH equ 0EF4h ;# 
# 18734 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF5SIDL equ 0EF5h ;# 
# 18841 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF5EIDH equ 0EF6h ;# 
# 18961 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXF5EIDL equ 0EF7h ;# 
# 19081 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXM0SIDH equ 0EF8h ;# 
# 19201 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXM0SIDL equ 0EF9h ;# 
# 19308 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXM0EIDH equ 0EFAh ;# 
# 19428 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXM0EIDL equ 0EFBh ;# 
# 19548 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXM1SIDH equ 0EFCh ;# 
# 19668 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXM1SIDL equ 0EFDh ;# 
# 19775 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXM1EIDH equ 0EFEh ;# 
# 19895 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXM1EIDL equ 0EFFh ;# 
# 20015 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TXB2CON equ 0F00h ;# 
# 20125 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TXB2SIDH equ 0F01h ;# 
# 20245 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TXB2SIDL equ 0F02h ;# 
# 20357 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TXB2EIDH equ 0F03h ;# 
# 20477 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TXB2EIDL equ 0F04h ;# 
# 20597 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TXB2DLC equ 0F05h ;# 
# 20683 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TXB2D0 equ 0F06h ;# 
# 20753 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TXB2D1 equ 0F07h ;# 
# 20823 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TXB2D2 equ 0F08h ;# 
# 20893 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TXB2D3 equ 0F09h ;# 
# 20963 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TXB2D4 equ 0F0Ah ;# 
# 21033 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TXB2D5 equ 0F0Bh ;# 
# 21103 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TXB2D6 equ 0F0Ch ;# 
# 21173 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TXB2D7 equ 0F0Dh ;# 
# 21243 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CANSTAT_RO3 equ 0F0Eh ;# 
# 21354 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CANCON_RO3 equ 0F0Fh ;# 
# 21446 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TXB1CON equ 0F10h ;# 
# 21556 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TXB1SIDH equ 0F11h ;# 
# 21676 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TXB1SIDL equ 0F12h ;# 
# 21788 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TXB1EIDH equ 0F13h ;# 
# 21908 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TXB1EIDL equ 0F14h ;# 
# 22028 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TXB1DLC equ 0F15h ;# 
# 22114 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TXB1D0 equ 0F16h ;# 
# 22184 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TXB1D1 equ 0F17h ;# 
# 22254 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TXB1D2 equ 0F18h ;# 
# 22324 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TXB1D3 equ 0F19h ;# 
# 22394 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TXB1D4 equ 0F1Ah ;# 
# 22464 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TXB1D5 equ 0F1Bh ;# 
# 22534 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TXB1D6 equ 0F1Ch ;# 
# 22604 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TXB1D7 equ 0F1Dh ;# 
# 22674 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CANSTAT_RO2 equ 0F1Eh ;# 
# 22785 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CANCON_RO2 equ 0F1Fh ;# 
# 22877 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TXB0CON equ 0F20h ;# 
# 22987 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TXB0SIDH equ 0F21h ;# 
# 23107 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TXB0SIDL equ 0F22h ;# 
# 23219 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TXB0EIDH equ 0F23h ;# 
# 23339 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TXB0EIDL equ 0F24h ;# 
# 23459 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TXB0DLC equ 0F25h ;# 
# 23545 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TXB0D0 equ 0F26h ;# 
# 23615 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TXB0D1 equ 0F27h ;# 
# 23685 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TXB0D2 equ 0F28h ;# 
# 23755 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TXB0D3 equ 0F29h ;# 
# 23825 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TXB0D4 equ 0F2Ah ;# 
# 23895 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TXB0D5 equ 0F2Bh ;# 
# 23965 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TXB0D6 equ 0F2Ch ;# 
# 24035 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TXB0D7 equ 0F2Dh ;# 
# 24105 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CANSTAT_RO1 equ 0F2Eh ;# 
# 24216 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CANCON_RO1 equ 0F2Fh ;# 
# 24308 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXB1CON equ 0F30h ;# 
# 24468 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXB1SIDH equ 0F31h ;# 
# 24588 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXB1SIDL equ 0F32h ;# 
# 24705 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXB1EIDH equ 0F33h ;# 
# 24825 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXB1EIDL equ 0F34h ;# 
# 24945 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXB1DLC equ 0F35h ;# 
# 25059 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXB1D0 equ 0F36h ;# 
# 25129 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXB1D1 equ 0F37h ;# 
# 25199 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXB1D2 equ 0F38h ;# 
# 25269 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXB1D3 equ 0F39h ;# 
# 25339 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXB1D4 equ 0F3Ah ;# 
# 25409 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXB1D5 equ 0F3Bh ;# 
# 25479 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXB1D6 equ 0F3Ch ;# 
# 25549 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXB1D7 equ 0F3Dh ;# 
# 25619 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CANSTAT_RO0 equ 0F3Eh ;# 
# 25730 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CANCON_RO0 equ 0F3Fh ;# 
# 25822 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CCP5CON equ 0F47h ;# 
# 25901 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CCPR5 equ 0F48h ;# 
# 25908 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CCPR5L equ 0F48h ;# 
# 25928 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CCPR5H equ 0F49h ;# 
# 25948 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CCP4CON equ 0F4Ah ;# 
# 26027 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CCPR4 equ 0F4Bh ;# 
# 26034 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CCPR4L equ 0F4Bh ;# 
# 26054 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CCPR4H equ 0F4Ch ;# 
# 26074 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CCP3CON equ 0F4Dh ;# 
# 26153 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CCPR3 equ 0F4Eh ;# 
# 26160 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CCPR3L equ 0F4Eh ;# 
# 26180 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CCPR3H equ 0F4Fh ;# 
# 26200 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CCP2CON equ 0F50h ;# 
# 26205 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
ECCP2CON equ 0F50h ;# 
# 26356 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CCPR2 equ 0F51h ;# 
# 26363 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CCPR2L equ 0F51h ;# 
# 26383 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CCPR2H equ 0F52h ;# 
# 26403 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CTMUICON equ 0F53h ;# 
# 26479 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CTMUCONL equ 0F54h ;# 
# 26557 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CTMUCONH equ 0F55h ;# 
# 26614 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
PADCFG1 equ 0F56h ;# 
# 26642 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
PMD2 equ 0F57h ;# 
# 26674 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
PMD1 equ 0F58h ;# 
# 26744 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
PMD0 equ 0F59h ;# 
# 26821 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
IOCB equ 0F5Ah ;# 
# 26860 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
WPUB equ 0F5Bh ;# 
# 26922 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
ANCON1 equ 0F5Ch ;# 
# 26974 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
ANCON0 equ 0F5Dh ;# 
# 27050 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CM2CON equ 0F5Eh ;# 
# 27055 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CM2CON1 equ 0F5Eh ;# 
# 27302 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CM1CON equ 0F5Fh ;# 
# 27307 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CM1CON1 equ 0F5Fh ;# 
# 27582 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXB0CON equ 0F60h ;# 
# 27766 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXB0SIDH equ 0F61h ;# 
# 27886 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXB0SIDL equ 0F62h ;# 
# 28003 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXB0EIDH equ 0F63h ;# 
# 28123 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXB0EIDL equ 0F64h ;# 
# 28243 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXB0DLC equ 0F65h ;# 
# 28357 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXB0D0 equ 0F66h ;# 
# 28427 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXB0D1 equ 0F67h ;# 
# 28497 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXB0D2 equ 0F68h ;# 
# 28567 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXB0D3 equ 0F69h ;# 
# 28637 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXB0D4 equ 0F6Ah ;# 
# 28707 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXB0D5 equ 0F6Bh ;# 
# 28777 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXB0D6 equ 0F6Ch ;# 
# 28847 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RXB0D7 equ 0F6Dh ;# 
# 28917 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CANSTAT equ 0F6Eh ;# 
# 29028 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CANCON equ 0F6Fh ;# 
# 29120 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CIOCON equ 0F70h ;# 
# 29165 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
COMSTAT equ 0F71h ;# 
# 29260 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
ECANCON equ 0F72h ;# 
# 29337 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
EEDATA equ 0F73h ;# 
# 29357 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
EEADR equ 0F74h ;# 
# 29377 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
EEADRH equ 0F75h ;# 
# 29397 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
PIE5 equ 0F76h ;# 
# 29480 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
PIR5 equ 0F77h ;# 
# 29563 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
IPR5 equ 0F78h ;# 
# 29673 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TXREG2 equ 0F79h ;# 
# 29693 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RCREG2 equ 0F7Ah ;# 
# 29713 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
SPBRG2 equ 0F7Bh ;# 
# 29733 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
SPBRGH2 equ 0F7Ch ;# 
# 29753 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
SPBRGH1 equ 0F7Dh ;# 
# 29773 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
EECON2 equ 0F7Eh ;# 
# 29793 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
EECON1 equ 0F7Fh ;# 
# 29859 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
PORTA equ 0F80h ;# 
# 29938 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
PORTB equ 0F81h ;# 
# 30009 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
PORTC equ 0F82h ;# 
# 30095 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
PORTE equ 0F84h ;# 
# 30134 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TMR4 equ 0F87h ;# 
# 30154 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
T4CON equ 0F88h ;# 
# 30225 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
LATA equ 0F89h ;# 
# 30327 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
LATB equ 0F8Ah ;# 
# 30439 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
LATC equ 0F8Bh ;# 
# 30551 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
SLRCON equ 0F90h ;# 
# 30583 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
ODCON equ 0F91h ;# 
# 30645 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TRISA equ 0F92h ;# 
# 30702 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TRISB equ 0F93h ;# 
# 30764 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TRISC equ 0F94h ;# 
# 30826 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CCPTMRS equ 0F99h ;# 
# 30870 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
REFOCON equ 0F9Ah ;# 
# 30935 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
OSCTUNE equ 0F9Bh ;# 
# 31005 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
PSTR1CON equ 0F9Ch ;# 
# 31071 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
PIE1 equ 0F9Dh ;# 
# 31142 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
PIR1 equ 0F9Eh ;# 
# 31213 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
IPR1 equ 0F9Fh ;# 
# 31284 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
PIE2 equ 0FA0h ;# 
# 31338 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
PIR2 equ 0FA1h ;# 
# 31392 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
IPR2 equ 0FA2h ;# 
# 31446 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
PIE3 equ 0FA3h ;# 
# 31534 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
PIR3 equ 0FA4h ;# 
# 31595 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
IPR3 equ 0FA5h ;# 
# 31656 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RCSTA2 equ 0FA6h ;# 
# 31792 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
BAUDCON1 equ 0FA7h ;# 
# 31948 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
HLVDCON equ 0FA8h ;# 
# 32018 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
PR4 equ 0FA9h ;# 
# 32038 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
T1GCON equ 0FAAh ;# 
# 32142 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RCSTA1 equ 0FABh ;# 
# 32147 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RCSTA equ 0FABh ;# 
# 32480 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TXSTA1 equ 0FACh ;# 
# 32485 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TXSTA equ 0FACh ;# 
# 32768 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TXREG1 equ 0FADh ;# 
# 32773 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TXREG equ 0FADh ;# 
# 32806 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RCREG1 equ 0FAEh ;# 
# 32811 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RCREG equ 0FAEh ;# 
# 32844 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
SPBRG1 equ 0FAFh ;# 
# 32849 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
SPBRG equ 0FAFh ;# 
# 32882 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
T3GCON equ 0FB0h ;# 
# 32986 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
T3CON equ 0FB1h ;# 
# 33097 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TMR3 equ 0FB2h ;# 
# 33104 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TMR3L equ 0FB2h ;# 
# 33124 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TMR3H equ 0FB3h ;# 
# 33144 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CMSTAT equ 0FB4h ;# 
# 33149 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CMSTATUS equ 0FB4h ;# 
# 33226 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CVRCON equ 0FB5h ;# 
# 33311 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
PIE4 equ 0FB6h ;# 
# 33368 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
PIR4 equ 0FB7h ;# 
# 33425 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
IPR4 equ 0FB8h ;# 
# 33490 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
BAUDCON2 equ 0FB9h ;# 
# 33622 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TXSTA2 equ 0FBAh ;# 
# 33749 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CCP1CON equ 0FBBh ;# 
# 33754 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
ECCP1CON equ 0FBBh ;# 
# 33941 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CCPR1 equ 0FBCh ;# 
# 33948 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CCPR1L equ 0FBCh ;# 
# 33968 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
CCPR1H equ 0FBDh ;# 
# 33988 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
ECCP1DEL equ 0FBEh ;# 
# 33993 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
PWM1CON equ 0FBEh ;# 
# 34126 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
ECCP1AS equ 0FBFh ;# 
# 34208 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
ADCON2 equ 0FC0h ;# 
# 34279 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
ADCON1 equ 0FC1h ;# 
# 34383 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
ADCON0 equ 0FC2h ;# 
# 34508 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
ADRES equ 0FC3h ;# 
# 34515 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
ADRESL equ 0FC3h ;# 
# 34535 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
ADRESH equ 0FC4h ;# 
# 34555 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
SSPCON2 equ 0FC5h ;# 
# 34650 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
SSPCON1 equ 0FC6h ;# 
# 34720 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
SSPSTAT equ 0FC7h ;# 
# 34952 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
SSPADD equ 0FC8h ;# 
# 35022 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
SSPBUF equ 0FC9h ;# 
# 35042 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
T2CON equ 0FCAh ;# 
# 35113 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
PR2 equ 0FCBh ;# 
# 35118 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
MEMCON equ 0FCBh ;# 
# 35239 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TMR2 equ 0FCCh ;# 
# 35259 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
T1CON equ 0FCDh ;# 
# 35361 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TMR1 equ 0FCEh ;# 
# 35368 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TMR1L equ 0FCEh ;# 
# 35388 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TMR1H equ 0FCFh ;# 
# 35408 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
RCON equ 0FD0h ;# 
# 35561 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
WDTCON equ 0FD1h ;# 
# 35621 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
OSCCON2 equ 0FD2h ;# 
# 35693 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
OSCCON equ 0FD3h ;# 
# 35770 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
T0CON equ 0FD5h ;# 
# 35840 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TMR0 equ 0FD6h ;# 
# 35847 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TMR0L equ 0FD6h ;# 
# 35867 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TMR0H equ 0FD7h ;# 
# 35887 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
STATUS equ 0FD8h ;# 
# 35958 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
FSR2 equ 0FD9h ;# 
# 35965 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
FSR2L equ 0FD9h ;# 
# 35985 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
FSR2H equ 0FDAh ;# 
# 36005 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
PLUSW2 equ 0FDBh ;# 
# 36025 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
PREINC2 equ 0FDCh ;# 
# 36045 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
POSTDEC2 equ 0FDDh ;# 
# 36065 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
POSTINC2 equ 0FDEh ;# 
# 36085 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
INDF2 equ 0FDFh ;# 
# 36105 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
BSR equ 0FE0h ;# 
# 36125 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
FSR1 equ 0FE1h ;# 
# 36132 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
FSR1L equ 0FE1h ;# 
# 36152 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
FSR1H equ 0FE2h ;# 
# 36172 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
PLUSW1 equ 0FE3h ;# 
# 36192 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
PREINC1 equ 0FE4h ;# 
# 36212 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
POSTDEC1 equ 0FE5h ;# 
# 36232 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
POSTINC1 equ 0FE6h ;# 
# 36252 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
INDF1 equ 0FE7h ;# 
# 36272 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
WREG equ 0FE8h ;# 
# 36292 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
FSR0 equ 0FE9h ;# 
# 36299 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
FSR0L equ 0FE9h ;# 
# 36319 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
FSR0H equ 0FEAh ;# 
# 36339 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
PLUSW0 equ 0FEBh ;# 
# 36359 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
PREINC0 equ 0FECh ;# 
# 36379 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
POSTDEC0 equ 0FEDh ;# 
# 36399 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
POSTINC0 equ 0FEEh ;# 
# 36419 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
INDF0 equ 0FEFh ;# 
# 36439 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
INTCON3 equ 0FF0h ;# 
# 36551 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
INTCON2 equ 0FF1h ;# 
# 36644 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
INTCON equ 0FF2h ;# 
# 36649 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
INTCON1 equ 0FF2h ;# 
# 36876 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
PROD equ 0FF3h ;# 
# 36883 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
PRODL equ 0FF3h ;# 
# 36903 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
PRODH equ 0FF4h ;# 
# 36923 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TABLAT equ 0FF5h ;# 
# 36945 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TBLPTR equ 0FF6h ;# 
# 36952 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TBLPTRL equ 0FF6h ;# 
# 36972 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TBLPTRH equ 0FF7h ;# 
# 36992 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TBLPTRU equ 0FF8h ;# 
# 37014 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
PCLAT equ 0FF9h ;# 
# 37021 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
PC equ 0FF9h ;# 
# 37028 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
PCL equ 0FF9h ;# 
# 37048 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
PCLATH equ 0FFAh ;# 
# 37068 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
PCLATU equ 0FFBh ;# 
# 37088 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
STKPTR equ 0FFCh ;# 
# 37162 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TOS equ 0FFDh ;# 
# 37169 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TOSL equ 0FFDh ;# 
# 37189 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TOSH equ 0FFEh ;# 
# 37209 "/opt/microchip/xc8/v1.44/include/pic18f25k80.h"
TOSU equ 0FFFh ;# 
