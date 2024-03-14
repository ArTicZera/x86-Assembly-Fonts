[BITS    16]

;SI = Char Bitmap from fontbmp.asm
;DI = X pos
;BP = Y pos
;AL = Color
DrawChar:
        pusha

        ;Set pixel function
        mov     ah, 0x0C

        ;BX = First byte of the bitmap
        mov     bx, [si]

        mov     cx, di
        mov     dx, bp

        jmp     .loopX

        .loopY:
                pop     bx

                inc     si
                mov     bx, [si]

                mov     cx, di
                inc     dx

                .loopX:
                        test    bx, 0x80
                        jz      .continue  

                        push    bx  

                        mov     bx, HFONT
                        add     bx, bp                  

                        cmp     dx, bx
                        jae     DrawChar.end

                        pop     bx

                        int     0x10

                .continue:
                        inc     cx

                        shl     bx, 0x01

                        push    bx

                        mov     bx, WFONT
                        add     bx, di

                        cmp     cx, bx
                        jae     .loopY

                        pop     bx

                        jmp     .loopX

DrawChar.end:
        pop     bx

        popa

        ret

;SI = String
;AL = Color
;DI = X pos
;BP = Y pos
PrintString:
        pusha

        ;Moves 8px
        shl     di, 0x03
        shl     bp, 0x03

        .getCharBMP:
                push    ax

                ;CharBMP = Char * 0x08
                mov     al, [si] ;36
                shl     ax, 0x03

                ;Save the result in BX
                mov     bx, ax

                pop     ax

        .printChar:
                push    si

                ;Load ProggyFont in SI
                mov     si, ProggyFont

                ;Go to the char in the font
                add     si, bx

                call    DrawChar

                pop     si

        .nextChar:
                inc     si
                
                add     di, 0x08

                mov     bx, [si]

                cmp     di, WSCREEN
                jae     .nextLine

                cmp     bx, 0x0F
                je      .nextLineChar

                cmp     bx, 0x00
                jne     .getCharBMP

                jmp     PrintString.end

        .nextLine:
                xor     di, di
                add     bp, 0x0A

                cmp     bp, HSCREEN
                jae      PrintString.end

                jmp     .getCharBMP

        .nextLineChar:
                xor     di, di
                add     bp, 0x0A

                jmp     .getCharBMP

PrintString.end:
        popa

        ret
