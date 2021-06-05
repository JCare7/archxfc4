#!/bin/bash

clear
echo -e "\n<--	INSTALANDO GESTOR AUR -YAY-	--->\n"

if pacman -Qi yay &> /dev/null; then
	echo -e "\n<--- GESTOR YAY YA ESTA INSTALADO --->\n"
	exit
else 
	if pacman -Qi git &> /dev/null; then
	echo -e "\n<--- GIT YA ESTA INSTALADO --->\n"
	else
		sudo pacman -S --needed --noconfirm git
	fi
	git clone https://aur.archlinux.org/yay-git.git /tmp/yay-git && cd /tmp/yay-git && makepkg -si && cd && rm -rf /tmp/yay-git
	echo -e "\n<--- GESTOR YAY INSTALADO CORRECTAMENTE --->\n"
fi
