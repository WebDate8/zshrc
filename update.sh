#!/bin/bash

cd ~/

git clone https://github.com/webdate8/zshrc

rm .zshrc
mv ~/zshrc/.zshrc ~/.zshrc
rm -rf zshrc
rm -rf a.sh

echo "Pansiere - Configurao concluida. Reinicie o terminal para aplicar."
