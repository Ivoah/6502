;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC18LF6490 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC18LF6490 microcontroller.  These names
;  are taken to match the data sheets as closely as possible.
;==========================================================================

;==========================================================================
;
;       Select cross overlay
;
;==========================================================================

                  .CR   pic16
                  .MS   8192

;==========================================================================
;       18xxxx Family        .EQates
;==========================================================================
FSR0             .EQ  0
FSR1             .EQ  1
FSR2             .EQ  2

FAST             .EQ  1

W                .EQ  0
A                .EQ  0
ACCESS           .EQ  0
BANKED           .EQ  1
;==========================================================================

;==========================================================================
;       16Cxxx/17Cxxx Substitutions
;==========================================================================
  #define DDRA  TRISA      ; PIC17Cxxx SFR substitution
  #define DDRB  TRISB      ; PIC17Cxxx SFR substitution
  #define DDRC  TRISC      ; PIC17Cxxx SFR substitution
  #define DDRD  TRISD      ; PIC17Cxxx SFR substitution
  #define DDRE  TRISE      ; PIC17Cxxx SFR substitution

;==========================================================================
;
;       Register Definitions
;
;==========================================================================

;----- Register Files -----------------------------------------------------
LCDPS            .EQ  $0F58
LCDCON           .EQ  $0F59
LCDSE0           .EQ  $0F5A
LCDSE1           .EQ  $0F5B
LCDSE2           .EQ  $0F5C
LCDSE3           .EQ  $0F5D
LCDDATA0         .EQ  $0F60
LCDDATA1         .EQ  $0F61
LCDDATA2         .EQ  $0F62
LCDDATA3         .EQ  $0F63
LCDDATA4         .EQ  $0F64
LCDDATA5         .EQ  $0F65
LCDDATA6         .EQ  $0F66
LCDDATA7         .EQ  $0F67
LCDDATA8         .EQ  $0F68
LCDDATA9         .EQ  $0F69
LCDDATA10        .EQ  $0F6A
RCSTA2           .EQ  $0F6B
TXSTA2           .EQ  $0F6C
TXREG2           .EQ  $0F6D
RCREG2           .EQ  $0F6E
SPBRG2           .EQ  $0F6F
LCDDATA11        .EQ  $0F70
LCDDATA12        .EQ  $0F71
LCDDATA13        .EQ  $0F72
LCDDATA14        .EQ  $0F73
LCDDATA15        .EQ  $0F74
LCDDATA16        .EQ  $0F75
LCDDATA17        .EQ  $0F76
LCDDATA18        .EQ  $0F77
LCDDATA19        .EQ  $0F78
LCDDATA20        .EQ  $0F79
LCDDATA21        .EQ  $0F7A
LCDDATA22        .EQ  $0F7B
LCDDATA23        .EQ  $0F7C
BAUDCON1         .EQ  $0F7E
BAUDCTL1         .EQ  $0F7E
SPBRGH1          .EQ  $0F7F
PORTA            .EQ  $0F80
PORTB            .EQ  $0F81
PORTC            .EQ  $0F82
PORTD            .EQ  $0F83
PORTE            .EQ  $0F84
PORTF            .EQ  $0F85
PORTG            .EQ  $0F86
LATA             .EQ  $0F89
LATB             .EQ  $0F8A
LATC             .EQ  $0F8B
LATD             .EQ  $0F8C
LATE             .EQ  $0F8D
LATF             .EQ  $0F8E
LATG             .EQ  $0F8F
DDRA             .EQ  $0F92
TRISA            .EQ  $0F92
DDRB             .EQ  $0F93
TRISB            .EQ  $0F93
DDRC             .EQ  $0F94
TRISC            .EQ  $0F94
DDRD             .EQ  $0F95
TRISD            .EQ  $0F95
DDRE             .EQ  $0F96
TRISE            .EQ  $0F96
DDRF             .EQ  $0F97
TRISF            .EQ  $0F97
DDRG             .EQ  $0F98
TRISG            .EQ  $0F98
OSCTUNE          .EQ  $0F9B
PIE1             .EQ  $0F9D
PIR1             .EQ  $0F9E
IPR1             .EQ  $0F9F
PIE2             .EQ  $0FA0
PIR2             .EQ  $0FA1
IPR2             .EQ  $0FA2
PIE3             .EQ  $0FA3
PIR3             .EQ  $0FA4
IPR3             .EQ  $0FA5
RCSTA            .EQ  $0FAB
RCSTA1           .EQ  $0FAB
TXSTA            .EQ  $0FAC
TXSTA1           .EQ  $0FAC
TXREG            .EQ  $0FAD
TXREG1           .EQ  $0FAD
RCREG            .EQ  $0FAE
RCREG1           .EQ  $0FAE
SPBRG            .EQ  $0FAF
SPBRG1           .EQ  $0FAF
T3CON            .EQ  $0FB1
TMR3             .EQ  $0FB2
TMR3L            .EQ  $0FB2
TMR3H            .EQ  $0FB3
CMCON            .EQ  $0FB4
CVRCON           .EQ  $0FB5
CCP2CON          .EQ  $0FBA
CCPR2            .EQ  $0FBB
CCPR2L           .EQ  $0FBB
CCPR2H           .EQ  $0FBC
CCP1CON          .EQ  $0FBD
CCPR1            .EQ  $0FBE
CCPR1L           .EQ  $0FBE
CCPR1H           .EQ  $0FBF
ADCON2           .EQ  $0FC0
ADCON1           .EQ  $0FC1
ADCON0           .EQ  $0FC2
ADRES            .EQ  $0FC3
ADRESL           .EQ  $0FC3
ADRESH           .EQ  $0FC4
SSPCON2          .EQ  $0FC5
SSPCON1          .EQ  $0FC6
SSPSTAT          .EQ  $0FC7
SSPADD           .EQ  $0FC8
SSPBUF           .EQ  $0FC9
T2CON            .EQ  $0FCA
PR2              .EQ  $0FCB
TMR2             .EQ  $0FCC
T1CON            .EQ  $0FCD
TMR1             .EQ  $0FCE
TMR1L            .EQ  $0FCE
TMR1H            .EQ  $0FCF
RCON             .EQ  $0FD0
WDTCON           .EQ  $0FD1
HLVDCON          .EQ  $0FD2
LVDCON           .EQ  $0FD2
OSCCON           .EQ  $0FD3
T0CON            .EQ  $0FD5
TMR0             .EQ  $0FD6
TMR0L            .EQ  $0FD6
TMR0H            .EQ  $0FD7
STATUS           .EQ  $0FD8
FSR2L            .EQ  $0FD9
FSR2H            .EQ  $0FDA
PLUSW2           .EQ  $0FDB
PREINC2          .EQ  $0FDC
POSTDEC2         .EQ  $0FDD
POSTINC2         .EQ  $0FDE
INDF2            .EQ  $0FDF
BSR              .EQ  $0FE0
FSR1L            .EQ  $0FE1
FSR1H            .EQ  $0FE2
PLUSW1           .EQ  $0FE3
PREINC1          .EQ  $0FE4
POSTDEC1         .EQ  $0FE5
POSTINC1         .EQ  $0FE6
INDF1            .EQ  $0FE7
WREG             .EQ  $0FE8
FSR0L            .EQ  $0FE9
FSR0H            .EQ  $0FEA
PLUSW0           .EQ  $0FEB
PREINC0          .EQ  $0FEC
POSTDEC0         .EQ  $0FED
POSTINC0         .EQ  $0FEE
INDF0            .EQ  $0FEF
INTCON3          .EQ  $0FF0
INTCON2          .EQ  $0FF1
INTCON           .EQ  $0FF2
PROD             .EQ  $0FF3
PRODL            .EQ  $0FF3
PRODH            .EQ  $0FF4
TABLAT           .EQ  $0FF5
TBLPTR           .EQ  $0FF6
TBLPTRL          .EQ  $0FF6
TBLPTRH          .EQ  $0FF7
TBLPTRU          .EQ  $0FF8
PC               .EQ  $0FF9
PCL              .EQ  $0FF9
PCLATH           .EQ  $0FFA
PCLATU           .EQ  $0FFB
STKPTR           .EQ  $0FFC
TOS              .EQ  $0FFD
TOSL             .EQ  $0FFD
TOSH             .EQ  $0FFE
TOSU             .EQ  $0FFF

;----- LCDPS Bits -----------------------------------------------------
WA               .EQ  $0004
LCDA             .EQ  $0005
BIASMD           .EQ  $0006
WFT              .EQ  $0007

LP0              .EQ  $0000
LP1              .EQ  $0001
LP2              .EQ  $0002
LP3              .EQ  $0003

LCDPS0           .EQ  $0000
LCDPS1           .EQ  $0001
LCDPS2           .EQ  $0002
LCDPS3           .EQ  $0003


;----- LCDCON Bits -----------------------------------------------------
WERR             .EQ  $0005
SLPEN            .EQ  $0006
LCDEN            .EQ  $0007

LMUX0            .EQ  $0000
LMUX1            .EQ  $0001
CS0              .EQ  $0002
CS1              .EQ  $0003

