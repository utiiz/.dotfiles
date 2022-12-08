set fish_greeting
set fish_function_path $fish_function_path ~/plugin-foreign-env/functions

# Alias
alias ll '/usr/bin/exa --long --header --git --all'
alias nix-env '~/.nix-profile/bin/nix-env'
alias stow '/usr/bin/stow'
alias nvim '/usr/bin/nvim'
alias nvm '/mnt/c/Users/A98011591/AppData/Roaming/nvm/nvm.exe'
alias z '~/.nix-profile/bin/z'
alias v 'nvim'
alias vim 'nvim'
alias py 'python3'
alias neo 'neofetch'
alias dot 'nvim ~/.dotfiles/'
alias conf 'nvim ~/.config/'
alias lab 'cd /mnt/d/Appli/prj/WebApplications/WebUserInterface/'
alias dev 'cd ~/lab/'
alias zmk 'v /mnt/c/Users/Tanguy/Lab/zmk'
alias etc 'nvim ~/.dotfiles/tmux/.tmux.conf'
alias efc 'nvim ~/.dotfiles/fish/.config/fish/config.fish'
alias sfc 'source ~/.config/fish/config.fish'

# Docker Alias
alias dls 'docker container ls'
alias dlsa 'docker container ls -a'
alias dstopall 'docker container stop (docker container ls -aq)'
alias drmall 'docker container rm (docker container ls -aq)'
alias daemonshell 'docker run -it --privileged --pid=host debian nsenter -t 1 -m -u -n -i sh'
function dshell
    docker container exec -ti $argv[1] bash || docker container exec -ti $argv[1] sh
end

set -x GOPATH ~/go
set -x GO111MODULE on

starship init fish | source

# nvm use v17.6.0 > /dev/null
# nvm use default > /dev/null

# test -s /home/utiiz/.nvm-fish/nvm.fish; and source /home/utiiz/.nvm-fish/nvm.fish
