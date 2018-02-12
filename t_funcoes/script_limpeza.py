# -*- coding: utf-8 -*-

# Função que deleta as linhas que contém todos os zeros.

def deletar_linha_zero(arquivo, frequencia):
    try:
        nome_arquivo = arquivo.split('.')
        nome_novo = nome_arquivo[0] + '_' + frequencia + '.csv'

        arquivoentrada = open(arquivo, 'r')
        arquivosaida = open(nome_novo, 'w')

        # Lendo cada linha dentro arquivo e escrevendo linhas que não tenham zeros
        for line in arquivoentrada:
            if ',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0' not in line:
                arquivosaida.write(line)

        arquivoentrada.close()
        arquivosaida.close()
    except IOError as e:
        print 'Não foi possível abrir o arquivo'
        exit()


def trocar_sigla(a):
    try:
        arquivoentrada = open(a, 'r')
        arquivosaida = open('t_municipio_2015_2.csv', 'w')

        for linha in arquivoentrada:
            texto = linha.split(",")

            if 'AC\n' in texto[2]:
                a = texto[2] = '1\n'
                b = texto[0] + ',' + texto[1] + ',' + a
                arquivosaida.writelines(b)
            elif 'AL\n' in texto[2]:
                a = texto[2] = '2\n'
                b = texto[0] + ',' + texto[1] + ',' + a
                arquivosaida.writelines(b)
            elif 'AP\n' in texto[2]:
                a = texto[2] = '3\n'
                b = texto[0] + ',' + texto[1] + ',' + a
                arquivosaida.writelines(b)
            elif 'AM\n' in texto[2]:
                a = texto[2] = '4\n'
                b = texto[0] + ',' + texto[1] + ',' + a
                arquivosaida.writelines(b)
            elif 'BA\n' in texto[2]:
                a = texto[2] = '5\n'
                b = texto[0] + ',' + texto[1] + ',' + a
                arquivosaida.writelines(b)
            elif 'CE\n' in texto[2]:
                a = texto[2] = '6\n'
                b = texto[0] + ',' + texto[1] + ',' + a
                arquivosaida.writelines(b)
            elif 'DF\n' in texto[2]:
                a = texto[2] = '7\n'
                b = texto[0] + ',' + texto[1] + ',' + a
                arquivosaida.writelines(b)
            elif 'ES\n' in texto[2]:
                a = texto[2] = '8\n'
                b = texto[0] + ',' + texto[1] + ',' + a
                arquivosaida.writelines(b)
            elif 'GO\n' in texto[2]:
                a = texto[2] = '9\n'
                b = texto[0] + ',' + texto[1] + ',' + a
                arquivosaida.writelines(b)
            elif 'MA\n' in texto[2]:
                a = texto[2] = '10\n'
                b = texto[0] + ',' + texto[1] + ',' + a
                arquivosaida.writelines(b)
            elif 'MT\n' in texto[2]:
                a = texto[2] = '11\n'
                b = texto[0] + ',' + texto[1] + ',' + a
                arquivosaida.writelines(b)
            elif 'MS\n' in texto[2]:
                a = texto[2] = '12\n'
                b = texto[0] + ',' + texto[1] + ',' + a
                arquivosaida.writelines(b)
            elif 'MG\n' in texto[2]:
                a = texto[2] = '13\n'
                b = texto[0] + ',' + texto[1] + ',' + a
                arquivosaida.writelines(b)
            elif 'PA\n' in texto[2]:
                a = texto[2] = '14\n'
                b = texto[0] + ',' + texto[1] + ',' + a
                arquivosaida.writelines(b)
            elif 'PB\n' in texto[2]:
                a = texto[2] = '15\n'
                b = texto[0] + ',' + texto[1] + ',' + a
                arquivosaida.writelines(b)
            elif 'PR\n' in texto[2]:
                a = texto[2] = '16\n'
                b = texto[0] + ',' + texto[1] + ',' + a
                arquivosaida.writelines(b)
            elif 'PE\n' in texto[2]:
                a = texto[2] = '17\n'
                b = texto[0] + ',' + texto[1] + ',' + a
                arquivosaida.writelines(b)
            elif 'PI\n' in texto[2]:
                a = texto[2] = '18\n'
                b = texto[0] + ',' + texto[1] + ',' + a
                arquivosaida.writelines(b)
            elif 'RJ\n' in texto[2]:
                a = texto[2] = '19\n'
                b = texto[0] + ',' + texto[1] + ',' + a
                arquivosaida.writelines(b)
            elif 'RN\n' in texto[2]:
                a = texto[2] = '20\n'
                b = texto[0] + ',' + texto[1] + ',' + a
                arquivosaida.writelines(b)
            elif 'RS\n' in texto[2]:
                a = texto[2] = '21\n'
                b = texto[0] + ',' + texto[1] + ',' + a
                arquivosaida.writelines(b)
            elif 'RO\n' in texto[2]:
                a = texto[2] = '22\n'
                b = texto[0] + ',' + texto[1] + ',' + a
                arquivosaida.writelines(b)
            elif 'RR\n' in texto[2]:
                a = texto[2] = '23\n'
                b = texto[0] + ',' + texto[1] + ',' + a
                arquivosaida.writelines(b)
            elif 'SC\n' in texto[2]:
                a = texto[2] = '24\n'
                b = texto[0] + ',' + texto[1] + ',' + a
                arquivosaida.writelines(b)
            elif 'SP\n' in texto[2]:
                a = texto[2] = '25\n'
                b = texto[0] + ',' + texto[1] + ',' + a
                arquivosaida.writelines(b)
            elif 'SE\n' in texto[2]:
                a = texto[2] = '26\n'
                b = texto[0] + ',' + texto[1] + ',' + a
                arquivosaida.writelines(b)
            elif 'TO\n' in texto[2]:
                a = texto[2] = '27\n'
                b = texto[0] + ',' + texto[1] + ',' + a
                arquivosaida.writelines(b)

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


def remover_parte_estranha(arquivo, parte_estranha, frequencia):
    try:
        nome_arquivo = arquivo.split('.')
        nome_novo = nome_arquivo[0] + '_' + frequencia + '.csv'

        arquivoentrada = open(arquivo, 'r')
        arquivosaida = open(nome_novo, 'w')

        for linha in arquivoentrada:
            if parte_estranha not in linha:
                arquivosaida.writelines(linha)

        arquivoentrada.close()
        arquivosaida.close()
    except IOError as e:
        print 'Não foi possível abrir o arquivo'
        exit()


def tirar_null(arquivo, frequencia):
    try:
        nome_arquivo = arquivo.split('.')
        nome_novo = nome_arquivo[0] + '_' + frequencia + '.csv'

        arquivoentrada = open(arquivo, 'r')
        arquivosaida = open(nome_novo, 'w')

        for linha in arquivoentrada:
            texto = linha.split(",")

            # Pegando os dados dados somente que nao tiver '\n' no texto[3]
            if texto[2] != '\n':
                arquivosaida.writelines(texto[0] + "," + texto[1] + "," + texto[2])
            else:
                continue

        arquivoentrada.close()
        arquivosaida.close()
    except IOError as e:
        print 'Não foi possível abrir o arquivo'
        exit()
