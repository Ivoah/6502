                .LF     test.lst
;---------------------------------------------------------------------------
;   mega.asm
;
;   Opcode test for the SB-Assembler AVR cross family
;
;   Valid for Enhanced Core up to 4M.
;
;---------------------------------------------------------------------------

                .CR     AVR     And now for something completely different
                .FA     ENHANCED4M    (tested against Atmel-0856 document)

                .TF     test.hex, int
                .OR     $2000   Avoid range errors for jumps and calls
                .LI     TON

;---------------------------------------------------------------------------
; Inherent addressing mode
;---------------------------------------------------------------------------

                BREAK
                CLC
                CLH
                CLI
                CLN
                CLS
                CLT
                CLV
                CLZ
                EICALL
                EIJMP
                ICALL
                IJMP
                NOP
                RET
                RETI
                SEC
                SEH
                SEI
                SEN
                SES
                SET
                SEV
                SEZ
                SLEEP
                WDR

;---------------------------------------------------------------------------
; Register pair operand instructions
;---------------------------------------------------------------------------

                ADC     R1, R1
                ADC     R1, R2
                ADC     R1, R4
                ADC     R1, R8
                ADC     R1, R16
                ADC     R2, R1
                ADC     R4, R1
                ADC     R8, R1
                ADC     R16, R1

                ADD     1, 1            Numeric values are translated to
                ADD     1, 2             registers automatically
                ADD     1, 4
                ADD     1, 8
                ADD     1, 16
                ADD     2, 1
                ADD     4, 1
                ADD     8, 1
                ADD     16, 1

                AND     R1, R1
                AND     R1, R2
                AND     R1, R4
                AND     R1, R8
                AND     R1, R16
                AND     R2, R1
                AND     R4, R1
                AND     R8, R1
                AND     R16, R1

                CP      R1, R1
                CP      R1, R2
                CP      R1, R4
                CP      R1, R8
                CP      R1, R16
                CP      R2, R1
                CP      R4, R1
                CP      R8, R1
                CP      R16, R1

                CPC     R1, R1
                CPC     R1, R2
                CPC     R1, R4
                CPC     R1, R8
                CPC     R1, R16
                CPC     R2, R1
                CPC     R4, R1
                CPC     R8, R1
                CPC     R16, R1

                CPSE    R1, R1
                CPSE    R1, R2
                CPSE    R1, R4
                CPSE    R1, R8
                CPSE    R1, R16
                CPSE    R2, R1
                CPSE    R4, R1
                CPSE    R8, R1
                CPSE    R16, R1

                EOR     R1, R1
                EOR     R1, R2
                EOR     R1, R4
                EOR     R1, R8
                EOR     R1, R16
                EOR     R2, R1
                EOR     R4, R1
                EOR     R8, R1
                EOR     R16, R1

                FMUL    R17, R17
                FMUL    R17, R18
                FMUL    R17, R20
                FMUL    R18, R17
                FMUL    R20, R17

                FMULS   R17, R17
                FMULS   R17, R18
                FMULS   R17, R20
                FMULS   R18, R17
                FMULS   R20, R17

                FMULSU  R17, R17
                FMULSU  R17, R18
                FMULSU  R17, R20
                FMULSU  R18, R17
                FMULSU  R20, R17

                MOV     R1, R1
                MOV     R1, R2
                MOV     R1, R4
                MOV     R1, R8
                MOV     R1, R16
                MOV     R2, R1
                MOV     R4, R1
                MOV     R8, R1
                MOV     R16, R1

                MOVW    R0, R0
                MOVW    R1, R1      Either pair may be used
                MOVW    R2, R2
                MOVW    R2, R3      Even in mixed form
                MOVW    R2, R4
                MOVW    R2, R8
                MOVW    R2, R16
                MOVW    R4, R2
                MOVW    R8, R2
                MOVW    R16, R2

                MUL     R1, R1
                MUL     R1, R2
                MUL     R1, R4
                MUL     R1, R8
                MUL     R1, R16
                MUL     R2, R1
                MUL     R4, R1
                MUL     R8, R1
                MUL     R16, R1

                MULS    R17, R17
                MULS    R17, R18
                MULS    R17, R20
                MULS    R17, R24
                MULS    R18, R17
                MULS    R20, R17
                MULS    R24, R17

                MULSU   R17, R17
                MULSU   R17, R18
                MULSU   R17, R20
                MULSU   R18, R17
                MULSU   R20, R17

                OR      R1, R1
                OR      R1, R2
                OR      R1, R4
                OR      R1, R8
                OR      R1, R16
                OR      R2, R1
                OR      R4, R1
                OR      R8, R1
                OR      R16, R1

                SBC     R1, R1
                SBC     R1, R2
                SBC     R1, R4
                SBC     R1, R8
                SBC     R1, R16
                SBC     R2, R1
                SBC     R4, R1
                SBC     R8, R1
                SBC     R16, R1

                SUB     R1, R1
                SUB     R1, R2
                SUB     R1, R4
                SUB     R1, R8
                SUB     R1, R16
                SUB     R2, R1
                SUB     R4, R1
                SUB     R8, R1
                SUB     R16, R1

