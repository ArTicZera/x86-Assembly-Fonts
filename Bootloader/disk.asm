[BITS    16]

;AL = Sectors to read
;CH = Cylinder
;DH = Head
;CL = Sector
;ES:BX = Point to buffer
ReadSectors:
        push    ax
        push    cx
        push    dx

        ;Read Sectors function
        mov     ah, 0x02
        int     0x13

        pop     dx
        pop     cx
        pop     ax

        ret
