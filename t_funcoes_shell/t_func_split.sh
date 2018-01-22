#!/usr/bin/env bash

function split_arquivo() {

    # Contando quantas linhas tem no arquivo
    count=$(wc -l $arquivo_original | awk '{print $1}')

    # Regra para fazer o split do arquivo
    if [ "$count" -lt 10000000 ]; then
    	split -d -a6 -l 1000000 --additional-suffix=.csv $arquivo_original $path1/$pasta/$arq_final
    elif [ "$count" -ge 10000001 ] && [ "$count" -lt 80000000 ]; then
    	split -d -a6 -l 3000000 --additional-suffix=.csv $arquivo_original $path1/$pasta/$arq_final
    elif [ "$count" -ge 80000001 ]; then
        split -d -a6 -l 5000000 --additional-suffix=.csv $arquivo_original $path1/$pasta/$arq_final
    fi
}