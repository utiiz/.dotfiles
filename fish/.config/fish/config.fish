set fish_greeting
set fish_function_path $fish_function_path ~/plugin-foreign-env/functions

fenv source ~/.nix-profile/etc/profile.d/nix.sh

# aliases
alias ll 'ls -lart'
alias v '/usr/bin/nvim'
alias vim '/usr/bin/nvim'
alias py 'python3'
alias neo 'neofetch'
alias dot 'v ~/.dotfiles/'
alias conf 'v ~/.config/'
alias lab 'cd /mnt/c/Users/Tanguy/Lab'
alias zmk 'v /mnt/c/Users/Tanguy/Lab/zmk'

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
nvm use --silent default
