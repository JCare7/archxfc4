#!/bin/bash

theme="arc-gtk-theme"
themeSierra="sierra-gtk-theme-git"
icon="sardi-icons"
iconPapirus="papirus-icon-theme"
cursor="breeze-snow-cursor-theme"
iconsurfn="surfn-icon-git"

# Themes
if pacman -Qi $theme $themeSierra &> /dev/null; then
	clear
	echo -e "\n<--- $theme ya esta instalado --->"
	echo -e "\n<--- $themeSierra ya esta instalado\n"
	sleep 1
else
	clear
	echo -e "\n<--- Instalando $theme, favor espere --->"
	echo -e "\n<--- Instalador $themeSierra, favor espere --->\n"
	yay -S --noconfirm $theme $themeSierra
fi

# Icons
if pacman -Qi $icon $iconPapirus &> /dev/null; then
	clear
	echo -e "\n<--- $icon ya esta instalado --->"
	echo -e "\n<--- $iconPapirus ya esta instalado --->"
	sleep 1
else
	clear
	echo -e "\n<---	Instalando $icon, favor espere --->"
	echo -e "\n<---	Instalando $iconPapirus, favor espere --->\n"
	yay -S --noconfirm $icon $iconPapirus
fi

# Cursor
if pacman -Qi $cursor &> /dev/null; then
	clear
	echo -e "\n<--- $cursor ya esta instalado --->\n"
	sleep 1
else
	clear
	echo -e "\n<---	Instalando $cursor, favor espere --->\n"
	yay -S --noconfirm $cursor
fi

if pacman -Qi $iconsurfn &> /dev/null; then
	clear
	echo -e "\n<--- $iconsurfn ya esta instalado --->\n"
	sleep 1
else
	clear
	echo -e "\n<---	Instalando $iconsurfn, favor espere --->\n"
	yay -S --noconfirm $iconsurfn
fi