;---------------------------------------------------------------------------
; Register immediate operand instructions
;---------------------------------------------------------------------------

                ADIW    R24, 1      Constant value is not checked on range
                ADIW    R26, 2
                ADIW    R28, 4
                ADIW    R30, 8
                ADIW    R24, 16
                ADIW    R26, 32
                ADIW    R28, 1
                ADIW    R30, 2
                ADIW    R24, 4
                ADIW    R26, 8
                ADIW    R28, 16
                ADIW    R30, 32

                ANDI    R17, 1
                ANDI    R17, 2
                ANDI    R17, 4
                ANDI    R17, 8
                ANDI    R17, 16
                ANDI    R17, 32
                ANDI    R17, 64
                ANDI    R17, 128
                ANDI    R18, 1
                ANDI    R20, 1
                ANDI    R24, 1
                ANDI    R17, #$12345678     # Prefix is optional (use LSB)
                ANDI    R17, /$12345678     / Use 2nd LSB
                ANDI    R17, =$12345678     = User 2nd MSB
                ANDI    R17, \$12345678     \ Use MSB

                CBR     R17, 1
                CBR     R17, 2
                CBR     R17, 4
                CBR     R17, 8
                CBR     R17, 16
                CBR     R17, 32
                CBR     R17, 64
                CBR     R17, 128
                CBR     R18, 1
                CBR     R20, 1
                CBR     R24, 1

                CPI     R17, 1
                CPI     R17, 2
                CPI     R17, 4
                CPI     R17, 8
                CPI     R17, 16
                CPI     R17, 32
                CPI     R17, 64
                CPI     R17, 128
                CPI     R18, 1
                CPI     R20, 1
                CPI     R24, 1

                LDI     R17, 1
                LDI     R17, 2
                LDI     R17, 4
                LDI     R17, 8
                LDI     R17, 16
                LDI     R17, 32
                LDI     R17, 64
                LDI     R17, 128
                LDI     R18, 1
                LDI     R20, 1
                LDI     R24, 1

                ORI     R17, 1
                ORI     R17, 2
                ORI     R17, 4
                ORI     R17, 8
                ORI     R17, 16
                ORI     R17, 32
                ORI     R17, 64
                ORI     R17, 128
                ORI     R18, 1
                ORI     R20, 1
                ORI     R24, 1

                SBCI    R17, 1
                SBCI    R17, 2
                SBCI    R17, 4
                SBCI    R17, 8
                SBCI    R17, 16
                SBCI    R17, 32
                SBCI    R17, 64
                SBCI    R17, 128
                SBCI    R18, 1
                SBCI    R20, 1
                SBCI    R24, 1

                SBIW    R24, 1      Constant value is not checked on range
                SBIW    R26, 2
                SBIW    R28, 4
                SBIW    R30, 8
                SBIW    R24, 16
                SBIW    R26, 32
                SBIW    R28, 1
                SBIW    R30, 2
                SBIW    R24, 4
                SBIW    R26, 8
                SBIW    R28, 16
                SBIW    R30, 32

                SBR     R17, 1
                SBR     R17, 2
                SBR     R17, 4
                SBR     R17, 8
                SBR     R17, 16
                SBR     R17, 32
                SBR     R17, 64
                SBR     R17, 128
                SBR     R18, 1
                SBR     R20, 1
                SBR     R24, 1

                SUBI    R17, 1
                SUBI    R17, 2
                SUBI    R17, 4
                SUBI    R17, 8
                SUBI    R17, 16
                SUBI    R17, 32
                SUBI    R17, 64
                SUBI    R17, 128
                SUBI    R18, 1
                SUBI    R20, 1
                SUBI    R24, 1

