#!/usr/bin/env bash

# Executando a extracao de dados
python t_nessidades_especiais_2015.py

# Caminho
path1=$(pwd)

# Fazendo o load para a tabela
diretorio='empty'
nome_tabela=necessidades_especiais
arquivo_original=t_necessidades_especiais_2015.csv
source /home/martins/Documentos/bd_enem_dados_2015/t_funcoes_shell/t_func_load.sh
load_tabela $path1 $diretorio $nome_tabela $arquivo_original