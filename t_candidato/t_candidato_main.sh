#!/usr/bin/env bash

#python t_candidato_2015.py

# Colocando null
#sed 's/,,/,null,/g' t_candidato_2015_1.csv > t_candidato_2015_2.csv

# Pegando o caminho
path1=$(pwd)

# Subindo um nivel na hierarquia
cd ..

# Chamando a funcao split
source ./t_funcoes_shell/t_func_split.sh && nome_arquivo=$path1/microdados_enem_2015_1.csv && pasta=t_candidato_2015 \
&& split_arquivo $nome_arquivo $path1 $pasta

: '
# Fazendo split dos arquivos e colocando


# Excluindo os arquivos de base
rm t_responde_2014_2.csv


'