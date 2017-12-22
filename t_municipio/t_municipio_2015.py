#!/usr/bin/python
# -*- coding: utf-8 -*-

from t_funcoes.script_limpeza import trocar_sigla,tirar_duas_virgulas

arquivoentrada = open('microdados_enem_2015.csv', 'r')
arquivosaida = open('t_municipio_2015.csv', 'w')

for linha in arquivoentrada:
    texto = linha.split(",")

    arquivosaida.writelines(texto[2] + "," + texto[3] + "," + texto[5] + '\n')
    arquivosaida.writelines(texto[9] + "," + texto[10] + "," + texto[12] + '\n')
    arquivosaida.writelines(texto[84] + "," + texto[85] + "," + texto[87] + '\n')

arquivoentrada.close()
arquivosaida.close()

arquivo='t_municipio_2015.csv'
tirar_duas_virgulas(arquivo)

#trocar_sigla(arquivo)

