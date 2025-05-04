#!/bin/bash

set -e  # Hata olursa script'i durdurur

echo "Sistem güncelleniyor..."
sudo pacman -Syu --noconfirm

echo "Masaüstü ortamı ve sürücüler kuruluyor..."
sudo pacman -S --noconfirm \
  xfce4 xfce4-goodies \
  lightdm lightdm-gtk-greeter \
  nvidia nvidia-settings nvidia-utils \
  opencl-nvidia primus_vk python-pycuda \
  libvdpau lib32-libvdpau lib32-nvidia-utils \
  lib32-opencl-nvidia lib32-primus_vk \
  libxnvctrl vulkan-icd-loader lib32-vulkan-icd-loader \
  python-glfw vkd3d lib32-vkd3d \
  mesa lib32-mesa \
  vulkan-intel lib32-vulkan-intel \
  xfwm4-themes papirus-icon-theme

echo "Kurulum tamamlandı."
