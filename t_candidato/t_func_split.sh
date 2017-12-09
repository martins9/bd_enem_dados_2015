#!/usr/bin/env bash

function split_arquivo() {

	nome_arquivo=$1
	path1=$2

    count=`wc -l $1 | awk '{print $1}'`

    if [ "$count" -lt 10000000 ]; then
    	split -d -a6 -l 1000000 --additional-suffix=.csv $1 $path1/t_candidato_2015/t_responde_2015_
    elif [ "$count" -ge 10000001 ] && [ "$count" -lt 20000000 ]; then
    	split -d -a6 -l 2000000 --additional-suffix=.csv $1 $path1/t_candidato_2015/t_responde_2015_
    elif [ "$count" -ge 20000001 ] && [ "$count" -lt 40000000 ]; then
        split -d -a6 -l 4000000 --additional-suffix=.csv $1 $path1/t_candidato_2015/t_responde_2015_
    elif [ "$count" -ge 40000001 ] && [ "$count" -lt 70000000 ]; then
        split -d -a6 -l 5000000 --additional-suffix=.csv $1 $path1/t_candidato_2015/t_responde_2015_
    elif [ "$count" -ge 70000001 ] && [ "$count" -lt 90000000 ]; then
        split -d -a6 -l 6000000 --additional-suffix=.csv $1 $path1/t_candidato_2015/t_responde_2015_
    elif [ "$count" -ge 90000001 ] && [ "$count" -lt 90000000 ]; then
        split -d -a6 -l 6000000 --additional-suffix=.csv $1 $path1/t_candidato_2015/t_responde_2015_


    fi
}