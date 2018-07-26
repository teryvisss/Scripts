#!/bin/bash
: ' utilizar no formato ./pingscript.sh 192.168.0'
: ' funciona para todos os Ips classe C '
: ' sequencia indo do 100 ao 254 para uso pessoal' 
: ' Para enviar a um arquivo use:  >> saida.txt 2>&1'

for x in `seq 100 254` ; do
ping -c 1 $1.$x  | grep "64 bytes" | cut -d" " -f4 | sed 's/.$//'

: ' grep usado para filtrar pings bem sucedidos, cut e sed para organizar'
done

