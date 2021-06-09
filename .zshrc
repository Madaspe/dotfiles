
export PATH="$HOME/.local/bin:$HOME/.cargo/bin:$PATH"
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="ar-round"

plugins=(zsh-autosuggestions zsh-completions zsh-syntax-highlighting bgnotify)

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'
setopt INC_APPEND_HISTORY
source $ZSH/oh-my-zsh.sh

PRIV="doas"

alias c="clear"
alias q="exit"
alias emergeins="$PRIV emerge -av"
alias emergeinmask="$PRIV emerge -av --autounmask=y --autounmask-write"
alias emergepv="$PRIV emerge -pv"
alias emergeupd="$PRIV emaint -a sync"
alias emergeupg="$PRIV emerge -av --update --deep --changed-use @world"
alias emergedepc="$PRIV emerge --depclean -av"
alias emergenuse="$PRIV emerge -av --update --newuse --deep @world"
alias emergecuse="$PRIV emerge -av --update --changed-use --deep @world"
alias ecleandist="$PRIV eclean-dist --deep"
alias ecleanpkg="$PRIV eclean-pkg --deep"
alias ecleankern="$PRIV eclean-kernel -n 3"
alias rc-service="$PRIV rc-service"
alias rc-update="$PRIV rc-update"
alias pingoogle="ping 8.8.8.8"
alias nanosu="$PRIV nano"
alias nvimsu="$PRIV nvim"
alias ls="exa --icons --group-directories-first"
alias la="exa -lgha --icons --group-directories-first"

alias sudo="$PRIV"
alias vim="nvim"
alias cat="bat"

export GPG_TTY=$(tty)
export BAT_THEME="base16"