;---------------------------------------------------------------------------
; Single register operand instructions
;---------------------------------------------------------------------------

                ASR     R1
                ASR     R2
                ASR     R4
                ASR     R8
                ASR     R16

                CLR     R1
                CLR     R2
                CLR     R4
                CLR     R8
                CLR     R16

                COM     R1
                COM     R2
                COM     R4
                COM     R8
                COM     R16

                DEC     R1
                DEC     R2
                DEC     R4
                DEC     R8
                DEC     R16

                INC     R1
                INC     R2
                INC     R4
                INC     R8
                INC     R16

                LSL     R1
                LSL     R2
                LSL     R4
                LSL     R8
                LSL     R16

                LSR     R1
                LSR     R2
                LSR     R4
                LSR     R8
                LSR     R16

                NEG     R1
                NEG     R2
                NEG     R4
                NEG     R8
                NEG     R16

                POP     R1
                POP     R2
                POP     R4
                POP     R8
                POP     R16

                PUSH    R1
                PUSH    R2
                PUSH    R4
                PUSH    R8
                PUSH    R16

                ROL     R1
                ROL     R2
                ROL     R4
                ROL     R8
                ROL     R16

                ROR     R1
                ROR     R2
                ROR     R4
                ROR     R8
                ROR     R16

                SER     R17
                SER     R18
                SER     R20
                SER     R24

                SWAP    R1
                SWAP    R2
                SWAP    R4
                SWAP    R8
                SWAP    R16

                TST     R1
                TST     R2
                TST     R4
                TST     R8
                TST     R16

