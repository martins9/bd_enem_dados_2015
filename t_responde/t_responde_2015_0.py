#!/usr/bin/python
# -*- coding: utf-8 -*-

arquivoentrada = open('microdados_enem_2015.csv', 'r')
arquivosaida = open('t_responde_2015_1.csv', 'w')

k = 0
p = 45
o = 90
j = 135

for linha in arquivoentrada:
    texto = linha.split(",")

    for char in texto[101]:  # Resposta da Prova de CH
        k = k + 1
        a1 = texto[0] + "," + '2015' + texto[93] + str(k) + "," + char + '\n'
        arquivosaida.writelines(a1)

    for char in texto[100]:  # Resposta da Prova de CN
        p = p + 1
        a1 = texto[0] + "," + '2015' + texto[92] + str(p) + "," + char + '\n'
        arquivosaida.writelines(a1)

    T = texto[102].replace("9", "")  # Tirando o "9" da Resposta da Prova de LC

    for char in T:  # Resposta da Prova de LC
        o = o + 1
        a1 = texto[0] + "," + '2015' + texto[94] + str(o) + "," + char + '\n'
        arquivosaida.writelines(a1)

    for char in texto[103]:  # Resposta da Prova de MT
        j = j + 1
        a1 = texto[0] + "," + '2015' + texto[95] + str(j) + "," + char + '\n'
        arquivosaida.writelines(a1)

    k = 0
    p = 45
    o = 90
    j = 135

arquivoentrada.close()
arquivosaida.close()
