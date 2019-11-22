#!/bin/bash
echo "== Removendo diretório\n"
sudo rm -rf .docker/dbdata

echo "== Criando diretório\n"
mkdir .docker/dbdata

echo "== Alterando permissão"
sudo chmod 777 -R .docker/dbdata