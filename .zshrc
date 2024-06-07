export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="daivasmara"
#daivasmara

unsetopt beep

plugins=(
    git
    vi-mode
    zsh-autosuggestions
    zsh-syntax-highlighting
    # auto-notify
    web-search
)

source $ZSH/oh-my-zsh.sh

bindkey '^[[Z' autosuggest-accept  # shift + tab  | autosuggest

# aliases
alias cls="clear"

# setting zoxide instead of cd (change directory)
alias "cd"="z"


# tmux aliases
alias "ta"="tmux a -t"
alias "td"="tmux detach"
alias "t"="tmux"


# Shows the size of the file dir
alias "s"="du -sh *"


# aliases for editing and sourcing tmux and zsh and todo list
alias envim="cd ~/.config/nvim/lua/core && nvim"
alias ezsh="cd && nvim .zshrc"
alias srctmux="tmux source ~/.config/tmux/tmux.conf"
alias srczsh="source ~/.zshrc"
alias todo="cat ~/.todo"
alias etodo="nvim ~/.todo"


# alias ehypr="cd ~/.config/hypr && nvim hyprland.conf"
alias cm="cmake ../ && make"
# alias bdc="mkdir project && cd project && mkdir build && mkdir src && cd src && cp ~/Documents/tools/main.cpp ./ && cd .. && touch CMakeLists.txt && mkdir lib && cd lib && mkdir include && cd .."


# Some npm aliases for react etc to easliy turn on projects
alias nd="npm run dev"
alias nu="npm run ui"
# alias brow="browser-sync start --server --files \"*.css\" \"*.html\" \"css/*.css\" \"public/*.html\" --no-open --no-ui"
alias g++="g++ -std=c++17"


alias pgadmin="/usr/pgadmin4/bin/pgadmin4"



eval "$(zoxide init zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