;---------------------------------------------------------------------------
; Branch instructions
;---------------------------------------------------------------------------

                BRBC    1,$+1-64
                BRBC    1,$+1-32
                BRBC    1,$+1-16
                BRBC    1,$+1-8
                BRBC    1,$+1-4
                BRBC    1,$+1-2
                BRBC    1,$+1
                BRBC    1,$+1+1
                BRBC    1,$+1+2
                BRBC    1,$+1+4
                BRBC    1,$+1+8
                BRBC    1,$+1+16
                BRBC    1,$+1+32
                BRBC    2,$+1
                BRBC    4,$+1

                BRBS    1,$+1-64
                BRBS    1,$+1-32
                BRBS    1,$+1-16
                BRBS    1,$+1-8
                BRBS    1,$+1-4
                BRBS    1,$+1-2
                BRBS    1,$+1
                BRBS    1,$+1+1
                BRBS    1,$+1+2
                BRBS    1,$+1+4
                BRBS    1,$+1+8
                BRBS    1,$+1+16
                BRBS    1,$+1+32
                BRBS    2,$+1
                BRBS    4,$+1

                BRCC    $+1-64
                BRCC    $+1-32
                BRCC    $+1-16
                BRCC    $+1-8
                BRCC    $+1-4
                BRCC    $+1-2
                BRCC    $+1
                BRCC    $+1+1
                BRCC    $+1+2
                BRCC    $+1+4
                BRCC    $+1+8
                BRCC    $+1+16
                BRCC    $+1+32

                BRCS    $+1-64
                BRCS    $+1-32
                BRCS    $+1-16
                BRCS    $+1-8
                BRCS    $+1-4
                BRCS    $+1-2
                BRCS    $+1
                BRCS    $+1+1
                BRCS    $+1+2
                BRCS    $+1+4
                BRCS    $+1+8
                BRCS    $+1+16
                BRCS    $+1+32

                BREQ    $+1-64
                BREQ    $+1-32
                BREQ    $+1-16
                BREQ    $+1-8
                BREQ    $+1-4
                BREQ    $+1-2
                BREQ    $+1
                BREQ    $+1+1
                BREQ    $+1+2
                BREQ    $+1+4
                BREQ    $+1+8
                BREQ    $+1+16
                BREQ    $+1+32

                BRGE    $+1-64
                BRGE    $+1-32
                BRGE    $+1-16
                BRGE    $+1-8
                BRGE    $+1-4
                BRGE    $+1-2
                BRGE    $+1
                BRGE    $+1+1
                BRGE    $+1+2
                BRGE    $+1+4
                BRGE    $+1+8
                BRGE    $+1+16
                BRGE    $+1+32

                BRHC    $+1-64
                BRHC    $+1-32
                BRHC    $+1-16
                BRHC    $+1-8
                BRHC    $+1-4
                BRHC    $+1-2
                BRHC    $+1
                BRHC    $+1+1
                BRHC    $+1+2
                BRHC    $+1+4
                BRHC    $+1+8
                BRHC    $+1+16
                BRHC    $+1+32

                BRHS    $+1-64
                BRHS    $+1-32
                BRHS    $+1-16
                BRHS    $+1-8
                BRHS    $+1-4
                BRHS    $+1-2
                BRHS    $+1
                BRHS    $+1+1
                BRHS    $+1+2
                BRHS    $+1+4
                BRHS    $+1+8
                BRHS    $+1+16
                BRHS    $+1+32

                BRID    $+1-64
                BRID    $+1-32
                BRID    $+1-16
                BRID    $+1-8
                BRID    $+1-4
                BRID    $+1-2
                BRID    $+1
                BRID    $+1+1
                BRID    $+1+2
                BRID    $+1+4
                BRID    $+1+8
                BRID    $+1+16
                BRID    $+1+32

                BRIE    $+1-64
                BRIE    $+1-32
                BRIE    $+1-16
                BRIE    $+1-8
                BRIE    $+1-4
                BRIE    $+1-2
                BRIE    $+1
                BRIE    $+1+1
                BRIE    $+1+2
                BRIE    $+1+4
                BRIE    $+1+8
                BRIE    $+1+16
                BRIE    $+1+32

                BRLO    $+1-64
                BRLO    $+1-32
                BRLO    $+1-16
                BRLO    $+1-8
                BRLO    $+1-4
                BRLO    $+1-2
                BRLO    $+1
                BRLO    $+1+1
                BRLO    $+1+2
                BRLO    $+1+4
                BRLO    $+1+8
                BRLO    $+1+16
                BRLO    $+1+32

                BRLT    $+1-64
                BRLT    $+1-32
                BRLT    $+1-16
                BRLT    $+1-8
                BRLT    $+1-4
                BRLT    $+1-2
                BRLT    $+1
                BRLT    $+1+1
                BRLT    $+1+2
                BRLT    $+1+4
                BRLT    $+1+8
                BRLT    $+1+16
                BRLT    $+1+32

                BRMI    $+1-64
                BRMI    $+1-32
                BRMI    $+1-16
                BRMI    $+1-8
                BRMI    $+1-4
                BRMI    $+1-2
                BRMI    $+1
                BRMI    $+1+1
                BRMI    $+1+2
                BRMI    $+1+4
                BRMI    $+1+8
                BRMI    $+1+16
                BRMI    $+1+32

                BRNE    $+1-64
                BRNE    $+1-32
                BRNE    $+1-16
                BRNE    $+1-8
                BRNE    $+1-4
                BRNE    $+1-2
                BRNE    $+1
                BRNE    $+1+1
                BRNE    $+1+2
                BRNE    $+1+4
                BRNE    $+1+8
                BRNE    $+1+16
                BRNE    $+1+32

                BRPL    $+1-64
                BRPL    $+1-32
                BRPL    $+1-16
                BRPL    $+1-8
                BRPL    $+1-4
                BRPL    $+1-2
                BRPL    $+1
                BRPL    $+1+1
                BRPL    $+1+2
                BRPL    $+1+4
                BRPL    $+1+8
                BRPL    $+1+16
                BRPL    $+1+32

                BRSH    $+1-64
                BRSH    $+1-32
                BRSH    $+1-16
                BRSH    $+1-8
                BRSH    $+1-4
                BRSH    $+1-2
                BRSH    $+1
                BRSH    $+1+1
                BRSH    $+1+2
                BRSH    $+1+4
                BRSH    $+1+8
                BRSH    $+1+16
                BRSH    $+1+32

                BRTC    $+1-64
                BRTC    $+1-32
                BRTC    $+1-16
                BRTC    $+1-8
                BRTC    $+1-4
                BRTC    $+1-2
                BRTC    $+1
                BRTC    $+1+1
                BRTC    $+1+2
                BRTC    $+1+4
                BRTC    $+1+8
                BRTC    $+1+16
                BRTC    $+1+32

                BRTS    $+1-64
                BRTS    $+1-32
                BRTS    $+1-16
                BRTS    $+1-8
                BRTS    $+1-4
                BRTS    $+1-2
                BRTS    $+1
                BRTS    $+1+1
                BRTS    $+1+2
                BRTS    $+1+4
                BRTS    $+1+8
                BRTS    $+1+16
                BRTS    $+1+32

                BRVC    $+1-64
                BRVC    $+1-32
                BRVC    $+1-16
                BRVC    $+1-8
                BRVC    $+1-4
                BRVC    $+1-2
                BRVC    $+1
                BRVC    $+1+1
                BRVC    $+1+2
                BRVC    $+1+4
                BRVC    $+1+8
                BRVC    $+1+16
                BRVC    $+1+32

                BRVS    $+1-64
                BRVS    $+1-32
                BRVS    $+1-16
                BRVS    $+1-8
                BRVS    $+1-4
                BRVS    $+1-2
                BRVS    $+1
                BRVS    $+1+1
                BRVS    $+1+2
                BRVS    $+1+4
                BRVS    $+1+8
                BRVS    $+1+16
                BRVS    $+1+32

