#!/usr/bin/env bash

function split_arquivo() {

	nome_arquivo=$1

    count=`wc -l $1 | awk '{print $1}'`

    count1=21
    string="Soma: "


    echo $(($count+$count1))
}