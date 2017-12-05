# -*- coding: utf-8 -*-
import os

# Funcao que deleta arquivo
def deletar_arquivo(arquivo):
    os.remove(arquivo)

# Funcao para renomear arquivo
def renomear(a,b):
    os.rename(a,b)

# Funcao para criar diretorio
def criar_diretorio(a):
    if not os.path.exists(a):
        os.makedirs(a)