;---------------------------------------------------------------------------
; Jump and CALL instructions
;---------------------------------------------------------------------------

                RCALL   $+1-2048
                RCALL   $+1-1024
                RCALL   $+1-512
                RCALL   $+1-256
                RCALL   $+1-128
                RCALL   $+1-64
                RCALL   $+1-32
                RCALL   $+1-16
                RCALL   $+1-8
                RCALL   $+1-4
                RCALL   $+1-2
                RCALL   $+1
                RCALL   $+1+1
                RCALL   $+1+2
                RCALL   $+1+4
                RCALL   $+1+8
                RCALL   $+1+16
                RCALL   $+1+32
                RCALL   $+1+64
                RCALL   $+1+128
                RCALL   $+1+256
                RCALL   $+1+512
                RCALL   $+1+1024

                RJMP    $+1-2048
                RJMP    $+1-1024
                RJMP    $+1-512
                RJMP    $+1-256
                RJMP    $+1-128
                RJMP    $+1-64
                RJMP    $+1-32
                RJMP    $+1-16
                RJMP    $+1-8
                RJMP    $+1-4
                RJMP    $+1-2
                RJMP    $+1
                RJMP    $+1+1
                RJMP    $+1+2
                RJMP    $+1+4
                RJMP    $+1+8
                RJMP    $+1+16
                RJMP    $+1+32
                RJMP    $+1+64
                RJMP    $+1+128
                RJMP    $+1+256
                RJMP    $+1+512
                RJMP    $+1+1024

                CALL    $000001
                CALL    $000002
                CALL    $000004
                CALL    $000008
                CALL    $000010
                CALL    $000020
                CALL    $000040
                CALL    $000080
                CALL    $000100
                CALL    $000200
                CALL    $000400
                CALL    $000800
                CALL    $001000
                CALL    $002000
                CALL    $004000
                CALL    $008000
                CALL    $010000
                CALL    $020000
                CALL    $040000
                CALL    $080000
                CALL    $100000
                CALL    $200000

                JMP     $000001
                JMP     $000002
                JMP     $000004
                JMP     $000008
                JMP     $000010
                JMP     $000020
                JMP     $000040
                JMP     $000080
                JMP     $000100
                JMP     $000200
                JMP     $000400
                JMP     $000800
                JMP     $001000
                JMP     $002000
                JMP     $004000
                JMP     $008000
                JMP     $010000
                JMP     $020000
                JMP     $040000
                JMP     $080000
                JMP     $100000
                JMP     $200000

