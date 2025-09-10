#!/bin/bash

# ---------------------------
# Instalação e configuração automática
# ---------------------------

if [[ $EUID -ne 0 ]]; then
  echo "❌ Este script precisa ser executado como root!"
  echo "Use: sudo ./install.sh"
  exit 1
fi

echo "🚀 Atualizando pacotes oficiais..."
pacman -Syu --needed --noconfirm \
    hyprland kitty alacritty \
    rofi-wayland dunst neovim git fish \
    polkit-kde-agent brightnessctl pamixer grim slurp \
    wl-clipboard fastfetch \
    firefox ttf-jetbrains-mono \
    xdg-desktop-portal xdg-desktop-portal-hyprland \
    nautilus dolphin kwrite unrar p7zip sddm foot \
    cliphist playerctl tesseract \
    swappy gnome-control-center thunar \
    gnome-text-editor gnome-system-monitor \
    easyeffects pavucontrol starship  qt6-virtualkeyboard || {
  echo "❌ Erro ao instalar pacotes oficiais!"
}

# ---------------------------
# Instalação de pacotes do AUR
# ---------------------------
AUR_PKGS=(
    ags-hyprpanel-git hyprcursor hyprgraphics hyprland-qtutils
    hyprland-qt-support hyprlang hyprutils brave-bin
    waypaper-git ttf-material-symbols-variable-git swww nwg-look
    wlogout hyprlock hyprpaper pokemon-colorscripts-git
)

# Descobre usuário original
USER_HOME=$(eval echo ~$SUDO_USER)
USER_NAME=$SUDO_USER
if [ -z "$USER_NAME" ]; then
  USER_HOME="$HOME"
  USER_NAME="$USER"
fi

echo "📦 Instalando pacotes AUR com yay para $USER_NAME..."
if command -v yay >/dev/null 2>&1; then
  sudo -u "$USER_NAME" yay -S --needed --noconfirm "${AUR_PKGS[@]}" || {
    echo "⚠️ Alguns pacotes AUR falharam. Veja o log."
  }
else
  echo "⚠️ yay não está instalado. Instale manualmente para usar pacotes AUR."
fi

# ---------------------------
# Restauração de configurações
# ---------------------------
echo "📂 Restaurando configurações do usuário..."
echo "👤 Restaurando arquivos para $USER_NAME em $USER_HOME"

DOTFILES_DIR="$USER_HOME/dotfiles"
CONFIG_DIR="$USER_HOME/.config"
SDDM_DIR="/usr/share"

# Restaura .config
if [ -d "$DOTFILES_DIR/.config" ]; then
  cp -arf "$DOTFILES_DIR/.config/." "$CONFIG_DIR/" \
    && echo "✅ Configurações .config restauradas com sucesso!" \
    || echo "❌ Erro ao restaurar .config!"
else
  echo "⚠️ Diretório $DOTFILES_DIR/.config não encontrado. Pulando..."
fi

# Restaura SDDM
if [ -d "$DOTFILES_DIR/sddm" ]; then
  cp -arf "$DOTFILES_DIR/sddm" "$SDDM_DIR/" \
    && echo "✅ Configurações do SDDM restauradas!" \
    || echo "❌ Erro ao restaurar SDDM!"
else
  echo "⚠️ Diretório $DOTFILES_DIR/sddm não encontrado. Pulando..."
fi

# Restaura sddm.conf
if [ -f "$DOTFILES_DIR/sddm.conf" ]; then
  cp -arf "$DOTFILES_DIR/sddm.conf" /etc \
    && echo "✅ Tema padrão do SDDM definido!" \
    || echo "❌ Erro ao aplicar tema no SDDM!"
else
  echo "⚠️ Arquivo $DOTFILES_DIR/sddm.conf não encontrado. Pulando..."
fi

echo "🎉 Instalação concluída!"

