#!/usr/bin/env bash

# Executando a extracao de dados
python t_candidato_2015.py

sed 's/, /,null/g' t_candidato_2015_1.csv > t_candidato_2015_2.csv
sed 's/,,/,null,/g' t_candidato_2015_2.csv > t_candidato_2015_final.csv

# Removendo arquivo
rm t_candidato_2015_1.csv
rm t_candidato_2015_2.csv

# Caminho
path1=$(pwd)

# Fazendo o load para a tabela
pasta="t_candidato_2015"
nome_tabela="candidato"
arquivo_original="t_candidato_2015_final.csv"
source /home/martins/Documentos/bd_enem_dados_2015/t_funcoes_shell/t_func_split.sh
split_arquivo $path1 $pasta $nome_tabela $arquivo_original

# Removendo arquivo
rm t_candidato_2015_final.csv

# Fazendo o load para a tabela
diretorio="t_candidato_2015"
nome_tabela="candidato"
arquivo_original="empty"
arquivo_final="t_candidato_2015_"
source /home/martins/Documentos/bd_enem_dados_2015/t_funcoes_shell/t_func_load.sh
load_tabela $path1 $diretorio $nome_tabela $arquivo_original $arquivo_final
