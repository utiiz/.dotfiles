set fish_greeting
set fish_function_path $fish_function_path ~/plugin-foreign-env/functions

# aliases
alias ll '~/.nix-profile/bin/exa --long --header --git --all'
alias nix-env '~/.nix-profile/bin/nix-env'
alias stow '~/.nix-profile/bin/stow'
alias nvim '~/.nix-profile/bin/nvim'
alias z '~/.nix-profile/bin/z'
alias v 'nvim'
alias vim 'nvim'
alias py 'python3'
alias neo 'neofetch'
alias dot 'nvim ~/.dotfiles/'
alias conf 'nvim ~/.config/'
alias lab 'cd ~/lab/'
alias zmk 'v /mnt/c/Users/Tanguy/Lab/zmk'
alias etc 'nvim ~/.dotfiles/tmux/.tmux.conf'

# Fish syntax highlighting
# set -g fish_color_autosuggestion '555'  'brblack'
# set -g fish_color_cancel -r
# set -g fish_color_command --bold
# set -g fish_color_comment red
# set -g fish_color_cwd green
# set -g fish_color_cwd_root red
# set -g fish_color_end brmagenta
# set -g fish_color_error brred
# set -g fish_color_escape 'bryellow'  '--bold'
# set -g fish_color_history_current --bold
# set -g fish_color_host normal
# set -g fish_color_match --background=brblue
# set -g fish_color_normal normal
# set -g fish_color_operator bryellow
# set -g fish_color_param cyan
# set -g fish_color_quote yellow
# set -g fish_color_redirection brblue
# set -g fish_color_search_match 'bryellow'  '--background=brblack'
# set -g fish_color_selection 'white'  '--bold'  '--background=brblack'
# set -g fish_color_user brgreen
# set -g fish_color_valid_path --underline

set -x GOPATH ~/go
set -x GO111MODULE on

starship init fish | source

# nvm use v17.6.0 > /dev/null
nvm use default > /dev/null

# test -s /home/utiiz/.nvm-fish/nvm.fish; and source /home/utiiz/.nvm-fish/nvm.fish
