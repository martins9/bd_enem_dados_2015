#!/usr/bin/env bash

# Extraindo dados do arquivo bruto
python t_questao_2015.py

# Eliminando linhas brancos e codigos repetidos
sed '/^$/d' resultado.csv | sort -u > resultado_1.csv

# Extraindo dados do arquivo tratados
python t_questao_2015_1.py

# Eliminando as linhas brancos
sed '/^$/d' resultado_2.csv  > resultado_3.csv

# Deletando arquivos
rm resultado_1.csv