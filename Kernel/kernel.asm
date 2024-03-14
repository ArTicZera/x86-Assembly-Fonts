[BITS    16]
[ORG 0x7E00]

KernelMain:
        mov     si, string  ;SI = String
        mov     al, 0x0F    ;AL = Color
        mov     di, 0x00    ;DI = X Cursor
        mov     bp, 0x00    ;BP = Y Cursor
        call    PrintString

        jmp     $

%include "Font/fontbmp.asm"
%include "Font/font.asm"

string: db "A QUICK BROWN FOX JUMP OVER THE LAZY DOG! a quick brown fox jumps over the lazy dog! 0123456789 @#$%^&*-+(){}/\|.,':><=_", 0x00

times (510 * 8) - ($ - $$) db 0x00
