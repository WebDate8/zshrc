#!/bin/bash

cd ~/

git clone https://github.com/webdate8/zshrc

mv ~/zshrc/.tmux.conf ~/.tmux.conf
rm -rf zshrc

echo "Pansiere - Configurao concluida. Reinicie o terminal para aplicar."