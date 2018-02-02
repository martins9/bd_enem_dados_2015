#!/usr/bin/python
# -*- coding: utf-8 -*-

arquivoentrada = open('microdados_enem_2015_1.csv', 'r')
arquivosaida = open('t_realiza_1.csv', 'w')

for linha in arquivoentrada:
    texto = linha.split(",")

    # Pegando os dados nos intervalos
    arquivosaida.writelines(texto[0] + ",2015" + texto[92] + "," + texto[88] + "," + texto[96] + '\n')
    arquivosaida.writelines(texto[0] + ",2015" + texto[93] + "," + texto[89] + "," + texto[97] + '\n')
    arquivosaida.writelines(texto[0] + ",2015" + texto[94] + "," + texto[90] + "," + texto[98] + '\n')
    arquivosaida.writelines(texto[0] + ",2015" + texto[95] + "," + texto[91] + "," + texto[99] + '\n')

arquivoentrada.close()
arquivosaida.close()