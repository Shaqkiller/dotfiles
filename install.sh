#!/bin/bash

# Verifica se o script está rodando como root
if [[ $EUID -ne 0 ]]; then
  echo "❌ Este script precisa ser executado como root!"
  echo "Use: sudo ./install.sh"
  exit 1
fi

echo "🚀 Atualizando o sistema..."
pacman -Syu --noconfirm || {
  echo "❌ Erro ao atualizar o sistema!" >&2
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
MOZILLA_DIR="$USER_HOME/.mozilla"

# Verifica se os diretórios existem antes de copiar
if [ -d "$DOTFILES_DIR/.config" ]; then
  cp -arf "$DOTFILES_DIR/.config/." "$CONFIG_DIR/" && echo "✅ Configurações .config restauradas com sucesso!" || {
    echo "❌ Erro ao restaurar .config!" >&2
    exit 1
  }
else
  echo "⚠️ Diretório $DOTFILES_DIR/.config não encontrado. Pulando..."
fi

if [ -d "$DOTFILES_DIR/.mozilla" ]; then
  cp -arf "$DOTFILES_DIR/.mozilla/." "$MOZILLA_DIR/" && echo "✅ Configurações do Mozilla restauradas!" || {
    echo "❌ Erro ao restaurar .mozilla!" >&2
    exit 1
  }
else
  echo "⚠️ Diretório $DOTFILES_DIR/.mozilla não encontrado. Pulando..."
fi

echo "🛠️ Ajustando permissões..."
chown -R "$USER_NAME:$USER_NAME" "$CONFIG_DIR" "$MOZILLA_DIR"
chmod -R 700 "$CONFIG_DIR"

echo "✅ Instalação concluída! Reinicie a sessão para aplicar as configurações."