LCDCS0           .EQ  $0002
LCDCS1           .EQ  $0003
LCDWERR          .EQ  $0005
LCDSLPEN         .EQ  $0006


;----- LCDSE0 Bits -----------------------------------------------------
SE0              .EQ  $0000
SE1              .EQ  $0001
SE2              .EQ  $0002
SE3              .EQ  $0003
SE4              .EQ  $0004
SE5              .EQ  $0005
SE6              .EQ  $0006
SE7              .EQ  $0007

SEGEN0           .EQ  $0000
SEGEN1           .EQ  $0001
SEGEN2           .EQ  $0002
SEGEN3           .EQ  $0003
SEGEN4           .EQ  $0004
SEGEN5           .EQ  $0005
SEGEN6           .EQ  $0006
SEGEN7           .EQ  $0007


;----- LCDSE1 Bits -----------------------------------------------------
SE8              .EQ  $0000
SE9              .EQ  $0001
SE10             .EQ  $0002
SE11             .EQ  $0003
SE12             .EQ  $0004
SE13             .EQ  $0005
SE14             .EQ  $0006
SE15             .EQ  $0007

SEGEN8           .EQ  $0000
SEGEN9           .EQ  $0001
SEGEN10          .EQ  $0002
SEGEN11          .EQ  $0003
SEGEN12          .EQ  $0004
SEGEN13          .EQ  $0005
SEGEN14          .EQ  $0006
SEGEN15          .EQ  $0007


;----- LCDSE2 Bits -----------------------------------------------------
SE16             .EQ  $0000
SE17             .EQ  $0001
SE18             .EQ  $0002
SE19             .EQ  $0003
SE20             .EQ  $0004
SE21             .EQ  $0005
SE22             .EQ  $0006
SE23             .EQ  $0007

SEGEN16          .EQ  $0000
SEGEN17          .EQ  $0001
SEGEN18          .EQ  $0002
SEGEN19          .EQ  $0003
SEGEN20          .EQ  $0004
SEGEN21          .EQ  $0005
SEGEN22          .EQ  $0006
SEGEN23          .EQ  $0007


;----- LCDSE3 Bits -----------------------------------------------------
SE24             .EQ  $0000
SE25             .EQ  $0001
SE26             .EQ  $0002
SE27             .EQ  $0003
SE28             .EQ  $0004
SE29             .EQ  $0005
SE30             .EQ  $0006
SE31             .EQ  $0007

SEGEN24          .EQ  $0000
SEGEN25          .EQ  $0001
SEGEN26          .EQ  $0002
SEGEN27          .EQ  $0003
SEGEN28          .EQ  $0004
SEGEN29          .EQ  $0005
SEGEN30          .EQ  $0006
SEGEN31          .EQ  $0007


;----- LCDDATA0 Bits -----------------------------------------------------
S0C0             .EQ  $0000
S1C0             .EQ  $0001
S2C0             .EQ  $0002
S3C0             .EQ  $0003
S4C0             .EQ  $0004
S5C0             .EQ  $0005
S6C0             .EQ  $0006
S7C0             .EQ  $0007

SEG0COM0         .EQ  $0000
SEG1COM0         .EQ  $0001
SEG2COM0         .EQ  $0002
SEG3COM0         .EQ  $0003
SEG4COM0         .EQ  $0004
SEG5COM0         .EQ  $0005
SEG6COM0         .EQ  $0006
SEG7COM0         .EQ  $0007

S00C0            .EQ  $0000
S01C0            .EQ  $0001
S02C0            .EQ  $0002
S03C0            .EQ  $0003
S04C0            .EQ  $0004
S05C0            .EQ  $0005
S06C0            .EQ  $0006
S07C0            .EQ  $0007


;----- LCDDATA1 Bits -----------------------------------------------------
S8C0             .EQ  $0000
S9C0             .EQ  $0001
S10C0            .EQ  $0002
S11C0            .EQ  $0003
S12C0            .EQ  $0004
S13C0            .EQ  $0005
S14C0            .EQ  $0006
S15C0            .EQ  $0007

SEG8COM0         .EQ  $0000
SEG9COM0         .EQ  $0001
SEG10COM0        .EQ  $0002
SEG11COM0        .EQ  $0003
SEG12COM0        .EQ  $0004
SEG13COM0        .EQ  $0005
SEG14COM0        .EQ  $0006
SEG15COM0        .EQ  $0007

S08C0            .EQ  $0000
S09C0            .EQ  $0001


;----- LCDDATA2 Bits -----------------------------------------------------
S16C0            .EQ  $0000
S17C0            .EQ  $0001
S18C0            .EQ  $0002
S19C0            .EQ  $0003
S20C0            .EQ  $0004
S21C0            .EQ  $0005
S22C0            .EQ  $0006
S23C0            .EQ  $0007

SEG16COM0        .EQ  $0000
SEG17COM0        .EQ  $0001
SEG18COM0        .EQ  $0002
SEG19COM0        .EQ  $0003
SEG20COM0        .EQ  $0004
SEG21COM0        .EQ  $0005
SEG22COM0        .EQ  $0006
SEG23COM0        .EQ  $0007


;----- LCDDATA3 Bits -----------------------------------------------------
S24C0            .EQ  $0000
S25C0            .EQ  $0001
S26C0            .EQ  $0002
S27C0            .EQ  $0003
S28C0            .EQ  $0004
S29C0            .EQ  $0005
S30C0            .EQ  $0006
S31C0            .EQ  $0007

SEG24COM0        .EQ  $0000
SEG25COM0        .EQ  $0001
SEG26COM0        .EQ  $0002
SEG27COM0        .EQ  $0003
SEG28COM0        .EQ  $0004
SEG29COM0        .EQ  $0005
SEG30COM0        .EQ  $0006
SEG31COM0        .EQ  $0007


;----- LCDDATA4 Bits -----------------------------------------------------
S32C0            .EQ  $0000
S33C0            .EQ  $0001
S34C0            .EQ  $0002
S35C0            .EQ  $0003
S36C0            .EQ  $0004
S37C0            .EQ  $0005
S38C0            .EQ  $0006
S39C0            .EQ  $0007

SEG32COM0        .EQ  $0000
SEG33COM0        .EQ  $0001
SEG34COM0        .EQ  $0002
SEG35COM0        .EQ  $0003
SEG36COM0        .EQ  $0004
SEG37COM0        .EQ  $0005
SEG38COM0        .EQ  $0006
SEG39COM0        .EQ  $0007


;----- LCDDATA5 Bits -----------------------------------------------------
S40C0            .EQ  $0000
S41C0            .EQ  $0001
S42C0            .EQ  $0002
S43C0            .EQ  $0003
S44C0            .EQ  $0004
S45C0            .EQ  $0005
S46C0            .EQ  $0006
S47C0            .EQ  $0007

SEG40COM0        .EQ  $0000
SEG41COM0        .EQ  $0001
SEG42COM0        .EQ  $0002
SEG43COM0        .EQ  $0003
SEG44COM0        .EQ  $0004
SEG45COM0        .EQ  $0005
SEG46COM0        .EQ  $0006
SEG47COM0        .EQ  $0007


;----- LCDDATA6 Bits -----------------------------------------------------
S0C1             .EQ  $0000
S1C1             .EQ  $0001
S2C1             .EQ  $0002
S3C1             .EQ  $0003
S4C1             .EQ  $0004
S5C1             .EQ  $0005
S6C1             .EQ  $0006
S7C1             .EQ  $0007

SEG0COM1         .EQ  $0000
SEG1COM1         .EQ  $0001
SEG2COM1         .EQ  $0002
SEG3COM1         .EQ  $0003
SEG4COM1         .EQ  $0004
SEG5COM1         .EQ  $0005
SEG6COM1         .EQ  $0006
SEG7COM1         .EQ  $0007

S00C1            .EQ  $0000
S01C1            .EQ  $0001
S02C1            .EQ  $0002
S03C1            .EQ  $0003
S04C1            .EQ  $0004
S05C1            .EQ  $0005
S06C1            .EQ  $0006
S07C1            .EQ  $0007


;----- LCDDATA7 Bits -----------------------------------------------------
S8C1             .EQ  $0000
S9C1             .EQ  $0001
S10C1            .EQ  $0002
S11C1            .EQ  $0003
S12C1            .EQ  $0004
S13C1            .EQ  $0005
S14C1            .EQ  $0006
S15C1            .EQ  $0007

SEG8COM1         .EQ  $0000
SEG9COM1         .EQ  $0001
SEG10COM1        .EQ  $0002
SEG11COM1        .EQ  $0003
SEG12COM1        .EQ  $0004
SEG13COM1        .EQ  $0005
SEG14COM1        .EQ  $0006
SEG15COM1        .EQ  $0007

S08C1            .EQ  $0000
S09C1            .EQ  $0001


;----- LCDDATA8 Bits -----------------------------------------------------
S16C1            .EQ  $0000
S17C1            .EQ  $0001
S18C1            .EQ  $0002
S19C1            .EQ  $0003
S20C1            .EQ  $0004
S21C1            .EQ  $0005
S22C1            .EQ  $0006
S23C1            .EQ  $0007