;---------------------------------------------------------------------------
; Register bit operand instructions
;---------------------------------------------------------------------------

                BLD     R1, 1
                BLD     R1, 2
                BLD     R1, 4
                BLD     R2, 1
                BLD     R4, 1
                BLD     R8, 1
                BLD     R16, 1

                BST     R1, 1
                BST     R1, 2
                BST     R1, 4
                BST     R2, 1
                BST     R4, 1
                BST     R8, 1
                BST     R16, 1

                SBRC    R1, 1
                SBRC    R1, 2
                SBRC    R1, 4
                SBRC    R2, 1
                SBRC    R4, 1
                SBRC    R8, 1
                SBRC    R16, 1

                SBRS    R1, 1
                SBRS    R1, 2
                SBRS    R1, 4
                SBRS    R2, 1
                SBRS    R4, 1
                SBRS    R8, 1
                SBRS    R16, 1

;---------------------------------------------------------------------------
; I/O bit operand instructions
;---------------------------------------------------------------------------

                CBI     1, 1
                CBI     1, 2
                CBI     1, 4
                CBI     2, 1
                CBI     4, 1
                CBI     8, 1
                CBI     16, 1

                SBI     1, 1
                SBI     1, 2
                SBI     1, 4
                SBI     2, 1
                SBI     4, 1
                SBI     8, 1
                SBI     16, 1

                SBIC    1, 1
                SBIC    1, 2
                SBIC    1, 4
                SBIC    2, 1
                SBIC    4, 1
                SBIC    8, 1
                SBIC    16, 1

                SBIS    1, 1
                SBIS    1, 2
                SBIS    1, 4
                SBIS    2, 1
                SBIS    4, 1
                SBIS    8, 1
                SBIS    16, 1

;---------------------------------------------------------------------------
; LD and ST instructions
;---------------------------------------------------------------------------

                LD      R1, X
                LD      R2, X
                LD      R4, X
                LD      R8, X
                LD      R16, X
                LD      R1, X+
                LD      R2, X+
                LD      R4, X+
                LD      R8, X+
                LD      R16, X+
                LD      R1, -X
                LD      R2, -X
                LD      R4, -X
                LD      R8, -X
                LD      R16, -X

                LD      R1, Y
                LD      R2, Y
                LD      R4, Y
                LD      R8, Y
                LD      R16, Y
                LD      R1, Y+
                LD      R2, Y+
                LD      R4, Y+
                LD      R8, Y+
                LD      R16, Y+
                LD      R1, -Y
                LD      R2, -Y
                LD      R4, -Y
                LD      R8, -Y
                LD      R16, -Y

                LDD     R1, Y+1
                LDD     R2, Y+1
                LDD     R4, Y+1
                LDD     R8, Y+1
                LDD     R16, Y+1
                LDD     R1, Y+2
                LDD     R1, Y+4
                LDD     R1, Y+8
                LDD     R1, Y+16
                LDD     R1, Y+32

                LD      R1, Z
                LD      R2, Z
                LD      R4, Z
                LD      R8, Z
                LD      R16, Z
                LD      R1, Z+
                LD      R2, Z+
                LD      R4, Z+
                LD      R8, Z+
                LD      R16, Z+
                LD      R1, -Z
                LD      R2, -Z
                LD      R4, -Z
                LD      R8, -Z
                LD      R16, -Z

                LDD     R1, Z+1
                LDD     R2, Z+1
                LDD     R4, Z+1
                LDD     R8, Z+1
                LDD     R16, Z+1
                LDD     R1, Z+2
                LDD     R1, Z+4
                LDD     R1, Z+8
                LDD     R1, Z+16
                LDD     R1, Z+32

                ST      X, 1
                ST      X, 2
                ST      X, 4
                ST      X, 8
                ST      X, 16
                ST      X+, R1
                ST      X+, R2
                ST      X+, R4
                ST      X+, R8
                ST      X+, R16
                ST      -X, R1
                ST      -X, R2
                ST      -X, R4
                ST      -X, R8
                ST      -X, R16

                ST      Y, R1
                ST      Y, R2
                ST      Y, R4
                ST      Y, R8
                ST      Y, R16
                ST      Y+, R1
                ST      Y+, R2
                ST      Y+, R4
                ST      Y+, R8
                ST      Y+, R16
                ST      -Y, R1
                ST      -Y, R2
                ST      -Y, R4
                ST      -Y, R8
                ST      -Y, R16

                STD     Y+1, R1
                STD     Y+1, R2
                STD     Y+1, R4
                STD     Y+1, R8
                STD     Y+1, R16
                STD     Y+2, R1
                STD     Y+4, R1
                STD     Y+8, R1
                STD     Y+16, R1
                STD     Y+32, R1

                ST      Z, R1
                ST      Z, R2
                ST      Z, R4
                ST      Z, R8
                ST      Z, R16
                ST      Z+, R1
                ST      Z+, R2
                ST      Z+, R4
                ST      Z+, R8
                ST      Z+, R16
                ST      -Z, R1
                ST      -Z, R2
                ST      -Z, R4
                ST      -Z, R8
                ST      -Z, R16

                STD     z+1, R1
                STD     z+1, R2
                STD     z+1, R4
                STD     z+1, R8
                STD     z+1, R16
                STD     z+2, R1
                STD     z+4, R1
                STD     z+8, R1
                STD     z+16, R1
                STD     z+32, R1

