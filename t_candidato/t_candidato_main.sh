#!/usr/bin/env bash

#python t_candidato_2015.py

# Colocando null
#sed 's/,,/,null,/g' t_candidato_2015_1.csv > t_candidato_2015_2.csv

# Pegando o caminho
path1=$(pwd)

# Subindo um nivel na hierarquia
cd ..

# Chamando a funcao split
source ./t_funcoes_shell/t_func_split.sh && arq_original=$path1/microdados_enem_2015_1.csv && diretorio=t_candidato_2015 \
&& arq_final=t_candidato_2015_ && split_arquivo $path1 $diretorio $arq_original $pasta $arq_final

# Fazendo o load para a tabela
sorce ./t_funcoes_shell/t_func_load.sh && diretorio=t_candidato_2015 && nome_tabela=t_candidato && arquivo_original= &&
load_tabela $path1 $diretorio $arquivo_original $pasta $nome_tabela