SEG16COM1        .EQ  $0000
SEG17COM1        .EQ  $0001
SEG18COM1        .EQ  $0002
SEG19COM1        .EQ  $0003
SEG20COM1        .EQ  $0004
SEG21COM1        .EQ  $0005
SEG22COM1        .EQ  $0006
SEG23COM1        .EQ  $0007


;----- LCDDATA9 Bits -----------------------------------------------------
S24C1            .EQ  $0000
S25C1            .EQ  $0001
S26C1            .EQ  $0002
S27C1            .EQ  $0003
S28C1            .EQ  $0004
S29C1            .EQ  $0005
S30C1            .EQ  $0006
S31C1            .EQ  $0007

SEG24COM1        .EQ  $0000
SEG25COM1        .EQ  $0001
SEG26COM1        .EQ  $0002
SEG27COM1        .EQ  $0003
SEG28COM1        .EQ  $0004
SEG29COM1        .EQ  $0005
SEG30COM1        .EQ  $0006
SEG31COM1        .EQ  $0007


;----- LCDDATA10 Bits -----------------------------------------------------
S32C1            .EQ  $0000
S33C1            .EQ  $0001
S34C1            .EQ  $0002
S35C1            .EQ  $0003
S36C1            .EQ  $0004
S37C1            .EQ  $0005
S38C1            .EQ  $0006
S39C1            .EQ  $0007

SEG32COM1        .EQ  $0000
SEG33COM1        .EQ  $0001
SEG34COM1        .EQ  $0002
SEG35COM1        .EQ  $0003
SEG36COM1        .EQ  $0004
SEG37COM1        .EQ  $0005
SEG38COM1        .EQ  $0006
SEG39COM1        .EQ  $0007


;----- RCSTA2 Bits -----------------------------------------------------
RX9D             .EQ  $0000
OERR             .EQ  $0001
FERR             .EQ  $0002
ADDEN            .EQ  $0003
CREN             .EQ  $0004
SREN             .EQ  $0005
RX9              .EQ  $0006
SPEN             .EQ  $0007

RCD8             .EQ  $0000
ADEN             .EQ  $0003
RC9              .EQ  $0006

NOT_RC8          .EQ  $0006

RC8_9            .EQ  $0006

RX9D2            .EQ  $0000
OERR2            .EQ  $0001
FERR2            .EQ  $0002
ADDEN2           .EQ  $0003
CREN2            .EQ  $0004
SREN2            .EQ  $0005
RX92             .EQ  $0006
SPEN2            .EQ  $0007


;----- TXSTA2 Bits -----------------------------------------------------
TX9D             .EQ  $0000
TRMT             .EQ  $0001
BRGH             .EQ  $0002
SYNC             .EQ  $0004
TXEN             .EQ  $0005
TX9              .EQ  $0006
CSRC             .EQ  $0007

TXD8             .EQ  $0000
TX8_9            .EQ  $0006

NOT_TX8          .EQ  $0006

TX9D2            .EQ  $0000
TRMT2            .EQ  $0001
BRGH2            .EQ  $0002
SENDB2           .EQ  $0003
SYNC2            .EQ  $0004
TXEN2            .EQ  $0005
TX92             .EQ  $0006
CSRC2            .EQ  $0007


;----- LCDDATA11 Bits -----------------------------------------------------
S40C1            .EQ  $0000
S41C1            .EQ  $0001
S42C1            .EQ  $0002
S43C1            .EQ  $0003
S44C1            .EQ  $0004
S45C1            .EQ  $0005
S46C1            .EQ  $0006
S47C1            .EQ  $0007

SEG40COM1        .EQ  $0000
SEG41COM1        .EQ  $0001
SEG42COM1        .EQ  $0002
SEG43COM1        .EQ  $0003
SEG44COM1        .EQ  $0004
SEG45COM1        .EQ  $0005
SEG46COM1        .EQ  $0006
SEG47COM1        .EQ  $0007


;----- LCDDATA12 Bits -----------------------------------------------------
S0C2             .EQ  $0000
S1C2             .EQ  $0001
S2C2             .EQ  $0002
S3C2             .EQ  $0003
S4C2             .EQ  $0004
S5C2             .EQ  $0005
S6C2             .EQ  $0006
S7C2             .EQ  $0007

SEG0COM2         .EQ  $0000
SEG1COM2         .EQ  $0001
SEG2COM2         .EQ  $0002
SEG3COM2         .EQ  $0003
SEG4COM2         .EQ  $0004
SEG5COM2         .EQ  $0005
SEG6COM2         .EQ  $0006
SEG7COM2         .EQ  $0007

S00C2            .EQ  $0000
S01C2            .EQ  $0001
S02C2            .EQ  $0002
S03C2            .EQ  $0003
S04C2            .EQ  $0004
S05C2            .EQ  $0005
S06C2            .EQ  $0006
S07C2            .EQ  $0007


;----- LCDDATA13 Bits -----------------------------------------------------
S8C2             .EQ  $0000
S9C2             .EQ  $0001
S10C2            .EQ  $0002
S11C2            .EQ  $0003
S12C2            .EQ  $0004
S13C2            .EQ  $0005
S14C2            .EQ  $0006
S15C2            .EQ  $0007

SEG8COM2         .EQ  $0000
SEG9COM2         .EQ  $0001
SEG10COM2        .EQ  $0002
SEG11COM2        .EQ  $0003
SEG12COM2        .EQ  $0004
SEG13COM2        .EQ  $0005
SEG14COM2        .EQ  $0006
SEG15COM2        .EQ  $0007

S08C2            .EQ  $0000
S09C2            .EQ  $0001


;----- LCDDATA14 Bits -----------------------------------------------------
S16C2            .EQ  $0000
S17C2            .EQ  $0001
S18C2            .EQ  $0002
S19C2            .EQ  $0003
S20C2            .EQ  $0004
S21C2            .EQ  $0005
S22C2            .EQ  $0006
S23C2            .EQ  $0007

SEG16COM2        .EQ  $0000
SEG17COM2        .EQ  $0001
SEG18COM2        .EQ  $0002
SEG19COM2        .EQ  $0003
SEG20COM2        .EQ  $0004
SEG21COM2        .EQ  $0005
SEG22COM2        .EQ  $0006
SEG23COM2        .EQ  $0007


;----- LCDDATA15 Bits -----------------------------------------------------
S24C2            .EQ  $0000
S25C2            .EQ  $0001
S26C2            .EQ  $0002
S27C2            .EQ  $0003
S28C2            .EQ  $0004
S29C2            .EQ  $0005
S30C2            .EQ  $0006
S31C2            .EQ  $0007

SEG24COM2        .EQ  $0000
SEG25COM2        .EQ  $0001
SEG26COM2        .EQ  $0002
SEG27COM2        .EQ  $0003
SEG28COM2        .EQ  $0004
SEG29COM2        .EQ  $0005
SEG30COM2        .EQ  $0006
SEG31COM2        .EQ  $0007


;----- LCDDATA16 Bits -----------------------------------------------------
S32C2            .EQ  $0000
S33C2            .EQ  $0001
S34C2            .EQ  $0002
S35C2            .EQ  $0003
S36C2            .EQ  $0004
S37C2            .EQ  $0005
S38C2            .EQ  $0006
S39C2            .EQ  $0007

SEG32COM2        .EQ  $0000
SEG33COM2        .EQ  $0001
SEG34COM2        .EQ  $0002
SEG35COM2        .EQ  $0003
SEG36COM2        .EQ  $0004
SEG37COM2        .EQ  $0005
SEG38COM2        .EQ  $0006
SEG39COM2        .EQ  $0007


;----- LCDDATA17 Bits -----------------------------------------------------
S40C2            .EQ  $0000
S41C2            .EQ  $0001
S42C2            .EQ  $0002
S43C2            .EQ  $0003
S44C2            .EQ  $0004
S45C2            .EQ  $0005
S46C2            .EQ  $0006
S47C2            .EQ  $0007

SEG40COM2        .EQ  $0000
SEG41COM2        .EQ  $0001
SEG42COM2        .EQ  $0002
SEG43COM2        .EQ  $0003
SEG44COM2        .EQ  $0004
SEG45COM2        .EQ  $0005
SEG46COM2        .EQ  $0006
SEG47COM2        .EQ  $0007


;----- LCDDATA18 Bits -----------------------------------------------------
S0C3             .EQ  $0000
S1C3             .EQ  $0001
S2C3             .EQ  $0002
S3C3             .EQ  $0003
S4C3             .EQ  $0004
S5C3             .EQ  $0005
S6C3             .EQ  $0006
S7C3             .EQ  $0007

SEG0COM3         .EQ  $0000
SEG1COM3         .EQ  $0001
SEG2COM3         .EQ  $0002
SEG3COM3         .EQ  $0003
SEG4COM3         .EQ  $0004
SEG5COM3         .EQ  $0005
SEG6COM3         .EQ  $0006
SEG7COM3         .EQ  $0007

S00C3            .EQ  $0000
S01C3            .EQ  $0001
S02C3            .EQ  $0002
S03C3            .EQ  $0003
S04C3            .EQ  $0004
S05C3            .EQ  $0005
S06C3            .EQ  $0006
S07C3            .EQ  $0007


