#!/bin/bash

# Aplicaciones basicas
sudo pacman -Sy --needed --noconfirm archey3 baobab bleachbit catfish clementine conky curl
sudo pacman -Sy --needed --noconfirm darktable dconf-editor
sudo pacman -Sy --needed --noconfirm dmidecode
sudo pacman -Sy --needed --noconfirm evince evolution filezilla firefox
sudo pacman -Sy --needed --noconfirm galculator geary gimp git gksu glances gnome-disk-utility
sudo pacman -Sy --needed --noconfirm gnome-font-viewer gnome-screenshot gnome-system-monitor gnome-terminal gnome-tweak-tool
sudo pacman -Sy --needed --noconfirm gparted gpick grsync
sudo pacman -Sy --needed --noconfirm hardinfo hddtemp hexchat htop
sudo pacman -Sy --needed --noconfirm inkscape inxi lm_sensors lsb-release meld mlocate mpv
sudo pacman -Sy --needed --noconfirm nemo net-tools notify-osd numlockx openshot pinta plank polkit-gnome
sudo pacman -Sy --needed --noconfirm redshift ristretto sane screenfetch scrot shotwell
sudo pacman -Sy --needed --noconfirm simple-scan simplescreenrecorder smplayer sysstat
sudo pacman -Sy --needed --noconfirm terminator thunar transmission-cli transmission-gtk tumbler
sudo pacman -Sy --needed --noconfirm variety vlc vnstat wget unclutter
sudo pacman -Sy --needed --noconfirm dosfstools jfsutils f2fs-tools btrfs-progs exfat-utils ntfs-3g reiserfsprogs udftools xfsprogs nilfs-utils polkit gpart mtools
sudo pacman -Sy --needed --noconfirm bluez bluez-{libs,utils,firmware} blueberry
sudo pacman -Sy --needed --noconfirm networkmanager network-manager-applet
sudo pacman -Sy --needed --noconfirm pacman -Sy --needed --noconfirm pulseaudio pulseaudio-{alsa,bluetooth} pavucontrol alsa-{utils,plugins,lib,firmware} gst-plugins-{base,bad,good,ugly} gstreamer

sudo systemctl enable NetworkManager
sudo systemctl enable bluetooth
sudo systemctl enable vnstat

# Instalar comprimidor y descomprimidor
sudo pacman -Sy --noconfirm --needed unace unrar zip unzip sharutils  uudeview  arj cabextract file-roller p7zip

echo -e "\n<--- Aplicaciones Basicas instalado --->"
echo -e "\n<--- Favor de reiniciar su computador con el comando 'sudo reboot' --->"