# -*- coding: utf-8 -*-

# Função que deleta as linhas que contém todos os zeros.
def deletar_linha_zero(a):
    try:
        arquivoentrada = open(a, 'r')
        arquivosaida = open("t_necessidades_especiais_2015_final.csv", 'w')

        # Lendo as linhas do arquivo
        lines = arquivoentrada.readlines()

        # Lendo cada linha dentro arquivo e escrevendo linhas que não tenham zeros
        for line in lines:
            if not ",0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" in line:
                arquivosaida.write(line)

        arquivoentrada.close()
        arquivosaida.close()
    except IOError as e:
        print 'Não foi possível abrir o arquivo'
        exit()
