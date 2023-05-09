source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Add scripts to path
export PATH="$HOME/.local/scripts/:$PATH"

# Add starship
eval "$(starship init zsh)"

# Add key bindings
bindkey -s ^f "tmux-sessionizer\n"