;---------------------------------------------------------------------------
; LDS and STS instructions
;---------------------------------------------------------------------------

                LDS     R1, 1
                LDS     R2, 1
                LDS     R4, 1
                LDS     R8, 1
                LDS     R16, 1
                LDS     R1, 2
                LDS     R1, 4
                LDS     R1, 8
                LDS     R1, 16
                LDS     R1, 32
                LDS     R1, 64
                LDS     R1, 128
                LDS     R1, 256
                LDS     R1, 512
                LDS     R1, 1024
                LDS     R1, 2048
                LDS     R1, 4096
                LDS     R1, 8192
                LDS     R1, 16384
                LDS     R1, 32768

                STS     1, R1
                STS     1, R2
                STS     1, R4
                STS     1, R8
                STS     1, R16
                STS     2, R1
                STS     4, R1
                STS     8, R1
                STS     16, R1
                STS     32, R1
                STS     64, R1
                STS     128, R1
                STS     256, R1
                STS     512, R1
                STS     1024, R1
                STS     2048, R1
                STS     4096, R1
                STS     8192, R1
                STS     16384, R1
                STS     32768, R1

;---------------------------------------------------------------------------
; (E)LPM instructions
;---------------------------------------------------------------------------

                ELPM
                ELPM    R1, Z
                ELPM    R2, Z
                ELPM    R4, Z
                ELPM    R8, Z
                ELPM    R16, Z
                ELPM    R1, Z+
                ELPM    R2, Z+
                ELPM    R4, Z+
                ELPM    R8, Z+
                ELPM    R16, Z+

                LPM
                LPM     R1, Z
                LPM     R2, Z
                LPM     R4, Z
                LPM     R8, Z
                LPM     R16, Z
                LPM     R1, Z+
                LPM     R2, Z+
                LPM     R4, Z+
                LPM     R8, Z+
                LPM     R16, Z+

;---------------------------------------------------------------------------
; SPM instructions
;---------------------------------------------------------------------------

                SPM                 Not supported by all devices
                SPM     z           Not supported by all devices
                SPM     z+

;---------------------------------------------------------------------------
; I/O instructions
;---------------------------------------------------------------------------

                IN      R1, 1
                IN      R2, 1
                IN      R4, 1
                IN      R8, 1
                IN      R16, 1
                IN      R1, 2
                IN      R1, 4
                IN      R1, 8
                IN      R1, 16
                IN      R1, 32

                OUT     1, R1
                OUT     1, R2
                OUT     1, R4
                OUT     1, R8
                OUT     1, R16
                OUT     2, R1
                OUT     4, R1
                OUT     8, R1
                OUT     16, R1
                OUT     32, R1

;---------------------------------------------------------------------------
; Bit clear and set instructions
;---------------------------------------------------------------------------

                BCLR    1
                BCLR    2
                BCLR    4

                BSET    1
                BSET    2
                BSET    4

;---------------------------------------------------------------------------
; Immediate addressing mode notation options
;---------------------------------------------------------------------------

DATA            .EQ     $12345678

                LDI     R17, DATA       Normal Atmel notation
                LDI     R17, #DATA      Has same effect as the line above
                LDI     R17, /DATA      Use 2nd byte of long word imm mode
                LDI     R17, =DATA      Use 3d byte of long word imm mode
                LDI     R17, \DATA      Use MSB of long word in imm mode


