[BITS    16]
[ORG 0x7E00]

KernelMain:
        ;jmp     CharTest
        jmp     StringTest

        jmp     $

StringTest:
        mov     al, 0x0F

        mov     si, aquickfox1
        call    PrintString

        mov     word [cursorX], 0x00
        mov     word [cursorY], 0x03

        mov     si, aquickfox2
        call    PrintString

        mov     word [cursorX], 0x00
        mov     word [cursorY], 0x06

        mov     si, numbers09
        call    PrintString

        mov     word [cursorX], 0x00
        mov     word [cursorY], 0x08

        mov     si, specchars
        call    PrintString
        
        jmp     $

CharTest:
        mov     bx, 0x00
        mov     al, 0x01
        mov     si, charA

        .Charloop:
                call    DrawChar
                
                inc     al
                inc     bx

                cmp     bx, 160
                jnae    .Charloop

                jmp     $

%include "Bootloader/print.asm"
%include "Font/fontbmp.asm"
%include "Font/font.asm"

aquickfox1: db "A QUICK BROWN FOX JUMPS OVER THE LAZY DOG.", 0x00, 0x00
aquickfox2: db "a quick brown fox jumps over the lazy dog.", 0x00, 0x00
numbers09: db "1234567890", 0x00, 0x00
specchars: db "!#$%&'()*+,-./:<=>?@[\]^_`{|}~", 0x00, 0x00

times (510 * 8) - ($ - $$) db 0x00
