#!/bin/bash

mv ~/dotfiles/.zshrc ~/
mv ~/dotfiles/daivasmara.zsh-theme ~/.oh-my-zsh/custom/themes/
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"

# installing tpm (tmux plugin manager)
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
mv ~/dotfiles/tmux ~/.config/
source ~/.zshrc
tmux source ~/.config/tmux/tmux.conf
mv ~/.config/tmux/dark_plus_default.conf ~/.config/tmux/plugins/tmux-dark-plus-theme