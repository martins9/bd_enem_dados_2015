#!/usr/bin/env bash

python t_candidato_2015.py

# Achando o caminho
path1=$(pwd)

# Fazendo split dos arquivos e colocando
split -d -a6 -l 30000000 --additional-suffix=.csv t_responde_2014_2.csv $path1/t_responde_base/t_responde_2014_

# Excluindo os arquivos de base
rm t_responde_2014_2.csv

# Contando quantos arquivos tem na pasta
QTD_ARQ=$(find $path1/t_responde_base/ -type f | wc -l)

# Pegando data e hora
data=$(date "+%d/%m/%Y %H:%M:%S")
echo "------------- START:" $data "-------------" > t_responde_log.txt

QTD_ARQ1=$((QTD_ARQ-1))
# Fazendo o Load das tabelas
for i in $(seq -f "%06g" 0 $QTD_ARQ1)
do
    # psql -h localhost -d bd_enem_dados_local -U anacrl -c
	time (psql -h localhost -d bd_enem_dados -U anacrl -c "\copy responde from $path1/t_responde_base/t_responde_2014_$i.csv
	        with delimiter as ',' NULL AS 'null' csv") &>> t_responde_log.txt
done

# Pegando data e hora
data1=$(date "+%d/%m/%Y %H:%M:%S")
echo
