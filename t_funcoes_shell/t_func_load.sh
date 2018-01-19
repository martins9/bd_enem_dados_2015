#!/usr/bin/env bash

function load_tabela(){

    # Parametros para a funcao
	path1=$2
    pasta=$3
    nome_tabela=$4
    arquivo_original=$5

if [ -n $2 ] && [ -z $3 ] && [ -n $4 ] && [ -n $5 ]; then

    # Data e hora do inicio do processamento
    data=$(date "+%d/%m/%Y %H:%M:%S")
    echo "------------- START:" $data "-------------" > $4_log.txt

    # Fazendo o Load das tabelas
    time (psql -h localhost -d bd_enem_2014_local -U martins -c "\copy $4 from $2/$5
	        with delimiter as ',' NULL AS 'null' csv") &>> $4_log.txt

    # Data e hora do fim do processamento
    data1=$(date "+%d/%m/%Y %H:%M:%S")
    echo "------------- END:" $data "-------------" >> $4_log.txt
    echo >> $4_log.txt
fi
}