#!/bin/bash

command=$1

#clone
if [ "$command" = "clone" ]; then
    echo [CLONE] Klonowanie repo...
    git clone https://github.com/BIGbadEL/Grzegorz-Litarowicz---assembler-x86-and-x86-64.git
fi

if [ "$command" = "run" ]; then
    echo [RUN]: zadanie znajduje się w exercises/ex01/
    if [[ -d "Grzegorz-Litarowicz---assembler-x86-and-x86-64" ]]
    then
        echo [RUN]: Przechodzę do folderu Grzegorz-Litarowicz---assembler-x86-and-x86-64
        cd Grzegorz-Litarowicz---assembler-x86-and-x86-64
    fi
    docker build -t grzegorzlitarowicz:1.0 .
    docker run -it grzegorzlitarowicz:1.0
fi

if [ "$command" = "clean" ]; then
    if [[ ! -d "Grzegorz-Litarowicz---assembler-x86-and-x86-64" ]]
    then
        echo [CLEAN]: znajdujesz się w folderze Grzegorz-Litarowicz---assembler-x86-and-x86-64
        cd .. 
    fi
    echo [CLEAN]: usuwanie Grzegorz-Litarowicz---assembler-x86-and-x86-64
    rm -rf Grzegorz-Litarowicz---assembler-x86-and-x86-64
    docker ps -a -q -f status=exited | xargs docker rm
    docker rmi grzegorzlitarowicz:1.0 
    docker rmi ubuntu:20.04
fi
