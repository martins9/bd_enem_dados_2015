#!/usr/bin/env bash

# Script python para extrair os dados
python t_municipio_2015.py

# Pegando o caminho
path1=$(pwd)
echo  $path1

cd ../t_funcoes_shell

# Fazendo o load para a tabela

nome_tabela=municipio
arquivo_original=t_municipio_2015_final.csv
./t_func_load.sh
load_tabela $path1 $diretorio $nome_tabela $arquivo_original