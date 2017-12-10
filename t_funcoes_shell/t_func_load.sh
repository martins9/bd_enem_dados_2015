#!/usr/bin/env bash

function load_tabela() {

    # Parametros para a funcao
	path1=$2
    pasta=$3
    nome_tabela=$4

# Contando quantos arquivos tem na pasta
QTD_ARQ=$(find $2/$3/ -type f | wc -l)

# Pegando data e hora
data=$(date "+%d/%m/%Y %H:%M:%S")
echo "------------- START:" $data "-------------" > $1_log.txt

QTD_ARQ1=$((QTD_ARQ-1))
# Fazendo o Load das tabelas
for i in $(seq -f "%06g" 0 $QTD_ARQ1)
do
    # psql -h localhost -d bd_enem_dados_local -U anacrl -c
	time (psql -h localhost -d bd_enem_dados -U anacrl -c "\copy $4 from $path1/$3/t_responde_2014_$i.csv
	        with delimiter as ',' NULL AS 'null' csv") &>> $1_log.txt
done

# Pegando data e hora
data1=$(date "+%d/%m/%Y %H:%M:%S")
echo

}