[BITS    16]
[ORG 0x7E00]

KernelMain:
        xor     bx, bx

        ;jmp     CharTest
        jmp     StringTest

        jmp     $

StringTest:
        mov     al, 0x00

.StringLoop:
        mov     si, testestr0
        call    PrintString

        inc     al

        mov     si, testestr1
        call    PrintString

        inc     al

        mov     si, testestr2
        call    PrintString
        
        inc     al

        mov     si, testestr3
        call    PrintString

        inc     al

        mov     si, testestr4
        call    PrintString

        inc     al

        mov     si, testestr5
        call    PrintString

        inc     al

        mov     si, testestr6
        call    PrintString

        inc     al

        mov     si, testestr7
        call    PrintString

        inc     al

        inc     bx

        cmp     bx, 25
        jb      .StringLoop

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

testestr0: db "Test0", 0x00, 0x00
testestr1: db "Test1", 0x00, 0x00
testestr2: db "Test2", 0x00, 0x00
testestr3: db "Test3", 0x00, 0x00
testestr4: db "Test4", 0x00, 0x00
testestr5: db "Test5", 0x00, 0x00
testestr6: db "Test6", 0x00, 0x00
testestr7: db "Test7", 0x00, 0x00
quickfox:  db "A Quick Brown Fox Jumps Over The Lazy Dog!", 0x00, 0x00

times (510 * 8) - ($ - $$) db 0x00
