source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Add scripts to path
export PATH="$HOME/.local/scripts/:$PATH"

# Add starship
eval "$(starship init zsh)"

alias py="python3"
alias g="git"
alias vim="nvim"
alias gs="git switch"
alias gsd="git switch dev"
alias gse="git switch eraser-$1"
alias ll="exa -a -l --icons --octal-permissions --header --group-directories-first --color=always --sort=type"
alias xclip="clip.exe"

# Add key bindings
# bindkey -s ^f "tmux-sessionizer\n"
export DISPLAY=$(grep nameserver /etc/resolv.conf | awk '{print $2}'):0.0
export LIBGL_ALWAYS_INDIRECT=1
. "$HOME/.cargo/env"
export PATH=${HOME}/edirect:${PATH}
export PATH=${HOME}/.local/bin:${PATH}
export PATH=/usr/local/go/bin:${PATH}
export PATH=/home/tuteaz/go/bin:${PATH}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bun completions
[ -s "/home/tuteaz/.bun/_bun" ] && source "/home/tuteaz/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export FZF_DEFAULT_OPTS='
	--color=fg:#908caa,bg:#191724,hl:#ebbcba
	--color=fg+:#e0def4,bg+:#26233a,hl+:#ebbcba
	--color=info:#9ccfd8,prompt:#908caa,pointer:#c4a7e7
	--color=marker:#eb6f92,spinner:#f6c177,header:#31748F'
