#!/bin/bash

clear

nasm -fbin Bootloader/boot.asm -o Binaries/boot.bin
nasm -fbin Kernel/kernel.asm -o Binaries/kernel.bin

if [ $? -eq 0 ]; then
    echo -e "\n\e[36;40mCompiled successfully!\e[0m\n"
else
    echo -e "\n\e[31;40mError compiling!\e[0m\n"
fi

cat Binaries/boot.bin Binaries/kernel.bin > test.img
