alias pdb='python -m pdb'
export PATH=/usr/local/bin:$PATH
#Initialize pyenv for python environments
eval "$(pyenv init -)"
#Allow better history between tmux panes/windows
setopt share_history
setopt hist_ignore_dups
setopt hist_ignore_space
#Add in color for ls to see directories easier
alias ls='ls -G'
export CLICOLOR=1
#Enable forward searching in macos, as it interferes with XON/XOFF
stty -ixon
#modify the zsh shell prompt
PS1="%n@%m %1~%F{cyan}%#%f "
#zsh autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# zsh auto highlighting
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#zsh vim
#disable print in terminal
defaults write com.apple.terminal NSUserKeyEquivalents -dict-add "Print..." nil
#Used so that we use ninja by default
export EDITOR='vi'
bindkey -v
bindkey -M viins '^K' kill-line
bindkey -M viins '^U' backward-kill-line
bindkey -M viins '^W' backward-kill-word
bindkey -M viins '^L' clear-screen
bindkey -M viins '^A' beginning-of-line
bindkey -M viins '^E' end-of-line
bindkey -M viins '^R' history-incremental-search-backward
bindkey -M viins '^S' history-incremental-search-forward
bindkey -M viins '^_.' insert-last-word
bindkey -M viins '^[.' insert-last-word
zle -N zle-exit-shell exit
bindkey -M viins '^D' zle-exit-shell
bindkey -M vicmd '^D' zle-exit-shell
autoload -Uz edit-command-line
bindkey -M viins '^P' up-line-or-history
bindkey -M viins '^N' down-line-or-history
autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd '^X^E' edit-command-line
bindkey -M viins '^X^E' edit-command-line
bindkey -M viins '^[f' forward-word
bindkey -M vicmd '^[f' forward-word
bindkey -M viins '^[b' backward-word
bindkey -M vicmd '^[b' backward-word
bindkey -M viins '^[d' kill-word
bindkey -M vicmd '^[d' kill-word
bindkey -M viins '^F' forward-char
bindkey -M vicmd '^F' forward-char
bindkey -M viins '^B' backward-char
bindkey -M vicmd '^B' backward-char


