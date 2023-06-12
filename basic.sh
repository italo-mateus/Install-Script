#!/bin/bash

#Atualização do sistema

apt --fixbroken install
sudo apt update && sudo apt upgrade -s

#Cria pasta para guardar os programas baixados

mkdir Programas /home/mateus/Downloads/Programas
cd /home/mateus/Downloads/Programas

#Download do Google chome

wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

#Download do VScode

wget -c https://az764295.vo.msecnd.net/stable/b380da4ef1ee00e224a15c1d4d9793e27c2b6302/code_1.79.0-1686149120_amd64.deb

#Instala os programas .deb baixados

sudo dpkg -i *.deb 

#Instala o Qbittorrent
sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable

apt --fixbroken install
sudo apt update && sudo apt upgrade -s


sudo apt install qbittorrent

#instalar o GitHub desktop
wget -qO - https://apt.packages.shiftkey.dev/gpg.key | gpg --dearmor | sudo tee /usr/share/keyrings/shiftkey-packages.gpg > /dev/null
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/shiftkey-packages.gpg] https://apt.packages.shiftkey.dev/ubuntu/ any main" > /etc/apt/sources.list.d/shiftkey-packages.list'

wget -qO - https://mirror.mwt.me/shiftkey-desktop/gpgkey | gpg --dearmor | sudo tee /usr/share/keyrings/mwt-desktop.gpg > /dev/null
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/mwt-desktop.gpg] https://mirror.mwt.me/shiftkey-desktop/deb/ any main" > /etc/apt/sources.list.d/mwt-desktop.list'

apt --fixbroken install
sudo apt update &&sudo apt upgrade -s

sudo apt install github-desktop



