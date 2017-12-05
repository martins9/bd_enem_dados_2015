# -*- coding: utf-8 -*-

from t_funcoes.script_estrutura import deletar_arquivo,renomear,criar_diretorio

arquivoentrada = open('microdados_enem_2015_1.csv', 'r')
arquivosaida = open('t_candidato_2015_1.csv', 'w')

for linha in arquivoentrada:
    texto = linha.split(",")

    arquivosaida.writelines(
        texto[0] + "," + texto[2] + "," + texto[19] + "," + texto[84] + "," + texto[8] + ",2," + texto[18] + "," + \
        texto[24] + "," + texto[27] + "," + texto[23] + "," + texto[26] + "," + texto[28] + "," + texto[1] + "," + \
        texto[16] + "," + texto[17] + "," + texto[110] + "," + texto[111] + "," + texto[112] + "," + texto[113] + "," + \
        texto[114] + "," + texto[115] + "," + texto[104] + "," + texto[109]+'\n')

arquivoentrada.close()
arquivosaida.close()

# Deletar arquivo
#arquivo='t_candidato_2015_1.csv'
#deletar_arquivo(arquivo)

# Criar um diretorio
diretorio='t_candidato_2015'
criar_diretorio(diretorio)
