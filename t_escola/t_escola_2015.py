#!/usr/bin/python
# -*- coding: utf-8 -*-

from script_limpeza import remover_parte_estranha
from os import remove

arquivoentrada = open('microdados_enem_2015.csv', 'r')
arquivosaida = open('t_escola_2015.csv', 'w')

for linha in arquivoentrada:
    texto = linha.split(",")

    # Quando tem intervalos
    arquivosaida.writelines(
        texto[8] + "," + texto[9] + ",null," + texto[13] + "," + texto[14] + "," + texto[15] + ' \n')

arquivoentrada.close()
arquivosaida.close()

# Removendo informação estranha
arquivo = 't_escola_2015.csv'
parte_estranha = ',,null,,,'
frequencia = '1'
remover_parte_estranha(arquivo, parte_estranha, frequencia)

# Removendo arquivo
remove(arquivo)
