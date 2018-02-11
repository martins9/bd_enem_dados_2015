arquivoentrada = open("microdados_enem_2015_1.csv", "r")
arquivosaida = open("resultado.csv", "w")

for i in arquivoentrada:
    linha = i.split(",")

    # CD_PROVA_CN
    arquivosaida.writelines(linha[92])

    # Extraindo os dados do CD_PROVA_CN
    for char in linha[105]:
        arquivosaida.writelines("," + char,)
    arquivosaida.writelines("\n")

    # CD_PROVA_CH
    arquivosaida.writelines(linha[93])

    # Extraindo os dados do CD_PROVA_CH
    for char in linha[106]:
        arquivosaida.writelines("," + char,)
    arquivosaida.writelines("\n")

    # CD_PROVA_LC
    arquivosaida.writelines(linha[94])

    # Extraindo os dados do CD_PROVA_LC
    for char in linha[107]:
        arquivosaida.writelines("," + char,)
    arquivosaida.writelines("\n")

    # CD_PROVA_MT
    arquivosaida.writelines(linha[95])

    # Extraindo os dados do CD_PROVA_MT
    for char in linha[108]:
        arquivosaida.writelines("," + char,)
    arquivosaida.writelines("\n")

arquivoentrada.close()
arquivosaida.close()