;----- LCDDATA19 Bits -----------------------------------------------------
S8C3             .EQ  $0000
S9C3             .EQ  $0001
S10C3            .EQ  $0002
S11C3            .EQ  $0003
S12C3            .EQ  $0004
S13C3            .EQ  $0005
S14C3            .EQ  $0006
S15C3            .EQ  $0007

SEG8COM3         .EQ  $0000
SEG9COM3         .EQ  $0001
SEG10COM3        .EQ  $0002
SEG11COM3        .EQ  $0003
SEG12COM3        .EQ  $0004
SEG13COM3        .EQ  $0005
SEG14COM3        .EQ  $0006
SEG15COM3        .EQ  $0007

S08C3            .EQ  $0000
S09C3            .EQ  $0001


;----- LCDDATA20 Bits -----------------------------------------------------
S16C3            .EQ  $0000
S17C3            .EQ  $0001
S18C3            .EQ  $0002
S19C3            .EQ  $0003
S20C3            .EQ  $0004
S21C3            .EQ  $0005
S22C3            .EQ  $0006
S23C3            .EQ  $0007

SEG16COM3        .EQ  $0000
SEG17COM3        .EQ  $0001
SEG18COM3        .EQ  $0002
SEG19COM3        .EQ  $0003
SEG20COM3        .EQ  $0004
SEG21COM3        .EQ  $0005
SEG22COM3        .EQ  $0006
SEG23COM3        .EQ  $0007


;----- LCDDATA21 Bits -----------------------------------------------------
S24C3            .EQ  $0000
S25C3            .EQ  $0001
S26C3            .EQ  $0002
S27C3            .EQ  $0003
S28C3            .EQ  $0004
S29C3            .EQ  $0005
S30C3            .EQ  $0006
S31C3            .EQ  $0007

SEG24COM3        .EQ  $0000
SEG25COM3        .EQ  $0001
SEG26COM3        .EQ  $0002
SEG27COM3        .EQ  $0003
SEG28COM3        .EQ  $0004
SEG29COM3        .EQ  $0005
SEG30COM3        .EQ  $0006
SEG31COM3        .EQ  $0007


;----- LCDDATA22 Bits -----------------------------------------------------
S32C3            .EQ  $0000
S33C3            .EQ  $0001
S34C3            .EQ  $0002
S35C3            .EQ  $0003
S36C3            .EQ  $0004
S37C3            .EQ  $0005
S38C3            .EQ  $0006
S39C3            .EQ  $0007

SEG32COM3        .EQ  $0000
SEG33COM3        .EQ  $0001
SEG34COM3        .EQ  $0002
SEG35COM3        .EQ  $0003
SEG36COM3        .EQ  $0004
SEG37COM3        .EQ  $0005
SEG38COM3        .EQ  $0006
SEG39COM3        .EQ  $0007


;----- LCDDATA23 Bits -----------------------------------------------------
S40C3            .EQ  $0000
S41C3            .EQ  $0001
S42C3            .EQ  $0002
S43C3            .EQ  $0003
S44C3            .EQ  $0004
S45C3            .EQ  $0005
S46C3            .EQ  $0006
S47C3            .EQ  $0007

SEG40COM3        .EQ  $0000
SEG41COM3        .EQ  $0001
SEG42COM3        .EQ  $0002
SEG43COM3        .EQ  $0003
SEG44COM3        .EQ  $0004
SEG45COM3        .EQ  $0005
SEG46COM3        .EQ  $0006
SEG47COM3        .EQ  $0007


;----- BAUDCON1 Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
SCKP             .EQ  $0004
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007

RCMT             .EQ  $0006


;----- BAUDCTL1 Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
SCKP             .EQ  $0004
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007

RCMT             .EQ  $0006


;----- PORTA Bits -----------------------------------------------------
RA0              .EQ  $0000
RA1              .EQ  $0001
RA2              .EQ  $0002
RA3              .EQ  $0003
RA4              .EQ  $0004
RA5              .EQ  $0005
RA6              .EQ  $0006
RA7              .EQ  $0007

AN0              .EQ  $0000
AN1              .EQ  $0001
AN2              .EQ  $0002
AN3              .EQ  $0003
T0CKI            .EQ  $0004
AN4              .EQ  $0005
OSC2             .EQ  $0006
OSC1             .EQ  $0007

VREFM            .EQ  $0002
VREFP            .EQ  $0003
LVDIN            .EQ  $0005
CLKO             .EQ  $0006
CLKI             .EQ  $0007

SEG16            .EQ  $0002
SEG17            .EQ  $0003
SEG14            .EQ  $0004
SEG15            .EQ  $0005


;----- PORTB Bits -----------------------------------------------------
RB0              .EQ  $0000
RB1              .EQ  $0001
RB2              .EQ  $0002
RB3              .EQ  $0003
RB4              .EQ  $0004
RB5              .EQ  $0005
RB6              .EQ  $0006
RB7              .EQ  $0007

INT0             .EQ  $0000
INT1             .EQ  $0001
INT2             .EQ  $0002
INT3             .EQ  $0003
KBI0             .EQ  $0004
KBI1             .EQ  $0005
KBI2             .EQ  $0006
KBI3             .EQ  $0007

SEG8             .EQ  $0001
SEG9             .EQ  $0002
SEG10            .EQ  $0003
SEG11            .EQ  $0004

CCP2B            .EQ  $0003
PGM              .EQ  $0005
PGC              .EQ  $0006
PGD              .EQ  $0007


;----- PORTC Bits -----------------------------------------------------
RC0              .EQ  $0000
RC1              .EQ  $0001
RC2              .EQ  $0002
RC3              .EQ  $0003
RC4              .EQ  $0004
RC5              .EQ  $0005
RC6              .EQ  $0006
RC7              .EQ  $0007

T1OSO            .EQ  $0000
T1OSI            .EQ  $0001
CCP1             .EQ  $0002
SCK              .EQ  $0003
SDI              .EQ  $0004
SDO              .EQ  $0005
TX               .EQ  $0006
RX               .EQ  $0007

T13CKI           .EQ  $0000
CCP2C            .EQ  $0001
SCL              .EQ  $0003
SDA              .EQ  $0004
CK               .EQ  $0006
; DT is a reserved word
; DT               .EQ  $0007

SEG13            .EQ  $0002
SEG12            .EQ  $0003


;----- PORTD Bits -----------------------------------------------------
RD0              .EQ  $0000
RD1              .EQ  $0001
RD2              .EQ  $0002
RD3              .EQ  $0003
RD4              .EQ  $0004
RD5              .EQ  $0005
RD6              .EQ  $0006
RD7              .EQ  $0007

SEG0             .EQ  $0000
SEG1             .EQ  $0001
SEG2             .EQ  $0002
SEG3             .EQ  $0003
SEG4             .EQ  $0004
SEG5             .EQ  $0005
SEG6             .EQ  $0006
SEG7             .EQ  $0007


;----- PORTE Bits -----------------------------------------------------
RE4              .EQ  $0004
RE5              .EQ  $0005
RE6              .EQ  $0006
RE7              .EQ  $0007

LCDBIAS1         .EQ  $0000
LCDBIAS2         .EQ  $0001
LCDBIAS3         .EQ  $0002
COM0             .EQ  $0003
COM1             .EQ  $0004
COM2             .EQ  $0005
COM3             .EQ  $0006
SEG31            .EQ  $0007

BIAS1            .EQ  $0000
BIAS2            .EQ  $0001
BIAS3            .EQ  $0002
CCP2E            .EQ  $0007


;----- PORTF Bits -----------------------------------------------------
RF0              .EQ  $0000
RF1              .EQ  $0001
RF2              .EQ  $0002
RF3              .EQ  $0003
RF4              .EQ  $0004
RF5              .EQ  $0005
RF6              .EQ  $0006
RF7              .EQ  $0007

AN5              .EQ  $0000
AN6              .EQ  $0001
AN7              .EQ  $0002
AN8              .EQ  $0003
AN9              .EQ  $0004
AN10             .EQ  $0005
AN11             .EQ  $0006
SS               .EQ  $0007

SEG18            .EQ  $0000
SEG19            .EQ  $0001
SEG20            .EQ  $0002
SEG21            .EQ  $0003
SEG22            .EQ  $0004
SEG23            .EQ  $0005
SEG24            .EQ  $0006
SEG25            .EQ  $0007

C2OUTF           .EQ  $0001
C1OUTF           .EQ  $0002
CVREFF           .EQ  $0005


;----- PORTG Bits -----------------------------------------------------
RG0              .EQ  $0000
RG1              .EQ  $0001
RG2              .EQ  $0002
RG3              .EQ  $0003
RG4              .EQ  $0004
RG5              .EQ  $0005

TX2              .EQ  $0001
RX2              .EQ  $0002
MCLR             .EQ  $0005

CK2              .EQ  $0001
DT2              .EQ  $0002
VPP              .EQ  $0005

SEG30            .EQ  $0000
SEG29            .EQ  $0001
SEG28            .EQ  $0002
SEG27            .EQ  $0003
SEG26            .EQ  $0004


