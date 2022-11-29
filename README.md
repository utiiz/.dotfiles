# .dotfiles

<details>
    <summary>Vim/TMUX Cheat Sheet</summary>
### Vim Cheat Sheet
</details>

# Install NVM on fish
```
fisher add edc/bass
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
```

Add fish function to ~/.config/fish/functions/nvm.fish to load nvm:
```
function nvm
    bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end
```

# Install TMUX plugins 
```git clone https://github.com/tmux-plugins/tpm ~/.dotfiles/tmux/.config/plugins/tpm```
