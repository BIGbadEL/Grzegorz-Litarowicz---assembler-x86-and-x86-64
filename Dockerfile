FROM ubuntu:20.04

RUN apt-get update -y
RUN apt-get install -y binutils nasm vim

COPY README.md /home/root/
COPY exercises /home/root/
COPY test /home/root/
COPY code-snippets /home/root/code-snippets/

WORKDIR /home/root
