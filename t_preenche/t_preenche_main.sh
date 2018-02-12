#!/usr/bin/env bash

# Extraindo os dados
python t_preenche_2015.py

# Substituindo "\r\n" por "\n"
python t_preenche_2015_1.py

# Tirando "\n" do terceiro campo
python t_preenche_2015_2.py

# Excluindo os arquivos
rm t_preenche_2015.csv t_preenche_2015_1.csv