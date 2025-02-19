#!/bin/bash

# Verifica se o script está rodando como root
if [[ $EUID -ne 0 ]]; then
    echo "❌ Este script precisa ser executado como root!"
    echo "Use: sudo ./install.sh"
    exit 1
fi

echo "🚀 Atualizando o sistema..."
pacman -Syu --noconfirm

echo "📂 Restaurando configurações do usuário..."

USER_HOME=$(eval echo ~$SUDO_USER)

if [ -z "$USER_HOME" ]; then
    USER_HOME="$HOME"
fi

if sudo cp -arf "$USER_HOME/dotfiles/.config/." "$USER_HOME/.config/"; then
echo "✅ Configurações restauradas com sucesso"
else
echo "❌ Erro ao restaurar as configurações!">&2
exit 1
fi

echo "🛠️ Ajustando permissões..."
sudo chmod -R 755 ~/.config

echo "✅ Instalação concluída! Reinicie a sessão para aplicar as configurações."
exit