;----- LATA Bits -----------------------------------------------------
LATA0            .EQ  $0000
LATA1            .EQ  $0001
LATA2            .EQ  $0002
LATA3            .EQ  $0003
LATA4            .EQ  $0004
LATA5            .EQ  $0005
LATA6            .EQ  $0006
LATA7            .EQ  $0007


;----- LATB Bits -----------------------------------------------------
LATB0            .EQ  $0000
LATB1            .EQ  $0001
LATB2            .EQ  $0002
LATB3            .EQ  $0003
LATB4            .EQ  $0004
LATB5            .EQ  $0005
LATB6            .EQ  $0006
LATB7            .EQ  $0007


;----- LATC Bits -----------------------------------------------------
LATC0            .EQ  $0000
LATC1            .EQ  $0001
LATC2            .EQ  $0002
LATC3            .EQ  $0003
LATC4            .EQ  $0004
LATC5            .EQ  $0005
LATC6            .EQ  $0006
LATC7            .EQ  $0007


;----- LATD Bits -----------------------------------------------------
LATD0            .EQ  $0000
LATD1            .EQ  $0001
LATD2            .EQ  $0002
LATD3            .EQ  $0003
LATD4            .EQ  $0004
LATD5            .EQ  $0005
LATD6            .EQ  $0006
LATD7            .EQ  $0007


;----- LATE Bits -----------------------------------------------------
LATE4            .EQ  $0004
LATE5            .EQ  $0005
LATE6            .EQ  $0006
LATE7            .EQ  $0007


;----- LATF Bits -----------------------------------------------------
LATF0            .EQ  $0000
LATF1            .EQ  $0001
LATF2            .EQ  $0002
LATF3            .EQ  $0003
LATF4            .EQ  $0004
LATF5            .EQ  $0005
LATF6            .EQ  $0006
LATF7            .EQ  $0007


;----- LATG Bits -----------------------------------------------------
LATG0            .EQ  $0000
LATG1            .EQ  $0001
LATG2            .EQ  $0002
LATG3            .EQ  $0003
LATG4            .EQ  $0004


;----- DDRA Bits -----------------------------------------------------
TRISA0           .EQ  $0000
TRISA1           .EQ  $0001
TRISA2           .EQ  $0002
TRISA3           .EQ  $0003
TRISA4           .EQ  $0004
TRISA5           .EQ  $0005
TRISA6           .EQ  $0006
TRISA7           .EQ  $0007

RA0              .EQ  $0000
RA1              .EQ  $0001
RA2              .EQ  $0002
RA3              .EQ  $0003
RA4              .EQ  $0004
RA5              .EQ  $0005
RA6              .EQ  $0006
RA7              .EQ  $0007


;----- TRISA Bits -----------------------------------------------------
TRISA0           .EQ  $0000
TRISA1           .EQ  $0001
TRISA2           .EQ  $0002
TRISA3           .EQ  $0003
TRISA4           .EQ  $0004
TRISA5           .EQ  $0005
TRISA6           .EQ  $0006
TRISA7           .EQ  $0007

RA0              .EQ  $0000
RA1              .EQ  $0001
RA2              .EQ  $0002
RA3              .EQ  $0003
RA4              .EQ  $0004
RA5              .EQ  $0005
RA6              .EQ  $0006
RA7              .EQ  $0007


;----- DDRB Bits -----------------------------------------------------
TRISB0           .EQ  $0000
TRISB1           .EQ  $0001
TRISB2           .EQ  $0002
TRISB3           .EQ  $0003
TRISB4           .EQ  $0004
TRISB5           .EQ  $0005
TRISB6           .EQ  $0006
TRISB7           .EQ  $0007

RB0              .EQ  $0000
RB1              .EQ  $0001
RB2              .EQ  $0002
RB3              .EQ  $0003
RB4              .EQ  $0004
RB5              .EQ  $0005
RB6              .EQ  $0006
RB7              .EQ  $0007


;----- TRISB Bits -----------------------------------------------------
TRISB0           .EQ  $0000
TRISB1           .EQ  $0001
TRISB2           .EQ  $0002
TRISB3           .EQ  $0003
TRISB4           .EQ  $0004
TRISB5           .EQ  $0005
TRISB6           .EQ  $0006
TRISB7           .EQ  $0007

RB0              .EQ  $0000
RB1              .EQ  $0001
RB2              .EQ  $0002
RB3              .EQ  $0003
RB4              .EQ  $0004
RB5              .EQ  $0005
RB6              .EQ  $0006
RB7              .EQ  $0007


;----- DDRC Bits -----------------------------------------------------
TRISC0           .EQ  $0000
TRISC1           .EQ  $0001
TRISC2           .EQ  $0002
TRISC3           .EQ  $0003
TRISC4           .EQ  $0004
TRISC5           .EQ  $0005
TRISC6           .EQ  $0006
TRISC7           .EQ  $0007

RC0              .EQ  $0000
RC1              .EQ  $0001
RC2              .EQ  $0002
RC3              .EQ  $0003
RC4              .EQ  $0004
RC5              .EQ  $0005
RC6              .EQ  $0006
RC7              .EQ  $0007


;----- TRISC Bits -----------------------------------------------------
TRISC0           .EQ  $0000
TRISC1           .EQ  $0001
TRISC2           .EQ  $0002
TRISC3           .EQ  $0003
TRISC4           .EQ  $0004
TRISC5           .EQ  $0005
TRISC6           .EQ  $0006
TRISC7           .EQ  $0007

RC0              .EQ  $0000
RC1              .EQ  $0001
RC2              .EQ  $0002
RC3              .EQ  $0003
RC4              .EQ  $0004
RC5              .EQ  $0005
RC6              .EQ  $0006
RC7              .EQ  $0007


;----- DDRD Bits -----------------------------------------------------
TRISD0           .EQ  $0000
TRISD1           .EQ  $0001
TRISD2           .EQ  $0002
TRISD3           .EQ  $0003
TRISD4           .EQ  $0004
TRISD5           .EQ  $0005
TRISD6           .EQ  $0006
TRISD7           .EQ  $0007

RD0              .EQ  $0000
RD1              .EQ  $0001
RD2              .EQ  $0002
RD3              .EQ  $0003
RD4              .EQ  $0004
RD5              .EQ  $0005
RD6              .EQ  $0006
RD7              .EQ  $0007


;----- TRISD Bits -----------------------------------------------------
TRISD0           .EQ  $0000
TRISD1           .EQ  $0001
TRISD2           .EQ  $0002
TRISD3           .EQ  $0003
TRISD4           .EQ  $0004
TRISD5           .EQ  $0005
TRISD6           .EQ  $0006
TRISD7           .EQ  $0007

RD0              .EQ  $0000
RD1              .EQ  $0001
RD2              .EQ  $0002
RD3              .EQ  $0003
RD4              .EQ  $0004
RD5              .EQ  $0005
RD6              .EQ  $0006
RD7              .EQ  $0007


;----- DDRE Bits -----------------------------------------------------
TRISE4           .EQ  $0004
TRISE5           .EQ  $0005
TRISE6           .EQ  $0006
TRISE7           .EQ  $0007

RE4              .EQ  $0004
RE5              .EQ  $0005
RE6              .EQ  $0006
RE7              .EQ  $0007


;----- TRISE Bits -----------------------------------------------------
TRISE4           .EQ  $0004
TRISE5           .EQ  $0005
TRISE6           .EQ  $0006
TRISE7           .EQ  $0007

RE4              .EQ  $0004
RE5              .EQ  $0005
RE6              .EQ  $0006
RE7              .EQ  $0007


;----- DDRF Bits -----------------------------------------------------
TRISF0           .EQ  $0000
TRISF1           .EQ  $0001
TRISF2           .EQ  $0002
TRISF3           .EQ  $0003
TRISF4           .EQ  $0004
TRISF5           .EQ  $0005
TRISF6           .EQ  $0006
TRISF7           .EQ  $0007

RF0              .EQ  $0000
RF1              .EQ  $0001
RF2              .EQ  $0002
RF3              .EQ  $0003
RF4              .EQ  $0004
RF5              .EQ  $0005
RF6              .EQ  $0006
RF7              .EQ  $0007


;----- TRISF Bits -----------------------------------------------------
TRISF0           .EQ  $0000
TRISF1           .EQ  $0001
TRISF2           .EQ  $0002
TRISF3           .EQ  $0003
TRISF4           .EQ  $0004
TRISF5           .EQ  $0005
TRISF6           .EQ  $0006
TRISF7           .EQ  $0007

RF0              .EQ  $0000
RF1              .EQ  $0001
RF2              .EQ  $0002
RF3              .EQ  $0003
RF4              .EQ  $0004
RF5              .EQ  $0005
RF6              .EQ  $0006
RF7              .EQ  $0007


;----- DDRG Bits -----------------------------------------------------
TRISG0           .EQ  $0000
TRISG1           .EQ  $0001
TRISG2           .EQ  $0002
TRISG3           .EQ  $0003
TRISG4           .EQ  $0004

