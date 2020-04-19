#!/bin/sh
test=$2
if [ "$test" = "test" ]; then
    nasm -f elf64 $1.asm && ld $1.o
    ./a.out < ../../test/good.txt
    ./a.out < ../../test/wrong.txt
else
    nasm -f elf64 $1.asm && ld $1.o && ./a.out
fi
