#!/usr/bin/env bash

# Extraindo dados
python t_escola_2015.py

# Colocando null em campo vazio
sed 's/, /,null/g' t_escola_2015_1.csv > t_escola_2015_2.csv

# Eliminando linhas duplicatas
sort -u -k1 t_escola_2015_2.csv > t_escola_2015_final.csv

# Removendo arquivo
rm t_escola_2015_1.csv t_escola_2015_2.csv

# Encontrando o caminho
path1=$(pwd)

# Fazendo o load para a tabela
diretorio='empty'
nome_tabela=escola
arquivo_original=t_escola_2015_final.csv
source /home/martins/Documentos/bd_enem_dados_2015/t_funcoes_shell/t_func_load.sh
load_tabela $path1 $diretorio $nome_tabela $arquivo_original