RG0              .EQ  $0000
RG1              .EQ  $0001
RG2              .EQ  $0002
RG3              .EQ  $0003
RG4              .EQ  $0004


;----- TRISG Bits -----------------------------------------------------
TRISG0           .EQ  $0000
TRISG1           .EQ  $0001
TRISG2           .EQ  $0002
TRISG3           .EQ  $0003
TRISG4           .EQ  $0004

RG0              .EQ  $0000
RG1              .EQ  $0001
RG2              .EQ  $0002
RG3              .EQ  $0003
RG4              .EQ  $0004


;----- OSCTUNE Bits -----------------------------------------------------
PLLEN            .EQ  $0006
INTSRC           .EQ  $0007

TUN0             .EQ  $0000
TUN1             .EQ  $0001
TUN2             .EQ  $0002
TUN3             .EQ  $0003
TUN4             .EQ  $0004


;----- PIE1 Bits -----------------------------------------------------
TMR1IE           .EQ  $0000
TMR2IE           .EQ  $0001
CCP1IE           .EQ  $0002
SSPIE            .EQ  $0003
TXIE             .EQ  $0004
RCIE             .EQ  $0005
ADIE             .EQ  $0006

TX1IE            .EQ  $0004
RC1IE            .EQ  $0005


;----- PIR1 Bits -----------------------------------------------------
TMR1IF           .EQ  $0000
TMR2IF           .EQ  $0001
CCP1IF           .EQ  $0002
SSPIF            .EQ  $0003
TXIF             .EQ  $0004
RCIF             .EQ  $0005
ADIF             .EQ  $0006

TX1IF            .EQ  $0004
RC1IF            .EQ  $0005


;----- IPR1 Bits -----------------------------------------------------
TMR1IP           .EQ  $0000
TMR2IP           .EQ  $0001
CCP1IP           .EQ  $0002
SSPIP            .EQ  $0003
TXIP             .EQ  $0004
RCIP             .EQ  $0005
ADIP             .EQ  $0006

TX1IP            .EQ  $0004
RC1IP            .EQ  $0005


;----- PIE2 Bits -----------------------------------------------------
CCP2IE           .EQ  $0000
TMR3IE           .EQ  $0001
HLVDIE           .EQ  $0002
BCLIE            .EQ  $0003
CMIE             .EQ  $0006
OSCFIE           .EQ  $0007

LVDIE            .EQ  $0002


;----- PIR2 Bits -----------------------------------------------------
CCP2IF           .EQ  $0000
TMR3IF           .EQ  $0001
HLVDIF           .EQ  $0002
BCLIF            .EQ  $0003
CMIF             .EQ  $0006
OSCFIF           .EQ  $0007

LVDIF            .EQ  $0002


;----- IPR2 Bits -----------------------------------------------------
CCP2IP           .EQ  $0000
TMR3IP           .EQ  $0001
HLVDIP           .EQ  $0002
BCLIP            .EQ  $0003
CMIP             .EQ  $0006
OSCFIP           .EQ  $0007

LVDIP            .EQ  $0002


;----- PIE3 Bits -----------------------------------------------------
TX2IE            .EQ  $0004
RC2IE            .EQ  $0005
LCDIE            .EQ  $0006


;----- PIR3 Bits -----------------------------------------------------
TX2IF            .EQ  $0004
RC2IF            .EQ  $0005
LCDIF            .EQ  $0006


;----- IPR3 Bits -----------------------------------------------------
TX2IP            .EQ  $0004
RC2IP            .EQ  $0005
LCDIP            .EQ  $0006


;----- RCSTA Bits -----------------------------------------------------
RX9D             .EQ  $0000
OERR             .EQ  $0001
FERR             .EQ  $0002
ADDEN            .EQ  $0003
CREN             .EQ  $0004
SREN             .EQ  $0005
RX9              .EQ  $0006
SPEN             .EQ  $0007

ADEN             .EQ  $0003

RX9D1            .EQ  $0000
OERR1            .EQ  $0001
FERR1            .EQ  $0002
ADDEN1           .EQ  $0003
CREN1            .EQ  $0004
SREN1            .EQ  $0005
RX91             .EQ  $0006
SPEN1            .EQ  $0007


;----- RCSTA1 Bits -----------------------------------------------------
RX9D             .EQ  $0000
OERR             .EQ  $0001
FERR             .EQ  $0002
ADDEN            .EQ  $0003
CREN             .EQ  $0004
SREN             .EQ  $0005
RX9              .EQ  $0006
SPEN             .EQ  $0007

ADEN             .EQ  $0003

RX9D1            .EQ  $0000
OERR1            .EQ  $0001
FERR1            .EQ  $0002
ADDEN1           .EQ  $0003
CREN1            .EQ  $0004
SREN1            .EQ  $0005
RX91             .EQ  $0006
SPEN1            .EQ  $0007


;----- TXSTA Bits -----------------------------------------------------
TX9D             .EQ  $0000
TRMT             .EQ  $0001
BRGH             .EQ  $0002
SENDB            .EQ  $0003
SYNC             .EQ  $0004
TXEN             .EQ  $0005
TX9              .EQ  $0006
CSRC             .EQ  $0007

TX9D1            .EQ  $0000
TRMT1            .EQ  $0001
BRGH1            .EQ  $0002
SENDB1           .EQ  $0003
SYNC1            .EQ  $0004
TXEN1            .EQ  $0005
TX91             .EQ  $0006
CSRC1            .EQ  $0007


;----- TXSTA1 Bits -----------------------------------------------------
TX9D             .EQ  $0000
TRMT             .EQ  $0001
BRGH             .EQ  $0002
SENDB            .EQ  $0003
SYNC             .EQ  $0004
TXEN             .EQ  $0005
TX9              .EQ  $0006
CSRC             .EQ  $0007

TX9D1            .EQ  $0000
TRMT1            .EQ  $0001
BRGH1            .EQ  $0002
SENDB1           .EQ  $0003
SYNC1            .EQ  $0004
TXEN1            .EQ  $0005
TX91             .EQ  $0006
CSRC1            .EQ  $0007


;----- T3CON Bits -----------------------------------------------------
TMR3ON           .EQ  $0000
TMR3CS           .EQ  $0001
NOT_T3SYNC       .EQ  $0002
T3CCP1           .EQ  $0003
T3CCP2           .EQ  $0006
RD16             .EQ  $0007

T3CKPS0          .EQ  $0004
T3CKPS1          .EQ  $0005

T3SYNC           .EQ  $0002

T3INSYNC         .EQ  $0002


;----- CMCON Bits -----------------------------------------------------
CIS              .EQ  $0003
C1INV            .EQ  $0004
C2INV            .EQ  $0005
C1OUT            .EQ  $0006
C2OUT            .EQ  $0007

CM0              .EQ  $0000
CM1              .EQ  $0001
CM2              .EQ  $0002


;----- CVRCON Bits -----------------------------------------------------
CVRSS            .EQ  $0004
CVRR             .EQ  $0005
CVROE            .EQ  $0006
CVREN            .EQ  $0007

CVR0             .EQ  $0000
CVR1             .EQ  $0001
CVR2             .EQ  $0002
CVR3             .EQ  $0003
CVREF            .EQ  $0004


;----- CCP2CON Bits -----------------------------------------------------
CCP2M0           .EQ  $0000
CCP2M1           .EQ  $0001
CCP2M2           .EQ  $0002
CCP2M3           .EQ  $0003
DCCP2Y           .EQ  $0004
DCCP2X           .EQ  $0005

CCP2Y            .EQ  $0004
CCP2X            .EQ  $0005

DC2B0            .EQ  $0004
DC2B1            .EQ  $0005


;----- CCP1CON Bits -----------------------------------------------------
CCP1M0           .EQ  $0000
CCP1M1           .EQ  $0001
CCP1M2           .EQ  $0002
CCP1M3           .EQ  $0003
DCCP1Y           .EQ  $0004
DCCP1X           .EQ  $0005

CCP1Y            .EQ  $0004
CCP1X            .EQ  $0005

DC1B0            .EQ  $0004
DC1B1            .EQ  $0005


;----- ADCON2 Bits -----------------------------------------------------
ADFM             .EQ  $0007

ADCS0            .EQ  $0000
ADCS1            .EQ  $0001
ADCS2            .EQ  $0002
ACQT0            .EQ  $0003
ACQT1            .EQ  $0004
ACQT2            .EQ  $0005


;----- ADCON1 Bits -----------------------------------------------------
PCFG0            .EQ  $0000
PCFG1            .EQ  $0001
PCFG2            .EQ  $0002
PCFG3            .EQ  $0003
VCFG0            .EQ  $0004
VCFG1            .EQ  $0005


;----- ADCON0 Bits -----------------------------------------------------
ADON             .EQ  $0000
GO_NOT_DONE      .EQ  $0001

GO_DONE          .EQ  $0001
CHS0             .EQ  $0002
CHS1             .EQ  $0003
CHS2             .EQ  $0004
CHS3             .EQ  $0005

DONE             .EQ  $0001

GO               .EQ  $0001

NOT_DONE         .EQ  $0001


