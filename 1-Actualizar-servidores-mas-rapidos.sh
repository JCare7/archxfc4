#!/bin/bash

echo -e "\n<---	Instalando Reflector --->\n"

	sudo pacman -S --noconfirm --needed reflector

echo -e "\n<--- Buscando los 50 mejores servidores del mundo --->\n"

	sudo cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.old
	sudo reflector -l 100 -f 50 --sort rate --threads 5 --verbose --save /etc/pacman.d/mirrorlist

echo -e "\n<--- Guardando los servidos mas rapidos del mundo --->\n"

	cat /etc/pacman.d/mirrorlist | head -n 20
	sudo pacman -Sy

echo -e "\n<---	Listado de servidores actualizados --->\n"
