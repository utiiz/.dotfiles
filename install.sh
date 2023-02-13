#!/bin/bash
### Install Nix
# --no-daemon
sh <(curl -L https://nixos.org/nix/install) --no-daemon

### Then source it
. ~/.nix-profile/etc/profile.d/nix.sh

### Install packages
nix-env -iA \
	nixpkgs.git \
###	nixpkgs.neovim \
	nixpkgs.fish \
	nixpkgs.ripgrep \
	nixpkgs.stow \
	nixpkgs.tmux \
	nixpkgs.exa \
	nixpkgs.bat

git clone https://github.com/oh-my-fish/plugin-foreign-env.git ~/plugin-foreign-env

# add fish to valid login shells
command -v fish | sudo tee -a /etc/shells

# use fish as default shell
sudo chsh -s $(which fish) $USER

curl -fsSL https://starship.rs/install.sh >> starship.sh
chmod +x starship.sh
./starship.sh
rm starship.sh

# stow
stow git
stow fish
stow nvim
stow starship

sudo ln -s ~/.nix-profile/bin/nvim /usr/bin/nvim
sudo ln -s ~/.nix-profile/bin/fish /usr/bin/fish
sudo ln -s ~/.nix-profile/bin/git /usr/bin/git
sudo ln -s ~/.nix-profile/bin/bat /usr/bin/bat
sudo ln -s ~/.nix-profile/bin/exa /usr/bin/exa
sudo ln -s ~/.nix-profile/bin/tmux /usr/bin/tmux

touch ~/.hushlogin

# Packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash

curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
