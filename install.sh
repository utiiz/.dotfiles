### Install Nix
# --no-daemon
sh <(curl -L https://nixos.org/nix/install)

### Then source it
. ~/.nix-profile/etc/profile.d/nix.sh

### Install packages
nix-env -iA \
	nixpkgs.git \
	nixpkgs.neovim \
	nixpkgs.fish \
	nixpkgs.ripgrep \
	nixpkgs.stow \
	nixpkgs.tmux \
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

touch ~/.hushlogin

# NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash

curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
