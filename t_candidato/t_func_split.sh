#!/usr/bin/env bash

function split_arquivo() {

	nome_arquivo=$1

    count=`wc --lines $1`

    string="Quantidade de linhas: "
    echo $string$count
}