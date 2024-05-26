export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="daivasmara"
#daivasmara

unsetopt beep

plugins=(
    git
    vi-mode
    zsh-autosuggestions
    zsh-syntax-highlighting
    auto-notify
    web-search
)

source $ZSH/oh-my-zsh.sh

bindkey '^[[Z' autosuggest-accept  # shift + tab  | autosuggest

# aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# alias vi="nvim"
# alias vim="nvim"
alias cls="clear"
alias "cd"="z"
alias "ta"="tmux a -t"
alias "td"="tmux detach"
alias "t"="tmux"
alias "s"="du -sh *"
alias envim="cd ~/.config/nvim/lua/core && nvim"
alias ezsh="cd && nvim .zshrc"
# alias ehypr="cd ~/.config/hypr && nvim hyprland.conf"
alias srctmux="tmux source ~/.config/tmux/tmux.conf"
alias srczsh="source ~/.zshrc"
alias cm="cmake ../ && make"
alias bdc="mkdir project && cd project && mkdir build && mkdir src && cd src && cp ~/Documents/tools/main.cpp ./ && cd .. && touch CMakeLists.txt && mkdir lib && cd lib && mkdir include && cd .."
alias nd="npm run dev"
alias nu="npm run ui"
alias brow="browser-sync start --server --files \"*.css\" \"*.html\" \"css/*.css\" \"public/*.html\" --no-open --no-ui"
alias g++="g++ -std=c++17"

eval "$(zoxide init zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
