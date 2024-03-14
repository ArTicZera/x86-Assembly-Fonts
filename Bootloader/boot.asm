[BITS    16]
[ORG 0x7C00]

%define KERNELLOCAL 0x7E00
%define KERNELSCTRS 0x0008

BootMain:
        ;Setup DS and ES
        xor     ax, ax
        mov     ds, ax
        mov     es, ax

        ;Setup Stack (SP and SS)
        mov     sp, 0x7C00
        mov     ss, ax

        ;Setup VGA Mode 13h
        mov     ax, 0x0013
        int     0x10

        ;Read kernel's sectors
        mov     bx, KERNELLOCAL
        mov     al, KERNELSCTRS

        mov     ch, 0x00
        mov     cl, 0x02
        mov     dh, 0x00

        call    ReadSectors

        ;Jump to our kernel
        jmp     0x0000:KERNELLOCAL

%include "Bootloader/disk.asm"

times 510 - ($ - $$) db 0x00
dw 0xAA55
