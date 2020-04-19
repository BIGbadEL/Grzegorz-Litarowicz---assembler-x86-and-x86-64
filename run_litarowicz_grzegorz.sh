#!/bin/bash

command=$1

#clone
if [ "$command" = "clone" ]; then
    echo cloning repo...
    git clone https://github.com/BIGbadEL/Grzegorz-Litarowicz---assembler-x86-and-x86-64.git
fi

#solution
if [ "$command" = "solution" ]; then
    echo cloning repo with solutions...
    git clone https://github.com/Blinkuu/assembler-x86-and-x86-64.git
    cat assembler-x86-and-x86-64/exercises/ex01/input.asm > exercises/ex01/is_triangle.asm
    cp assembler-x86-and-x86-64/exercises/ex01/functions.asm exercises/ex01/
    cd exercises/ex01/
    ./run.sh is_triangle test
fi

if [ "$command" = "run" ]; then
    cd exercises/ex01/
    ./run.sh is_triangle test
fi

if [ "$command" = "clean" ]; then
    rm -r Grzegorz-Litarowicz---assembler-x86-and-x86-64
fi