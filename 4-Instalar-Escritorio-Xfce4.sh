#!/bin/bash

clear
echo -e "\n<--	INSTALANDO ESCRITORIO XFC4	-->"

if pacman -Qi xfce4 xfc4-goodies &> /dev/null; then
	echo -e "\n<--- Escritorio XFC4 ya esta instalado --->\n"
else
	clear
	sudo pacman -Sy --needed --noconfirm xfce4 xfce4-goodies
	echo -e "\n<-- Escritorio Xfc4 instalado --->\n"
fi
clear
echo "<--	INSTALANDO GESTOR DE PANTALLA DE INICIO	-->"

if pacman -Qi lightdm lightdm-gtk-greeter lighdm-gtk-greeter-settings &> /dev/null; then
	echo -e "\n<--- Gestor de inicio ya esta instalado --->\n"
else
	clear
	sudo pacman -Sy --needed --noconfirm lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings
	sudo systemctl enable lightdm

	echo -e "\n<--	Gestor de inicio instalado correctamente	-->"
	echo -e "<--	Favor de reiniciar con el comando 'sudo reboot'	-->\n"
fi
