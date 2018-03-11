#!/usr/bin/env bash

# Extraindo dados
python t_responde_2015_0.py

# Limpando os dados
python t_responde_2015_1.py

# Excluindo os arquivos de base
rm t_responde_2015_1.csv

# Achando o caminho
path1=$(pwd)

# Fazendo o load para a tabela
pasta="t_responde_2015"
arquivo_original="t_responde_2015_final.csv"
arq_final="t_responde_2015_"
source /home/anacrl/microdados_enem_2015/t_funcoes_shell/t_func_split.sh
split_arquivo $path1 $pasta $arquivo_original $arq_final

# Removendo arquivo
rm t_candidato_2015_final.csv

# Fazendo o load para a tabela
diretorio="t_responde_2015"
nome_tabela="responde"
arquivo_original="empty"
arquivo_final="t_responde_2015_"
source /home/anacrl/microdados_enem_2015/t_funcoes_shell/t_func_load.sh
load_tabela $path1 $diretorio $nome_tabela $arquivo_original $arquivo_final
