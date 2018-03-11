#!/usr/bin/python
# -*- coding: utf-8 -*-
import os

arquivoentrada = open('t_responde_2015_1.csv', 'r')
arquivosaida = open('t_responde_2015_final.csv', 'w')

if not os.path.exists("t_responde_2015"):
    os.makedirs("t_responde_2015")

for linha in arquivoentrada:
    texto = linha.split(",")

    if ('.' not in texto[2]) and ('*' not in texto[2]) and (not texto[2].isspace()):
        arquivosaida.writelines(texto[0] + "," + texto[1] + "," + texto[2])

arquivoentrada.close()
arquivosaida.close()
