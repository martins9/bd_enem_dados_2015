# -*- coding: utf-8 -*-

from t_funcoes.script_limpeza import deletar_linha_zero
from t_funcoes.deletar_arquivo import excluir_arquivo

arquivoentrada = open('microdados_enem_2015.csv', 'r')
arquivosaida = open('t_necessidades_especiais_2015.csv','w')


for linha in arquivoentrada:
    texto = linha.split(",")

    arquivosaida.writelines(
        texto[0] + "," + texto[57] + "," + texto[32] + "," + texto[35] + "," + texto[34] + "," + texto[55] + "," + \
        texto[56] + "," + texto[59] + "," + texto[36] + "," + texto[29] + "," + texto[58] + "," + texto[53] + "," + \
        texto[44] + "," + texto[37] + "," + texto[38] + "," + texto[30] + "," + texto[54] + "," + texto[39] + "," + \
        texto[31] + "," + texto[42] + "," + texto[40] + "," +texto[51] + "," + texto[52] + '\n')

# Chamando a função para fazer a limpeza das linhas.
deletar_linha_zero('t_necessidades_especiais_2015.csv')

# Chamando a função para deletar o arquivo
excluir_arquivo('t_necessidades_especiais_2015.csv')

arquivoentrada.close()
arquivosaida.close()
