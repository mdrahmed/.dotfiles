# .dotfiles

## lsp config
Add server if needed from [here](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md)

### Nvim
This is the advanced neovim config using `lsp`, `packer.nvim` packer manager. This is configured using the `NvChad` distro.
Directory: `nvim`
[Note: configure lsp properly. It is not configured well]

### Requirements
```
nodejs
npm # version > 18
```
Install `npm` from source,
```
sudo apt upgrade && sudo apt update
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
source ~/.bashrc
nvm install node
node -v
npm -v
```

### Nvim-basic
This is the basic nvim, I used at the beginning. This neovim config is present in the `nvim` directory.
Followed these sites:
[chris](https://www.chiarulli.me/neovim/3)
[01-vim-plug](https://www.chiarulli.me/Neovim/01-vim-plug/)
Check out `lazyvim` and `lunarvim`.

[Note: Install the pluggins each time whenever opened with `:PlugInstall`]
[Note: 03-vim-themes](https://www.chiarulli.me/Neovim/03-vim-themes/)
