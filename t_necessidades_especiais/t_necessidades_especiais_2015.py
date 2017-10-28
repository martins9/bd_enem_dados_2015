#!/usr/bin/python
# -*- coding: utf-8 -*-

arquivoentrada = open('microdados_enem_2014.csv', 'r')
arquivosaida = open('t_necessidadesespeciais_1.csv', 'w')

for linha in arquivoentrada:
    texto = linha.split(",")

    arquivosaida.writelines(
        texto[0] + "," + texto[51] + "," + texto[31] + "," + texto[34] + "," + texto[33] + "," + texto[49] + "," + \
        texto[50] + "," + texto[53] + "," + texto[35] + "," + texto[28] + "," + texto[52] + "," + texto[47] + "," + texto[41] + "," + texto[36] + "," +
        texto[37] + ","
        + texto[29] + "," + texto[48] + "," + texto[38] + "," + texto[30] + "," + texto[40] + "," + texto[39] + "," +
        texto[45] + "," + texto[46] + '\n')

arquivoentrada.close()
arquivosaida.close()