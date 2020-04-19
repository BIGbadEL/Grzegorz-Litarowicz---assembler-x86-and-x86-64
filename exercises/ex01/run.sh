#!/bin/sh
test=$2
if [ "$test" = "test" ]; then
    nasm -f elf64 $1.asm && ld $1.o
    ./a.out < ../good.txt
    ./a.out < ../wrong.txt
else
    nasm -f elf64 $1.asm && ld $1.o && ./a.out
fi