;----- SSPCON2 Bits -----------------------------------------------------
SEN              .EQ  $0000
RSEN             .EQ  $0001
PEN              .EQ  $0002
RCEN             .EQ  $0003
ACKEN            .EQ  $0004
ACKDT            .EQ  $0005
ACKSTAT          .EQ  $0006
GCEN             .EQ  $0007


;----- SSPCON1 Bits -----------------------------------------------------
CKP              .EQ  $0004
SSPEN            .EQ  $0005
SSPOV            .EQ  $0006
WCOL             .EQ  $0007

SSPM0            .EQ  $0000
SSPM1            .EQ  $0001
SSPM2            .EQ  $0002
SSPM3            .EQ  $0003


;----- SSPSTAT Bits -----------------------------------------------------
BF               .EQ  $0000
UA               .EQ  $0001
R_NOT_W          .EQ  $0002
S                .EQ  $0003
P                .EQ  $0004
D_NOT_A          .EQ  $0005
CKE              .EQ  $0006
SMP              .EQ  $0007

R_W              .EQ  $0002
D_A              .EQ  $0005

I2C_READ         .EQ  $0002
I2C_START        .EQ  $0003
I2C_STOP         .EQ  $0004
I2C_DAT          .EQ  $0005

NOT_W            .EQ  $0002
NOT_A            .EQ  $0005

NOT_WRITE        .EQ  $0002
NOT_ADDRESS      .EQ  $0005

READ_WRITE       .EQ  $0002
DATA_ADDRESS     .EQ  $0005

R                .EQ  $0002
D                .EQ  $0005


;----- T2CON Bits -----------------------------------------------------
TMR2ON           .EQ  $0002

T2CKPS0          .EQ  $0000
T2CKPS1          .EQ  $0001
T2OUTPS0         .EQ  $0003
T2OUTPS1         .EQ  $0004
T2OUTPS2         .EQ  $0005
T2OUTPS3         .EQ  $0006


;----- T1CON Bits -----------------------------------------------------
TMR1ON           .EQ  $0000
TMR1CS           .EQ  $0001
NOT_T1SYNC       .EQ  $0002
T1OSCEN          .EQ  $0003
T1RUN            .EQ  $0006
RD16             .EQ  $0007

T1INSYNC         .EQ  $0002
T1CKPS0          .EQ  $0004
T1CKPS1          .EQ  $0005

T1SYNC           .EQ  $0002


;----- RCON Bits -----------------------------------------------------
NOT_BOR          .EQ  $0000
NOT_POR          .EQ  $0001
NOT_PD           .EQ  $0002
NOT_TO           .EQ  $0003
NOT_RI           .EQ  $0004
SBOREN           .EQ  $0006
IPEN             .EQ  $0007

BOR              .EQ  $0000
POR              .EQ  $0001
PD               .EQ  $0002
TO               .EQ  $0003
RI               .EQ  $0004


;----- WDTCON Bits -----------------------------------------------------
SWDTEN           .EQ  $0000

SWDTE            .EQ  $0000


;----- HLVDCON Bits -----------------------------------------------------
HLVDEN           .EQ  $0004
IRVST            .EQ  $0005
VDIRMAG          .EQ  $0007

HLVDL0           .EQ  $0000
HLVDL1           .EQ  $0001
HLVDL2           .EQ  $0002
HLVDL3           .EQ  $0003

LVDL0            .EQ  $0000
LVDL1            .EQ  $0001
LVDL2            .EQ  $0002
LVDL3            .EQ  $0003
LVDEN            .EQ  $0004

LVV0             .EQ  $0000
LVV1             .EQ  $0001
LVV2             .EQ  $0002
LVV3             .EQ  $0003
BGST             .EQ  $0005


;----- LVDCON Bits -----------------------------------------------------
HLVDEN           .EQ  $0004
IRVST            .EQ  $0005
VDIRMAG          .EQ  $0007

HLVDL0           .EQ  $0000
HLVDL1           .EQ  $0001
HLVDL2           .EQ  $0002
HLVDL3           .EQ  $0003

LVDL0            .EQ  $0000
LVDL1            .EQ  $0001
LVDL2            .EQ  $0002
LVDL3            .EQ  $0003
LVDEN            .EQ  $0004

LVV0             .EQ  $0000
LVV1             .EQ  $0001
LVV2             .EQ  $0002
LVV3             .EQ  $0003
BGST             .EQ  $0005


;----- OSCCON Bits -----------------------------------------------------
IOFS             .EQ  $0002
OSTS             .EQ  $0003
IDLEN            .EQ  $0007

SCS0             .EQ  $0000
SCS1             .EQ  $0001
FLTS             .EQ  $0002
IRCF0            .EQ  $0004
IRCF1            .EQ  $0005
IRCF2            .EQ  $0006


;----- T0CON Bits -----------------------------------------------------
PSA              .EQ  $0003
T0SE             .EQ  $0004
T0CS             .EQ  $0005
T08BIT           .EQ  $0006
TMR0ON           .EQ  $0007

T0PS0            .EQ  $0000
T0PS1            .EQ  $0001
T0PS2            .EQ  $0002


;----- STATUS Bits -----------------------------------------------------
C                .EQ  $0000
DC               .EQ  $0001
Z                .EQ  $0002
OV               .EQ  $0003
N                .EQ  $0004


;----- INTCON3 Bits -----------------------------------------------------
INT1IF           .EQ  $0000
INT2IF           .EQ  $0001
INT3IF           .EQ  $0002
INT1IE           .EQ  $0003
INT2IE           .EQ  $0004
INT3IE           .EQ  $0005
INT1IP           .EQ  $0006
INT2IP           .EQ  $0007

INT1F            .EQ  $0000
INT2F            .EQ  $0001
INT3F            .EQ  $0002
INT1E            .EQ  $0003
INT2E            .EQ  $0004
INT3E            .EQ  $0005
INT1P            .EQ  $0006
INT2P            .EQ  $0007


;----- INTCON2 Bits -----------------------------------------------------
RBIP             .EQ  $0000
INT3IP           .EQ  $0001
TMR0IP           .EQ  $0002
INTEDG3          .EQ  $0003
INTEDG2          .EQ  $0004
INTEDG1          .EQ  $0005
INTEDG0          .EQ  $0006
NOT_RBPU         .EQ  $0007

INT3P            .EQ  $0001
T0IP             .EQ  $0002
RBPU             .EQ  $0007


;----- INTCON Bits -----------------------------------------------------
RBIF             .EQ  $0000
INT0IF           .EQ  $0001
TMR0IF           .EQ  $0002
RBIE             .EQ  $0003
INT0IE           .EQ  $0004
TMR0IE           .EQ  $0005
PEIE_GIEL        .EQ  $0006
GIE_GIEH         .EQ  $0007

INT0F            .EQ  $0001
T0IF             .EQ  $0002
INT0E            .EQ  $0004
T0IE             .EQ  $0005
PEIE             .EQ  $0006
GIE              .EQ  $0007

GIEL             .EQ  $0006
GIEH             .EQ  $0007


;----- STKPTR Bits -----------------------------------------------------
STKUNF           .EQ  $0006
STKFUL           .EQ  $0007

STKPTR0          .EQ  $0000
STKPTR1          .EQ  $0001
STKPTR2          .EQ  $0002
STKPTR3          .EQ  $0003
STKPTR4          .EQ  $0004
STKOVF           .EQ  $0007



;==========================================================================
;
;       RAM Definitions
;
;==========================================================================

_MAXRAM          .EQ  $0FFF

