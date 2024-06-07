#!/bin/bash

# getting the os
var=$(grep ID_LIKE /etc/os-release)
packages="git neovim zip unzip zoxide clangd gcc gh zsh lua5.4 man nodejs python3 tmux"

if [[ "$var" == *"ID_LIKE=debian"* ]]; then
  # if debian based then update it
  sudo apt-get update
  sudo apt-get install -y $packages
else 
  # then it is arch so update that
  sudo pacman -Syu --noconfirm $packages
fi

# install nodejs / language support
sudo npm install -g npm@latest
sudo npm install -g vscode-langservers-extracted typescript typescript-language-server @tailwindcss/language-server

# config files for nvim and zsh
git clone https://github.com/walruii/nvim-arch.git ~/.config/nvim
git clone https://github.com/walruii/dotfiles.git ~/.config/dotfiles
mv ~/.config/dotfiles/.zshrc ~/

# installing oh my zsh and setting up config
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp ~/.config/dotfiles/daivasmara.zsh-theme ~/.oh-my-zsh/custom/themes/
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"

# installing tpm (tmux plugin manager)
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cp ~/.config/dotfiles/tmux ~/.config/
source ~/.zshrc
tmux source ~/.config/tmux/tmux.conf
mv ~/.config/tmux/dark_plus_default.conf ~/.config/tmux/plugins/tmux-dark-plus-theme
