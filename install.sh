# Verifica se o script está rodando como root
if [[ $EUID -ne 0 ]]; then
  echo "❌ Este script precisa ser executado como root!"
  echo "Use: sudo ./install.sh"
  exit 1
fi

echo "🚀 Atualizando o sistema..."
yay -S --needed --noconfirm \
          hyprland ags-hyprpanel-git kitty alacritty \
          rofi-wayland dunst neovim git fish \
          polkit-kde-agent brightnessctl pamixer grim slurp \
          wl-clipboard fastfetch \
          firefox ttf-jetbrains-mono ttf-nerd-fonts-symbols-mono \
          hyprcursor hyprgraphics hyprland-qtutils \
          hyprland-qt-support hyprlang hyprutils brave-bin \
          xdg-desktop-portal xdg-desktop-portal-hyprland hyprpaper waypaper-git \
          ttf-material-symbols-variable-git swww nwg-look wlogout hyprlock hyprpaper \
          nautilus dolphin kwrite unrar 7zip sddm foot \
          cliphist playerctl tesseract \
          swappy hyprpicker gnome-control-center thunar \
          gnome-text-editor  gnome-system-monitor \
          easyeffects pavucontrol pokemon-colorscripts-git starship redhat-fonts qt6-virtualkeyboard || {
  echo "❌ Erro ao instalar as dependencias do sistema!" >&2
  exit 1
}

echo "📂 Restaurando configurações do usuário..."

# Define a home do usuário correto
USER_HOME=$(eval echo ~$SUDO_USER)
USER_NAME=$SUDO_USER

# Se $SUDO_USER estiver vazio, assume o usuário atual
if [ -z "$USER_HOME" ]; then
  USER_HOME="$HOME"
  USER_NAME="$USER"
fi

echo "👤 Restaurando arquivos para $USER_NAME em $USER_HOME"

# Diretórios de backup
DOTFILES_DIR="$USER_HOME/dotfiles"
CONFIG_DIR="$USER_HOME/.config"
SDDM_DIR="/usr/share"

# Verifica se os diretórios existem antes de copiar
if [ -d "$DOTFILES_DIR/.config" ]; then
  cp -arf "$DOTFILES_DIR/.config/." "$CONFIG_DIR/" && echo "✅ Configurações .config restauradas com sucesso!" || {
    echo "❌ Erro ao restaurar .config!" >&2
    exit 1
  }
else
  echo "⚠️ Diretório $DOTFILES_DIR/.config não encontrado. Pulando..."
fi
if [ -d "$DOTFILES_DIR/sddm" ]; then
  cp -arf "$DOTFILES_DIR/sddm" "$SDDM_DIR/" && echo "✅ Configurações do Sddm restauradas!" || { 
    echo "❌ Erro ao restaurar .Sddm!" >&2
    exit 1
  }
else
  echo "⚠️ Diretório $DOTFILES_DIR/sddm não encontrado. Pulando..."
fi
cp -arf "$DOTFILES_DIR/sddm.conf" /etc #Colando meu tema como padrao no SDDM

    echo "✅ Instalação concluída! Reinicie a sessão para aplicar as configurações."
