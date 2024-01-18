#!/bin/bash

apt update
apt upgrade -y
apt install sudo -y
apt install exa -y
apt install vim -y
apt install neofetch -y
sudo apt install zsh -y
apt install curl git -y

# Configura o Zsh como shell padrão
chsh -s $(which zsh)

# Instala o curl e o git
sudo apt install curl git -y

# Instala o Oh My Zsh
Y | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
y
# Instala o Zinit
bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"

# Instala o plugin de sugestões automáticas para o Zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Clona o repositório com o arquivo de configuração Zsh
git clone https://github.com/webdate8/zshrc

# Remove o arquivo de configuração Zsh existente
cd ~/

rm .zshrc

# Move o novo arquivo de configuração Zsh para o local adequado
mv zshrc/zshrc .zshrc
rm -rf zshrc
# Mensagem de conclusão
echo "Pansiere - Configuração concluída. Reinicie o terminal para aplicar."
