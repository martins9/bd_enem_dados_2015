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

def trocar_sigla(a):
    try:
        arquivoentrada = open(a, 'r')
        arquivosaida = open('t_municipio_2015_1.csv', 'w')

        for linha in arquivoentrada:
            texto = linha.split(",")

            print texto


        if 'AC\n' in texto[2]:
            a = texto[2] = '1'
            print a
            #b = texto[0] + ',' + texto[1] + ',' + a
            #arquivosaida.writelines(b)
        '''
        elif texto[2] == 'AL\n':
            a = texto[2] = '2\n'
            b = texto[0] + ',' + texto[1] + ',' + a
            arquivosaida.writelines(b)
        elif texto[2] == 'AP\n':
            a = texto[2] = '3\n'
            b = texto[0] + ',' + texto[1] + ',' + a
            arquivosaida.writelines(b)
        elif texto[2] == 'AM\n':
            a = texto[2] = '4\n'
            b = texto[0] + ',' + texto[1] + ',' + a
            arquivosaida.writelines(b)
        elif texto[2] == 'BA\n':
            a = texto[2] = '5\n'
            b = texto[0] + ',' + texto[1] + ',' + a
            arquivosaida.writelines(b)
        elif texto[2] == 'CE\n':
            a = texto[2] = '6\n'
            b = texto[0] + ',' + texto[1] + ',' + a
            arquivosaida.writelines(b)
        elif texto[2] == 'DF\n':
            a = texto[2] = '7\n'
            b = texto[0] + ',' + texto[1] + ',' + a
            arquivosaida.writelines(b)
        elif texto[2] == 'ES\n':
            a = texto[2] = '8\n'
            b = texto[0] + ',' + texto[1] + ',' + a
            arquivosaida.writelines(b)
        elif texto[2] == 'GO\n':
            a = texto[2] = '9\n'
            b = texto[0] + ',' + texto[1] + ',' + a
            arquivosaida.writelines(b)
        elif texto[2] == 'MA\n':
            a = texto[2] = '10\n'
            b = texto[0] + ',' + texto[1] + ',' + a
            arquivosaida.writelines(b)
        elif texto[2] == 'MT\n':
            a = texto[2] = '11\n'
            b = texto[0] + ',' + texto[1] + ',' + a
            arquivosaida.writelines(b)
        elif texto[2] == 'MS\n':
            a = texto[2] = '12\n'
            b = texto[0] + ',' + texto[1] + ',' + a
            arquivosaida.writelines(b)
        elif texto[2] == 'MG\n':
            a = texto[2] = '13\n'
            b = texto[0] + ',' + texto[1] + ',' + a
            arquivosaida.writelines(b)
        elif texto[2] == 'PA\n':
            a = texto[2] = '14\n'
            b = texto[0] + ',' + texto[1] + ',' + a
            arquivosaida.writelines(b)
        elif texto[2] == 'PB\n':
            a = texto[2] = '15\n'
            b = texto[0] + ',' + texto[1] + ',' + a
            arquivosaida.writelines(b)
        elif texto[2] == 'PR\n':
            a = texto[2] = '16\n'
            b = texto[0] + ',' + texto[1] + ',' + a
            arquivosaida.writelines(b)
        elif texto[2] == 'PE\n':
            a = texto[2] = '17\n'
            b = texto[0] + ',' + texto[1] + ',' + a
            arquivosaida.writelines(b)
        elif texto[2] == 'PI\n':
            a = texto[2] = '18\n'
            b = texto[0] + ',' + texto[1] + ',' + a
            arquivosaida.writelines(b)
        elif texto[2] == 'RJ\n':
            a = texto[2] = '19\n'
            b = texto[0] + ',' + texto[1] + ',' + a
            arquivosaida.writelines(b)
        elif texto[2] == 'RN\n':
            a = texto[2] = '20\n'
            b = texto[0] + ',' + texto[1] + ',' + a
            arquivosaida.writelines(b)
        elif texto[2] == 'RS\n':
            a = texto[2] = '21\n'
            b = texto[0] + ',' + texto[1] + ',' + a
            arquivosaida.writelines(b)
        elif texto[2] == 'RO\n':
            a = texto[2] = '22\n'
            b = texto[0] + ',' + texto[1] + ',' + a
            arquivosaida.writelines(b)
        elif texto[2] == 'RR\n':
            a = texto[2] = '23\n'
            b = texto[0] + ',' + texto[1] + ',' + a
            arquivosaida.writelines(b)
        elif texto[2] == 'SC\n':
            a = texto[2] = '24\n'
            b = texto[0] + ',' + texto[1] + ',' + a
            arquivosaida.writelines(b)
        elif texto[2] == 'SP\n':
            a = texto[2] = '25\n'
            b = texto[0] + ',' + texto[1] + ',' + a
            arquivosaida.writelines(b)
        elif texto[2] == 'SE\n':
            a = texto[2] = '26\n'
            b = texto[0] + ',' + texto[1] + ',' + a
            arquivosaida.writelines(b)
        elif texto[2] == 'TO\n':
            a = texto[2] = '27\n'
            b = texto[0] + ',' + texto[1] + ',' + a
            arquivosaida.writelines(b)
        '''
        arquivoentrada.close()
        arquivosaida.close()
    except IOError as e:
        print 'Não foi possível abrir o arquivo'
        exit()

def tirar_duas_virgulas(c):
    try:
        arquivoentrada = open(c, 'r')
        arquivosaida = open("t_municipio_2015_1.csv", 'w')

        for linha in arquivoentrada:
            if ',,' not in linha:
                arquivosaida.writelines(linha)

        arquivoentrada.close()
        arquivosaida.close()
    except IOError as e:
        print 'Não foi possível abrir o arquivo'
        exit()