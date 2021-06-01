#!/bin/bash

echo -e "\n<--- INSTALANDO GESTOR DE IMPRESORA --->\n"

sudo pacman -Sy --needed --noconfirm cups cups-pdf ghostscript gsfonts libcups hplip system-config-printer

sudo systemctl enable cups

echo -e "\n<--- Instalado correctamente	--->\n"
