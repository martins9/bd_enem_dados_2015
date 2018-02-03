#!/usr/bin/python
# -*- coding: utf-8 -*-

from script_limpeza import tirar_null

import os

arquivoentrada = open('microdados_enem_2015_1.csv', 'r')
arquivosaida = open('t_realiza.csv', 'w')

for linha in arquivoentrada:
    texto = linha.split(",")

    # Pegando os dados nos intervalos
    arquivosaida.writelines(texto[0] + ",2015" + texto[92] + "," + texto[88] + "," + texto[96] + '\n')
    arquivosaida.writelines(texto[0] + ",2015" + texto[93] + "," + texto[89] + "," + texto[97] + '\n')
    arquivosaida.writelines(texto[0] + ",2015" + texto[94] + "," + texto[90] + "," + texto[98] + '\n')
    arquivosaida.writelines(texto[0] + ",2015" + texto[95] + "," + texto[91] + "," + texto[99] + '\n')

arquivoentrada.close()
arquivosaida.close()

arquivo = 't_realiza.csv'
frequencia = '1'

# Chamando a fucao
tirar_null(arquivo, frequencia)

# Deletando arquivo
os.remove(arquivo)

# Criar um diretorio
if not os.path.exists("t_realiza_2015"):
        os.makedirs("t_realiza_2015")
