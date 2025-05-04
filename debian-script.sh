#!/bin/bash

set -e  # Hata olursa script'i durdurur

echo "Sistem güncelleniyor..."
sudo apt update
sudo apt upgrade -y
sudo apt full-upgrade -y
sudo apt autoremove -y

echo "Masaüstü ortamı ve sürücüler kuruluyor..."
sudo apt install -y \
  xfce4 xfce4-goodies \
  lightdm lightdm-gtk-greeter \
  linux-headers-amd64 \
  nvidia-driver firmware-misc-nonfree \
  nvidia-cuda-dev nvidia-cuda-toolkit libnvoptix1 \
  xfwm4-themes papirus-icon-theme

echo "Kurulum tamamlandı."
