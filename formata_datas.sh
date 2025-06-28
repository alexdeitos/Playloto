#!/bin/bash

# Verifica se o arquivo 'teste' existe
if [ ! -f "teste" ]; then
    echo "Erro: Arquivo 'teste' não encontrado."
    exit 1
fi

# Faz backup do arquivo original
cp teste teste.bak

# Usa sed para substituir datas DD/MM/YYYY por YYYY-MM-DD
sed -E 's|([0-9]{2})/([0-9]{2})/([0-9]{4})|\3-\2-\1|g' teste > teste.tmp && mv teste.tmp teste

echo "Datas formatadas com sucesso para YYYY-MM-DD."
