#!/bin/bash

clear
echo -e "\n<--	INSTALANDO GESTOR AUR -YAY-	--->\n"

if pacman -Qi yay &> /dev/null; then
	echo -e "\n<--- GESTOR YAY YA ESTA INSTALADO --->\n"
	exit
else 
	if pacman -Qi git &> /dev/null; then
	else
		sudo pacman -S --needed --noconfirm git
	fi
	sudo git clone https://aur.archlinux.org/yay.git /tmp/ && cd /tmp/yay && makepkg -si && cd && rm -rf /tmp/yay
	echo -e "\n<--- GESTOR YAY INSTALADO CORRECTAMENTE --->\n"
fi
