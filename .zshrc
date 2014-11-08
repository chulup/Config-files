# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000000
SAVEHIST=1000000
HISTFILE=~/.zsh_history

# Set up the prompt
# Use modern completion system
autoload -Uz compinit promptinit
compinit
promptinit
prompt adam1

alias ls="ls --color=auto"
alias grep="grep -n --color"
alias pr='false'

function swap()
{
    local TMPFILE=$(dirname $1)/tmp.$$
    mv "$1" $TMPFILE && \
    mv "$2" "$1" && \
    mv $TMPFILE "$2"
}

# ===========================

export EDITOR="vim"
setopt NO_BEEP

setopt inc_append_history
setopt histignorealldups sharehistory

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

autoload zkbd
#source ~/.zkbd/xterm-256color-:0.0
[[ -n ${key[Backspace]} ]] && bindkey "${key[Backspace]}" backward-delete-char
[[ -n ${key[Insert]} ]] && bindkey "${key[Insert]}" overwrite-mode
[[ -n ${key[Home]} ]] && bindkey "${key[Home]}" beginning-of-line
[[ -n ${key[PageUp]} ]] && bindkey "${key[PageUp]}" up-line-or-history
[[ -n ${key[Delete]} ]] && bindkey "${key[Delete]}" delete-char
[[ -n ${key[End]} ]] && bindkey "${key[End]}" end-of-line
[[ -n ${key[PageDown]} ]] && bindkey "${key[PageDown]}" down-line-or-history
[[ -n ${key[Up]} ]] && bindkey "${key[Up]}" up-line-or-search
[[ -n ${key[Left]} ]] && bindkey "${key[Left]}" backward-char
[[ -n ${key[Down]} ]] && bindkey "${key[Down]}" down-line-or-search
[[ -n ${key[Right]} ]] && bindkey "${key[Right]}" forward-char
bindkey ';5D' emacs-backward-word
bindkey ';5C' emacs-forward-word
