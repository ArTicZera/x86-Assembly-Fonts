[BITS    16]

;-----------------------------------------------------------------------

;SI = Char Bitmap
;AL = Color
;cursorX = X position (0 to 40)
;cursorY = Y position (0 to 25)
DrawChar:
        pusha

        call    SetupCursor

        mov     ah, 0x0C

        ;Save cursorX and cursorY
        push    word [cursorX]
        push    word [cursorY]

        ;Takes the index and multiply it by 8
        ;To adjust it as chars per screen
        shl     word [cursorX], 0x03
        shl     word [cursorY], 0x03

        ;Now CX and DX contains the result
        mov     cx, [cursorX]
        mov     dx, [cursorY]
        
        ;BX have the first byte of the char's bitmap
        mov     bx, [si]

        jmp     .loopX

        .loopY:
                ;Moves to BX the next char's bitmap byte
                inc     si
                mov     bx, [si]

                ;Go back to where started but in the next line
                mov     cx, [cursorX]
                inc     dx

                ;HFONT + StartY = FinalY
                mov     di, HFONT
                add     di, [cursorY]

                ;If it reaches the FinalY, Then 
                ;Go to the end the drawing routine
                cmp     dx, di
                jae     .end

                .loopX:
                        ;Checks the bitmap's last bit for 0 or 1
                        ;0 -> Continue without drawing
                        ;1 -> Draw the pixel
                        test    bx, 0x80
                        jz      .continue

                        ;Set a pixel
                        int     0x10

                .continue:
                        ;Go to the next position 
                        inc     cx

                        ;Moves the bits to the left, so
                        ;We can get the next as last one
                        shl     bx, 0x01

                        ;WFONT + StartX = FinalX
                        mov     di, WFONT
                        add     di, [cursorX]

                        ;If it reaches the FinalX
                        ;Then go to the next line
                        cmp     cx, di
                        jae     .loopY

                        ;Repeat the process till
                        ;reaches FinalX
                        jmp     .loopX
.end:
        ;Restore cursorX and cursorY values
        pop     word [cursorY]
        pop     word [cursorX]

        ;Goes to the next index
        inc     word [cursorX]

        call    SetupCursor

        popa

        ret

;-----------------------------------------------------------------------

;SI = String
;AL = Color
PrintString:
        pusha

        ;BX and AH needs to be 0x00
        ;To PrintString work with no problems
        xor     bx, bx
        xor     ah, ah

        .getCharBMP:
                push    ax

                ;CharBMP = ASCII * 0x08
                mov     al, [si]
                shl     ax, 0x03

                ;Save the result in BX
                mov     bx, ax

                pop     ax

        .printChar:
                ;BX has the char bitmap

                ;Now we need to find the location of it
                ;In The ProggyCleanTT Font.

                push    si

                ;FONT + CharBMP = CharBMP Index
                mov     si, ProggyFont
                add     si, bx

                call    DrawChar

                pop     si

        .nextChar:
                ;Goes to the next char in the string
                inc     si
                mov     bx, [si]

                cmp     bl, 0x0F
                je      .endLine

                ;Checks if reached 0x00
                ;If yes, then exit printing routine
                ;If no, then loops the next draw
                cmp     bl, 0x00
                jne      .getCharBMP 

                jmp     PrintString.end

        .endLine:
                mov     word [cursorX], 0x00
                inc     word [cursorY]

                jmp     .nextChar

PrintString.end:
        popa

        ret

;-----------------------------------------------------------------------

SetupCursor:
        ;If it goes to the last index
        ;Jumps to the next line index
        cmp     word [cursorX], 40
        jae      .nextCursorLine
        
        jmp     SetupCursor.end

        .nextCursorLine:
                ;indexX = 0, indexY++
                mov     word [cursorX], 0x00
                inc     word [cursorY]

SetupCursor.end:
        ret

;-----------------------------------------------------------------------

cursorX: dw 0
cursorY: dw 0
