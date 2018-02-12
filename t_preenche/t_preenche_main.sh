#!/usr/bin/env bash


#!/usr/bin/env bash

# Extraindo os dados
python t_preenche_2015.py

# Substituindo "\r\n" por "\n"
python t_preenche_2015_1.py

# Tirando "\n" do terceiro campo
python t_preenche_2015_2.py

# Excluindo os arquivos
rm t_preenche_2015.csv t_preenche_2015_1.csv

# Fazendo o load para a tabela
pasta="t_preenche_2015"
arquivo_original="t_preenche_2015_final.csv"
arq_final="t_preenche_2015_"
source /home/anacrl/microdados_enem_2015/t_funcoes_shell/t_func_split.sh
split_arquivo $path1 $pasta $arquivo_original $arq_final

# Removendo arquivo
rm t_preenche_2015_final.csv

# Fazendo o load para a tabela
diretorio="t_preenche_2015"
nome_tabela="preenche"
arquivo_original="empty"
arquivo_final="t_preenche_2015_"
source /home/anacrl/microdados_enem_2015/t_funcoes_shell/t_func_load.sh
load_tabela $path1 $diretorio $nome_tabela $arquivo_original $arquivo_final