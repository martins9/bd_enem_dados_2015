#!/usr/bin/env bash

# Script pyhton para extrair os dados
python t_municipio2014.py

# Eliminando as linhas que tem ",,"
sed '/,,/d' t_municipio_2014.csv > t_municipio_2014_1.csv

# Deletando esse arquivo
rm t_municipio_2014.csv

# Eliminando as linhas iguais pelo primeiro campo "1"
sort -u -k1 t_municipio_2014_1.csv > t_municipio_2014_2.csv

# Deletanto esse arquivo
rm t_municipio_2014_1.csv

# Fazendo uma substituicao de sigla para numero
python t_municipio2014_1.py

# Deletando esse arquivo
rm t_municipio_2014_2.csv

# Fazendo o download da tabela
./load_tabela.sh