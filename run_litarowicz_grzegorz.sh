#!/bin/bash

command=$1

#clone
if [ "$command" = "clone" ]; then
    echo cloning repo...
    git clone https://github.com/BIGbadEL/Grzegorz-Litarowicz---assembler-x86-and-x86-64.git
fi

#solution
if [ "$command" = "solution" ]; then
    echo [solution] Pobieranie repo wraz z rozwiązaniami
    git clone https://github.com/Blinkuu/assembler-x86-and-x86-64.git
    mkdir exercises/ex01-solution
    cp exercises/ex01/* exercises/ex01-solution/
    cat assembler-x86-and-x86-64/exercises/ex01/input.asm > exercises/ex01-solution/is_triangle.asm
    cp assembler-x86-and-x86-64/exercises/ex01/functions.asm exercises/ex01-solution/
    cd exercises/ex01/
    ./run.sh is_triangle test
fi

if [ "$command" = "run" ]; then
    echo [RUN]: zadanie znajduje się w exercises/ex01/
fi

if [ "$command" = "clean" ]; then
    if [[ ! -d "Grzegorz-Litarowicz---assembler-x86-and-x86-64" ]]
    then
        echo [CLEAN]: znajdujesz się w folderze Grzegorz-Litarowicz---assembler-x86-and-x86-64
        cd .. 
    fi
    echo [CLEAN]: usuwanie Grzegorz-Litarowicz---assembler-x86-and-x86-64
    rm -rf Grzegorz-Litarowicz---assembler-x86-and-x86-64
fi