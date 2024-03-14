[BITS    16]

%define WSCREEN 320
%define HSCREEN 200

%define WFONT 8
%define HFONT 8

;1024 Bytes | 2 Sectors 
ProggyFont:
        ;Useless chars
        times 256 db 0x00

        ;256-264
        charSPACE:
        db 0b00000000
        db 0b00000000
        db 0b00000000
        db 0b00000000
        db 0b00000000
        db 0b00000000
        db 0b00000000
        db 0b00000000

        ;264
        charEXCL:
        db 0b00010000
        db 0b00010000
        db 0b00010000
        db 0b00010000
        db 0b00010000
        db 0b00010000
        db 0b00000000
        db 0b00010000

        charQUOT:
        db 0b00101000
        db 0b00101000
        db 0b00101000
        db 0b00000000
        db 0b00000000
        db 0b00000000
        db 0b00000000
        db 0b00000000

        charHASH:
        db 0b00010100
        db 0b00010100
        db 0b01111110
        db 0b00101000
        db 0b00101000
        db 0b11111000
        db 0b01010000
        db 0b01010000

        charDOLLAR:
        db 0b01111000
        db 0b10100000
        db 0b10100000
        db 0b01110000
        db 0b00101000
        db 0b00101000
        db 0b11110000
        db 0b00100000

        charPERC:
        db 0b01000100
        db 0b10101000
        db 0b10101000
        db 0b01010000
        db 0b00010100
        db 0b00101010
        db 0b00101010
        db 0b01000100

        charAMPER:
        db 0b01100000
        db 0b10010000
        db 0b10010000
        db 0b01100100
        db 0b10010100
        db 0b10001000
        db 0b10001000
        db 0b01110100

        charAPOST:
        db 0b00001000
        db 0b00001000
        db 0b00000000
        db 0b00000000
        db 0b00000000
        db 0b00000000
        db 0b00000000
        db 0b00000000

        charPAREN1:
        db 0b00001000
        db 0b00010000
        db 0b00010000
        db 0b00100000
        db 0b00100000
        db 0b00010000
        db 0b00010000
        db 0b00001000

        charPAREN2:
        db 0b00100000
        db 0b00010000
        db 0b00010000
        db 0b00001000
        db 0b00001000
        db 0b00010000
        db 0b00010000
        db 0b00100000

        charASTER:
        db 0b00000000
        db 0b00100000
        db 0b10101000
        db 0b01110000
        db 0b10101000
        db 0b00100000
        db 0b00000000
        db 0b00000000

        charPLUS:
        db 0b00000000
        db 0b00100000
        db 0b00100000
        db 0b11111000
        db 0b00100000
        db 0b00100000
        db 0b00000000
        db 0b00000000

        charCOMMA:
        db 0b00000000
        db 0b00000000
        db 0b00000000
        db 0b00000000
        db 0b00010000
        db 0b00010000
        db 0b00010000
        db 0b00100000

        charMINUS:
        db 0b00000000
        db 0b00000000
        db 0b00000000
        db 0b11111000
        db 0b00000000
        db 0b00000000
        db 0b00000000
        db 0b00000000

        charDOT:
        db 0b00000000
        db 0b00000000
        db 0b00000000
        db 0b00000000
        db 0b00000000
        db 0b00000000
        db 0b00011000
        db 0b00011000

        charSLASH:
        db 0b00001000
        db 0b00001000
        db 0b00010000
        db 0b00010000
        db 0b00100000
        db 0b00100000
        db 0b01000000
        db 0b01000000

        char0:
        db 0b01110000
        db 0b10001000
        db 0b10001000
        db 0b10101000
        db 0b10101000
        db 0b10001000
        db 0b10001000
        db 0b01110000

        char1:
        db 0b00100000
        db 0b01100000
        db 0b10100000
        db 0b00100000
        db 0b00100000
        db 0b00100000
        db 0b00100000
        db 0b11111000

        char2:
        db 0b01110000
        db 0b10001000
        db 0b00001000
        db 0b00010000
        db 0b00100000
        db 0b01000000
        db 0b10000000
        db 0b11111000

        char3:
        db 0b01110000
        db 0b10001000
        db 0b00001000
        db 0b00110000
        db 0b00001000
        db 0b00001000
        db 0b10001000
        db 0b01110000

        char4:
        db 0b00001000
        db 0b00011000
        db 0b00101000
        db 0b01001000
        db 0b10001000
        db 0b11111100
        db 0b00001000
        db 0b00001000

        char5:
        db 0b11111000
        db 0b10000000
        db 0b10000000
        db 0b11110000
        db 0b00001000
        db 0b00001000
        db 0b10001000
        db 0b01110000

        char6:
        db 0b00110000
        db 0b01000000
        db 0b10000000
        db 0b11110000
        db 0b10001000
        db 0b10001000
        db 0b10001000
        db 0b01110000

        char7:
        db 0b11111000
        db 0b00001000
        db 0b00010000
        db 0b00010000
        db 0b00100000
        db 0b00100000
        db 0b01000000
        db 0b01000000

        char8:
        db 0b01110000
        db 0b10001000
        db 0b10001000
        db 0b01110000
        db 0b10001000
        db 0b10001000
        db 0b10001000
        db 0b01110000

        char9:
        db 0b01110000
        db 0b10001000
        db 0b10001000
        db 0b10001000
        db 0b01111000
        db 0b00001000
        db 0b00010000
        db 0b01100000

        charCOLON:
        db 0b00000000
        db 0b01000000
        db 0b01000000
        db 0b00000000
        db 0b01000000
        db 0b01000000
        db 0b00000000
        db 0b00000000

        charSEMICOLON:
        db 0b00000000
        db 0b01000000
        db 0b01000000
        db 0b00000000
        db 0b01000000
        db 0b01000000
        db 0b01000000
        db 0b10000000

        charLESS:
        db 0b00000000
        db 0b00000110
        db 0b00011000
        db 0b01100000
        db 0b00011000
        db 0b00000110
        db 0b00000000
        db 0b00000000

        charEQUALS:
        db 0b00000000
        db 0b00000000
        db 0b01111110
        db 0b00000000
        db 0b01111110
        db 0b00000000
        db 0b00000000
        db 0b00000000

        charGREATER:
        db 0b00000000
        db 0b01100000
        db 0b00011000
        db 0b00000110
        db 0b00011000
        db 0b01100000
        db 0b00000000
        db 0b00000000

        charQUESTION:
        db 0b01110000
        db 0b10001000
        db 0b00001000
        db 0b00010000
        db 0b00100000
        db 0b00100000
        db 0b00000000
        db 0b00100000

        charAT:
        db 0b00111000
        db 0b01000100
        db 0b10011010
        db 0b10101010
        db 0b10101010
        db 0b10011100
        db 0b01000000
        db 0b00111100

        charA:
        db 0b00110000
        db 0b00110000
        db 0b01001000
        db 0b01001000
        db 0b01111000
        db 0b10000100
        db 0b10000100
        db 0b10000100

        charB:
        db 0b11110000
        db 0b10001000
        db 0b10001000
        db 0b11111000
        db 0b10000100
        db 0b10000100
        db 0b10000100
        db 0b11111000

        charC:
        db 0b00111000
        db 0b01000100
        db 0b10000000
        db 0b10000000
        db 0b10000000
        db 0b10000000
        db 0b01000100
        db 0b00111000

        charD:
        db 0b11110000
        db 0b10001000
        db 0b10000100
        db 0b10000100
        db 0b10000100
        db 0b10000100
        db 0b10001000
        db 0b11110000

        charE:
        db 0b11111000
        db 0b10000000
        db 0b10000000
        db 0b11110000
        db 0b10000000
        db 0b10000000
        db 0b10000000
        db 0b11111000

        charF:
        db 0b11111000
        db 0b10000000
        db 0b10000000
        db 0b11110000
        db 0b10000000
        db 0b10000000
        db 0b10000000
        db 0b10000000

        charG:
        db 0b00111000
        db 0b01000100
        db 0b10000000
        db 0b10000000
        db 0b10011100
        db 0b10000100
        db 0b01000100
        db 0b00111000

        charH:
        db 0b10000100
        db 0b10000100
        db 0b10000100
        db 0b11111100
        db 0b10000100
        db 0b10000100
        db 0b10000100
        db 0b10000100

        charI:
        db 0b11100000
        db 0b01000000
        db 0b01000000
        db 0b01000000
        db 0b01000000
        db 0b01000000
        db 0b01000000
        db 0b11100000

        charJ:
        db 0b01110000
        db 0b00010000
        db 0b00010000
        db 0b00010000
        db 0b00010000
        db 0b00010000
        db 0b00010000
        db 0b11100000

        charK:
        db 0b10000100
        db 0b10001000
        db 0b10010000
        db 0b10100000
        db 0b11100000
        db 0b10010000
        db 0b10001000
        db 0b10000100

        charL:
        db 0b10000000
        db 0b10000000
        db 0b10000000
        db 0b10000000
        db 0b10000000
        db 0b10000000
        db 0b10000000
        db 0b11111000

        charM:
        db 0b11000110
        db 0b11000110
        db 0b10101010
        db 0b10101010
        db 0b10010010
        db 0b10010010
        db 0b10000010
        db 0b10000010

        charN:
        db 0b11000100
        db 0b11000100
        db 0b10100100
        db 0b10100100
        db 0b10010100
        db 0b10010100
        db 0b10001100
        db 0b10001100

        charO:
        db 0b00110000
        db 0b01001000
        db 0b10000100
        db 0b10000100
        db 0b10000100
        db 0b10000100
        db 0b01001000
        db 0b00110000

        charP:
        db 0b11110000
        db 0b10001000
        db 0b10001000
        db 0b10001000
        db 0b11110000
        db 0b10000000
        db 0b10000000
        db 0b10000000

        charQ:
        db 0b00110000
        db 0b01001000
        db 0b10000100
        db 0b10000100
        db 0b10000100
        db 0b10010100
        db 0b01001000
        db 0b00110100

        charR:
        db 0b11110000
        db 0b10001000
        db 0b10001000
        db 0b10001000
        db 0b11110000
        db 0b10010000
        db 0b10001000
        db 0b10000100

        charS:
        db 0b01111000
        db 0b10000100
        db 0b10000000
        db 0b01100000
        db 0b00011000
        db 0b00000100
        db 0b10000100
        db 0b01111000

        charT:
        db 0b11111110
        db 0b00010000
        db 0b00010000
        db 0b00010000
        db 0b00010000
        db 0b00010000
        db 0b00010000
        db 0b00010000

        charU:
        db 0b10000100
        db 0b10000100
        db 0b10000100
        db 0b10000100
        db 0b10000100
        db 0b10000100
        db 0b10000100
        db 0b01111000

        charV:
        db 0b10000010
        db 0b10000010
        db 0b01000100
        db 0b01000100
        db 0b00101000
        db 0b00101000
        db 0b00010000
        db 0b00010000

        charW:
        db 0b10000010
        db 0b10010010
        db 0b10010010
        db 0b10101010
        db 0b10101010
        db 0b01101100
        db 0b01000100
        db 0b01000100

        charX:
        db 0b10000100
        db 0b10000100
        db 0b01001000
        db 0b00110000
        db 0b00110000
        db 0b01001000
        db 0b10000100
        db 0b10000100

        charY:
        db 0b10000010
        db 0b10000010
        db 0b01000100
        db 0b00101000
        db 0b00010000
        db 0b00010000
        db 0b00010000
        db 0b00010000

        charZ:
        db 0b11111100
        db 0b00000100
        db 0b00001000
        db 0b00010000
        db 0b00100000
        db 0b01000000
        db 0b10000000
        db 0b11111100

        charBRACKET1:
        db 0b01110000
        db 0b01000000
        db 0b01000000
        db 0b01000000
        db 0b01000000
        db 0b01000000
        db 0b01000000
        db 0b01110000

        charBACKSL:
        db 0b01000000
        db 0b01000000
        db 0b00100000
        db 0b00100000
        db 0b00010000
        db 0b00010000
        db 0b00001000
        db 0b00001000

        charBRACKET2:
        db 0b01110000
        db 0b00010000
        db 0b00010000
        db 0b00010000
        db 0b00010000
        db 0b00010000
        db 0b00010000
        db 0b01110000

        charCARET:
        db 0b00010000
        db 0b00010000
        db 0b00101000
        db 0b00101000
        db 0b01000100
        db 0b01000100
        db 0b00000000
        db 0b00000000

        charUNDERL:
        db 0b00000000
        db 0b00000000
        db 0b00000000
        db 0b00000000
        db 0b00000000
        db 0b00000000
        db 0b00000000
        db 0b11111110

        charBACKT:
        db 0b00000000
        db 0b00010000
        db 0b00001000
        db 0b00000000
        db 0b00000000
        db 0b00000000
        db 0b00000000
        db 0b00000000

        chara:
        db 0b00000000
        db 0b00000000
        db 0b01110000
        db 0b00001000
        db 0b01111000
        db 0b10001000
        db 0b10001000
        db 0b01111000

        charb:
        db 0b10000000
        db 0b10000000
        db 0b11110000
        db 0b10001000
        db 0b10001000
        db 0b10001000
        db 0b10001000
        db 0b11110000

        charc:
        db 0b00000000
        db 0b00000000
        db 0b01110000
        db 0b10001000
        db 0b10000000
        db 0b10000000
        db 0b10001000
        db 0b01110000

        chard:
        db 0b00001000
        db 0b00001000
        db 0b01111000
        db 0b10001000
        db 0b10001000
        db 0b10001000
        db 0b10001000
        db 0b01111000

        chare:
        db 0b00000000
        db 0b00000000
        db 0b01110000
        db 0b10001000
        db 0b11111000
        db 0b10000000
        db 0b10001000
        db 0b01110000

        charf:
        db 0b00111000
        db 0b01000000
        db 0b01000000
        db 0b11110000
        db 0b01000000
        db 0b01000000
        db 0b01000000
        db 0b01000000

        charg:
        db 0b01111000
        db 0b10001000
        db 0b10001000
        db 0b10001000
        db 0b01111000
        db 0b00001000
        db 0b00001000
        db 0b01110000

        charh:
        db 0b10000000
        db 0b10000000
        db 0b10000000
        db 0b11110000
        db 0b10001000
        db 0b10001000
        db 0b10001000
        db 0b10001000

        chari:
        db 0b00010000
        db 0b00000000
        db 0b00000000
        db 0b00110000
        db 0b00010000
        db 0b00010000
        db 0b00010000
        db 0b00010000

        charj:
        db 0b00010000
        db 0b00000000
        db 0b00110000
        db 0b00010000
        db 0b00010000
        db 0b00010000
        db 0b00010000
        db 0b11100000

        chark:
        db 0b10000000
        db 0b10000000
        db 0b10001000
        db 0b10010000
        db 0b10100000
        db 0b11100000
        db 0b10010000
        db 0b10001000

        charl:
        db 0b00110000
        db 0b00010000
        db 0b00010000
        db 0b00010000
        db 0b00010000
        db 0b00010000
        db 0b00010000
        db 0b00010000

        charm:
        db 0b00000000
        db 0b00000000
        db 0b11101100
        db 0b10010010
        db 0b10010010
        db 0b10010010
        db 0b10010010
        db 0b10010010

        charn:
        db 0b00000000
        db 0b00000000
        db 0b11110000
        db 0b10001000
        db 0b10001000
        db 0b10001000
        db 0b10001000
        db 0b10001000

        charo:
        db 0b00000000
        db 0b00000000
        db 0b01110000
        db 0b10001000
        db 0b10001000
        db 0b10001000
        db 0b10001000
        db 0b01110000

        charp:
        db 0b00000000
        db 0b00000000
        db 0b11110000
        db 0b10001000
        db 0b10001000
        db 0b11110000
        db 0b10000000
        db 0b10000000

        charq:
        db 0b00000000
        db 0b00000000
        db 0b01111000
        db 0b10001000
        db 0b10001000
        db 0b01111000
        db 0b00001000
        db 0b00001000

        charr:
        db 0b00000000
        db 0b00000000
        db 0b10110000
        db 0b11001000
        db 0b10000000
        db 0b10000000
        db 0b10000000
        db 0b10000000

        chars:
        db 0b00000000
        db 0b00000000
        db 0b01111000
        db 0b10000000
        db 0b01100000
        db 0b00010000
        db 0b00001000
        db 0b11110000

        chart:
        db 0b10000000
        db 0b10000000
        db 0b11110000
        db 0b10000000
        db 0b10000000
        db 0b10000000
        db 0b10000000
        db 0b01110000

        charu:
        db 0b00000000
        db 0b00000000
        db 0b10001000
        db 0b10001000
        db 0b10001000
        db 0b10001000
        db 0b10001000
        db 0b01111000

        charv:
        db 0b00000000
        db 0b00000000
        db 0b10001000
        db 0b10001000
        db 0b01010000
        db 0b01010000
        db 0b00100000
        db 0b00100000

        charw:
        db 0b00000000
        db 0b00000000
        db 0b10000010
        db 0b10010010
        db 0b10010010
        db 0b10101010
        db 0b01101100
        db 0b01000100

        charx:
        db 0b00000000
        db 0b00000000
        db 0b10001000
        db 0b01010000
        db 0b00100000
        db 0b00100000
        db 0b01010000
        db 0b10001000

        chary:
        db 0b00000000
        db 0b00000000
        db 0b10001000
        db 0b10001000
        db 0b01111000
        db 0b00001000
        db 0b00001000
        db 0b01110000

        charz:
        db 0b00000000
        db 0b00000000
        db 0b11111000
        db 0b00001000
        db 0b00010000
        db 0b00100000
        db 0b01000000
        db 0b11111000

        charCURLYB1:
        db 0b00000000
        db 0b00011000
        db 0b00100000
        db 0b00100000
        db 0b11000000
        db 0b00100000
        db 0b00100000
        db 0b00011000

        charPIPE:
        db 0b00010000
        db 0b00010000
        db 0b00010000
        db 0b00010000
        db 0b00010000
        db 0b00010000
        db 0b00010000
        db 0b00010000

        charCURLYB2:
        db 0b00000000
        db 0b11000000
        db 0b00100000
        db 0b00100000
        db 0b00011000
        db 0b00100000
        db 0b00100000
        db 0b11000000

        charTILDE:
        db 0b00000000
        db 0b00000000
        db 0b00000000
        db 0b01110010
        db 0b10011100
        db 0b00000000
        db 0b00000000
        db 0b00000000

        times 8 db 0x00
