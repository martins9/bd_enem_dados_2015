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
    elif [ "$count" -ge 10000001 ] && [ "$count" -lt 80000000 ]; then
    	split -d -a6 -l 3000000 --additional-suffix=.csv $1 $2/$3/$4
    elif [ "$count" -ge 80000001 ]; then
        split -d -a6 -l 5000000 --additional-suffix=.csv $1 $2/$3/$4
    fi
}