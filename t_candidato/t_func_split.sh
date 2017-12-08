#!/usr/bin/env bash

function split_arquivo() {

	nome_arquivo=$1

    count=`wc -l $1 | awk '{print $1}'`

    if [ "$count" -ge 10 ] && [ "$count" -lt 15 ]; then
    	echo ">=10 and <=115"
    elif [ "$count" -ge 16 ] && [ "$count" -lt 20 ]; then
    	echo ">=16 and <=20"
    elif [ "$count" -ge 21 ]; then
    	echo ">=21"
    fi
}