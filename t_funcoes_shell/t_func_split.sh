#!/usr/bin/env bash

function split_arquivo() {

    # Parametros para a funcao
	nome_arquivo=$1
	path1=$2
    pasta=$3
    arq_final=$4

    # Contando quantas linhas tem no arquivo
    count=`wc -l $1 | awk '{print $1}'`

    # Regra para fazer o split do arquivo
    if [ "$count" -lt 10000000 ]; then
    	split -d -a6 -l 1000000 --additional-suffix=.csv $1 $2/$3/$4
    elif [ "$count" -ge 10000001 ] && [ "$count" -lt 20000000 ]; then
    	split -d -a6 -l 2000000 --additional-suffix=.csv $1 $2/$3/$4
    elif [ "$count" -ge 20000001 ] && [ "$count" -lt 40000000 ]; then
        split -d -a6 -l 4000000 --additional-suffix=.csv $1 $2/$3/$4
    elif [ "$count" -ge 40000001 ] && [ "$count" -lt 70000000 ]; then
        split -d -a6 -l 5000000 --additional-suffix=.csv $1 $2/$3/$4
    elif [ "$count" -ge 70000001 ] && [ "$count" -lt 90000000 ]; then
        split -d -a6 -l 6000000 --additional-suffix=.csv $1 $2/$3/$4
    elif [ "$count" -ge 90000001 ] && [ "$count" -lt 900000000 ]; then
        split -d -a6 -l 10000000 --additional-suffix=.csv $1 $2/$3/$4
    fi
}