;==========================================================================
;
;   IMPORTANT: For the PIC18 devices, the __CONFIG directive has been
;              superseded by the CONFIG directive.  The following settings
;              are available for this device.
;
;   Oscillator:
;     OSC = LP             LP oscillator
;     OSC = XT             XT oscillator
;     OSC = HS             HS oscillator
;     OSC = RC             External RC oscillator, CLKO function on RA6
;     OSC = EC             EC oscillator, CLKO function on RA6
;     OSC = ECIO           EC oscillator, port function on RA6
;     OSC = HSPLL          HS oscillator, PLL enabled (clock frequency = 4 x FOSC1)
;     OSC = RCIO           External RC oscillator, port function on RA6
;     OSC = INTIO67        Internal oscillator block, port function on RA6 and RA7
;     OSC = INTIO7         Internal oscillator block, CLKO function on RA6, port function on RA7
;
;   Fail-Safe Clock Monitor Enable:
;     FCMEN = OFF          Fail-Safe Clock Monitor disabled
;     FCMEN = ON           Fail-Safe Clock Monitor enabled
;
;   Internal External Switch Over Mode:
;     IESO = OFF           Oscillator Switchover mode disabled
;     IESO = ON            Oscillator Switchover mode enabled
;
;   Power Up Timer:
;     PWRT = ON            PWRT enabled
;     PWRT = OFF           PWRT disabled
;
;   Brown Out Detect:
;     BOREN = OFF          Brown-out Reset disabled in hardware and software
;     BOREN = ON           Brown-out Reset enabled and controlled by software (SBOREN is enabled)
;     BOREN = NOSLP        Brown-out Reset enabled in hardware only and disabled in Sleep mode (SBOREN is disabled)
;     BOREN = SBORDIS      Brown-out Reset enabled in hardware only (SBOREN is disabled)
;
;   Brown Out Voltage:
;     BORV = 0             VBOR set to 4.6V
;     BORV = 1             VBOR set to 4.3V
;     BORV = 2             VBOR set to 2.8V
;     BORV = 3             VBOR set to 2.1V
;
;   Watchdog Timer:
;     WDT = OFF            WDT disabled (control is placed on the SWDTEN bit)
;     WDT = ON             WDT enabled
;
;   Watchdog Postscaler:
;     WDTPS = 1            1:1
;     WDTPS = 2            1:2
;     WDTPS = 4            1:4
;     WDTPS = 8            1:8
;     WDTPS = 16           1:16
;     WDTPS = 32           1:32
;     WDTPS = 64           1:64
;     WDTPS = 128          1:128
;     WDTPS = 256          1:256
;     WDTPS = 512          1:512
;     WDTPS = 1024         1:1024
;     WDTPS = 2048         1:2048
;     WDTPS = 4096         1:4096
;     WDTPS = 8192         1:8192
;     WDTPS = 16384        1:16384
;     WDTPS = 32768        1:32768
;
;   CCP2 Mux:
;     CCP2MX = PORTBE      CCP2 input/output is multiplexed with RE7
;     CCP2MX = PORTC       CCP2 input/output is multiplexed with RC1
;
;   Low Power Timer1 Osc enable:
;     LPT1OSC = OFF        Timer1 configured for higher power operation
;     LPT1OSC = ON         Timer1 configured for low-power operation
;
;   Master Clear Enable:
;     MCLRE = OFF          RG5 input pin enabled; MCLR disabled
;     MCLRE = ON           MCLR pin enabled; RG5 input pin disabled
;
;   Stack Overflow Reset:
;     STVREN = OFF         Stack full/underflow will not cause Reset
;     STVREN = ON          Stack full/underflow will cause Reset
;
;   Extended Instruction Set Enable bit:
;     XINST = OFF          Instruction set extension and Indexed Addressing mode disabled (Legacy mode)
;     XINST = ON           Instruction set extension and Indexed Addressing mode enabled
;
;   Background Debugger Enable bit:
;     DEBUG = ON           Background debugger enabled, RB6 and RB7 are dedicated to In-Circuit Debug
;     DEBUG = OFF          Background debugger disabled, RB6 and RB7 configured as general purpose I/O pins
;
;   Code Protect 00000-03FFF:
;     CP = ON              Program memory block (000000-003FFFh) code-protected
;     CP = OFF             Program memory block (000000-003FFFh) not code-protected
;
;==========================================================================
;==========================================================================
;
;       Configuration Bits
;
;   NAME            Address
;   CONFIG1H        300001h
;   CONFIG2L        300002h
;   CONFIG2H        300003h
;   CONFIG3H        300005h
;   CONFIG4L        300006h
;   CONFIG5L        300008h
;
;==========================================================================

; The following is an assignment of address values for all of the
; configuration registers for the purpose of table reads
_CONFIG1H       .EQ  $300001
_CONFIG2L       .EQ  $300002
_CONFIG2H       .EQ  $300003
_CONFIG3H       .EQ  $300005
_CONFIG4L       .EQ  $300006
_CONFIG5L       .EQ  $300008

;----- CONFIG1H Options --------------------------------------------------
_OSC_LP_1H           .EQ  $F0  LP oscillator
_OSC_XT_1H           .EQ  $F1  XT oscillator
_OSC_HS_1H           .EQ  $F2  HS oscillator
_OSC_RC_1H           .EQ  $F3  External RC oscillator, CLKO function on RA6
_OSC_EC_1H           .EQ  $F4  EC oscillator, CLKO function on RA6
_OSC_ECIO_1H         .EQ  $F5  EC oscillator, port function on RA6
_OSC_HSPLL_1H        .EQ  $F6  HS oscillator, PLL enabled (clock frequency = 4 x FOSC1)
_OSC_RCIO_1H         .EQ  $F7  External RC oscillator, port function on RA6
_OSC_INTIO67_1H      .EQ  $F8  Internal oscillator block, port function on RA6 and RA7
_OSC_INTIO7_1H       .EQ  $F9  Internal oscillator block, CLKO function on RA6, port function on RA7

_FCMEN_OFF_1H        .EQ  $BF  Fail-Safe Clock Monitor disabled
_FCMEN_ON_1H         .EQ  $FF  Fail-Safe Clock Monitor enabled

_IESO_OFF_1H         .EQ  $7F  Oscillator Switchover mode disabled
_IESO_ON_1H          .EQ  $FF  Oscillator Switchover mode enabled

;----- CONFIG2L Options --------------------------------------------------
_PWRT_ON_2L          .EQ  $FE  PWRT enabled
_PWRT_OFF_2L         .EQ  $FF  PWRT disabled

_BOREN_OFF_2L        .EQ  $F9  Brown-out Reset disabled in hardware and software
_BOREN_ON_2L         .EQ  $FB  Brown-out Reset enabled and controlled by software (SBOREN is enabled)
_BOREN_NOSLP_2L      .EQ  $FD  Brown-out Reset enabled in hardware only and disabled in Sleep mode (SBOREN is disabled)
_BOREN_SBORDIS_2L    .EQ  $FF  Brown-out Reset enabled in hardware only (SBOREN is disabled)

_BORV_0_2L           .EQ  $E7  VBOR set to 4.6V
_BORV_1_2L           .EQ  $EF  VBOR set to 4.3V
_BORV_2_2L           .EQ  $F7  VBOR set to 2.8V
_BORV_3_2L           .EQ  $FF  VBOR set to 2.1V

;----- CONFIG2H Options --------------------------------------------------
_WDT_OFF_2H          .EQ  $FE  WDT disabled (control is placed on the SWDTEN bit)
_WDT_ON_2H           .EQ  $FF  WDT enabled

_WDTPS_1_2H          .EQ  $E1  1:1
_WDTPS_2_2H          .EQ  $E3  1:2
_WDTPS_4_2H          .EQ  $E5  1:4
_WDTPS_8_2H          .EQ  $E7  1:8
_WDTPS_16_2H         .EQ  $E9  1:16
_WDTPS_32_2H         .EQ  $EB  1:32
_WDTPS_64_2H         .EQ  $ED  1:64
_WDTPS_128_2H        .EQ  $EF  1:128
_WDTPS_256_2H        .EQ  $F1  1:256
_WDTPS_512_2H        .EQ  $F3  1:512
_WDTPS_1024_2H       .EQ  $F5  1:1024
_WDTPS_2048_2H       .EQ  $F7  1:2048
_WDTPS_4096_2H       .EQ  $F9  1:4096
_WDTPS_8192_2H       .EQ  $FB  1:8192
_WDTPS_16384_2H      .EQ  $FD  1:16384
_WDTPS_32768_2H      .EQ  $FF  1:32768

;----- CONFIG3H Options --------------------------------------------------
_CCP2MX_PORTBE_3H    .EQ  $FE  CCP2 input/output is multiplexed with RE7
_CCP2MX_PORTC_3H     .EQ  $FF  CCP2 input/output is multiplexed with RC1

_LPT1OSC_OFF_3H      .EQ  $FB  Timer1 configured for higher power operation
_LPT1OSC_ON_3H       .EQ  $FF  Timer1 configured for low-power operation

_MCLRE_OFF_3H        .EQ  $7F  RG5 input pin enabled; MCLR disabled
_MCLRE_ON_3H         .EQ  $FF  MCLR pin enabled; RG5 input pin disabled

;----- CONFIG4L Options --------------------------------------------------
_STVREN_OFF_4L       .EQ  $FE  Stack full/underflow will not cause Reset
_STVREN_ON_4L        .EQ  $FF  Stack full/underflow will cause Reset

_XINST_OFF_4L        .EQ  $BF  Instruction set extension and Indexed Addressing mode disabled (Legacy mode)
_XINST_ON_4L         .EQ  $FF  Instruction set extension and Indexed Addressing mode enabled

_DEBUG_ON_4L         .EQ  $7F  Background debugger enabled, RB6 and RB7 are dedicated to In-Circuit Debug
_DEBUG_OFF_4L        .EQ  $FF  Background debugger disabled, RB6 and RB7 configured as general purpose I/O pins

;----- CONFIG5L Options --------------------------------------------------
_CP_ON_5L            .EQ  $FE  Program memory block (000000-003FFFh) code-protected
_CP_OFF_5L           .EQ  $FF  Program memory block (000000-003FFFh) not code-protected


;----- DEVID Equates --------------------------------------------------
_DEVID1          .EQ  $3FFFFE
_DEVID2          .EQ  $3FFFFF

;----- IDLOC Equates --------------------------------------------------
_IDLOC0          .EQ  $200000
_IDLOC1          .EQ  $200001
_IDLOC2          .EQ  $200002
_IDLOC3          .EQ  $200003
_IDLOC4          .EQ  $200004
_IDLOC5          .EQ  $200005
_IDLOC6          .EQ  $200006
_IDLOC7          .EQ  $200007
