#!/usr/bin/python
# -*- coding: utf-8 -*-

arquivoentrada = open('microdados_enem_2015.csv', 'r')


for linha in arquivoentrada:
    texto = linha.split(",")

    arquivosaida.writelines(
        texto[0] + "," + texto[57] + "," + texto[32] + "," + texto[35] + "," + texto[34] + "," + texto[55] + "," + \
        texto[56] + "," + texto[59] + "," + texto[36] + "," + texto[29] + "," + texto[58] + "," + texto[53] + "," + \
        texto[44] + "," + texto[37] + "," + texto[38] + ","  + texto[30] + "," + texto[54] + "," + texto[39] + "," + \
        texto[31] + "," + texto[42] + "," + texto[40] + "," +texto[51] + "," + texto[52] + '\n')




arquivoentrada.close()