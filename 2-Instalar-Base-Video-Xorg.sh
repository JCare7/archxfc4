#!/bin/bash

intel="xf86-video-intel"
ati="xf86-video-ati"
nvidia="xf86-video-noveau"
vb="virtualbox-guest-utils"

clear
while :
do
	echo -e "\nINSTALANDO DRIVERS XORG PARA PANTALLAS"
	echo "--------------------------------------"
	echo "1. Instalar drivers Xorg para INTEL"
	echo "2. Instalar drivers Xorg para AMD/ATI"
	echo "3. Instalar drivers Xorg para NVIDIA"
	echo "4. Instalar drivers para VIRTUALBOX"
	echo "5. Salir"
	echo "--------------------------------------"
	echo -n "Seleccione una opcion [1 - 5]: "
	read opcion

case $opcion in
	1)
		if pacman -Qi $intel &> /dev/null; then
			echo -e "\n<-- Controlador de video Intel ya esta instalado -->"
			echo -e "<--- Operacion Cancelada --->\n"
		else
			clear
			echo -e "\n<--- Instalando driver INTEL --->\n"
			sudo pacman -S --needed --noconfirm $intel
		fi; exit;;
	2)
		if pacman -Qi $ati &> /dev/null; then
			echo -e "\n<--- Controlador de video AMD/ATI ya esta instalado --->"
			echo -e "<--- Operacion Cancelada --->\n"
		else
			clear
			echo "<--- Instalando driver AMD/ATI --->"
			sudo pacman -S --needed --noconfirm $ati
		fi; exit;;
	3)
		if pacman -Qi $nvidia &> /dev/null; then
			echo -e "\n<--- Controlador de video NVIDIA ya esta instalado --->"
			echo -e "<--- Operacion Cancelada --->\n"
		else
			clear
			echo -e "\n<--- Instalando driver NVIDIA --->\n"
			sudo pacman -S --needed --noconfirm $nvidia
		fi; exit;;
	4)
		if pacman -Qi $vb &> /dev/null; then
			echo -e "\n<--- Controlador de VirtualBox Guest Utils ya estan instalado --->"
			echo -e "<--- Operacion Cancelada --->\n"
		else
			clear
			echo -e "\n<---	Instalando VirtualBox Guest Utils --->\n"
			sudo pacman -S --needed --noconfirm $vb
			sudo systemctl enable vboxservice
		fi; exit;;
	5)
		exit;;
	*)
		echo -e "\nDebes elegir un numero del menu de opciones... espere un segundo!"
		sleep 1
		clear;;
esac
done
