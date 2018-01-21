#!/usr/bin/env bash

function load_tabela (){

 if [ $arquivo_original == "empty" ]; then

    # Contando quantos arquivos tem na pasta
    QTD_ARQ=$(find $path1/$diretorio/ -type f | wc -l)

    # Data e hora do inicio do processamento
    data=$(date "+%d/%m/%Y %H:%M:%S")
    echo "------------- START:" $data "-------------" > $nome_tabela_log.txt

    QTD_ARQ1=$((QTD_ARQ-1))
    # Fazendo o Load das tabelas
    for i in $(seq -f "%06g" 0 $QTD_ARQ1)
    do
        # Inserindo o nome do arquivo de load no log.txt
        echo "t_$nome_tabela_2015_$i.csv" >> $nome_tabela_log.txt

        # Inserindo o tempo que gastou para load no log.txt
	    time (psql -h localhost -d bd_enem_2015_local -U martins -c "\copy $nome_tabela from $path1/$diretorio/t_$nome_tabela_2015_$i.csv
	        with delimiter as ',' NULL AS 'null' csv") &>> $nome_tabela_log.txt
    done

    # Data e hora do fim do processamento
    data1=$(date "+%d/%m/%Y %H:%M:%S")
    echo "------------- END:" $data "-------------" >> $nome_tabela_log.txt
    echo >> $arquivo_original_log.txt

elif [ $diretorio == 'empty' ]; then

    # Data e hora do inicio do processamento
    data=$(date "+%d/%m/%Y %H:%M:%S")
    echo "------------- START:" $data "-------------" > $nome_tabela"_log.txt"
    echo >> $nome_tabela"_log.txt"

    # Fazendo o Load das tabelas
    time (psql -h localhost -d bd_enem_2015_local -U martins -c "\copy $nome_tabela from $path1/$arquivo_original
            with delimiter as ',' NULL AS 'null' csv") &>> $nome_tabela"_log.txt"

    # Data e hora do fim do processamento
    data1=$(date "+%d/%m/%Y %H:%M:%S")

    echo >> $nome_tabela"_log.txt"
    echo "------------- END:" $data1 "-------------" >> $nome_tabela"_log.txt"
fi

}