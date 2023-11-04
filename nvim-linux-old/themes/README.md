# Themes
Check out this repo for awesome vim themes
[awesome-vim-colorschemes](https://github.com/rafi/awesome-vim-colorschemes)

## Install a theme
Suppose, I want to install `nord` which will be found in that repository. So, click `nord` and do following,
1. Goto `vim-plug/plugins.vim` and add this line,
```
" Nord theme
Plug 'nordtheme/vim'
```
This `plugin/runtimepath` should be found in the repo. For nord, [its here](https://github.com/nordtheme/vim#quick-start)
2.<only applicable if mentioned in the repo> Goto `themes/` and add a new `<themeName.vim>` and copy the `.vim` from the repo. 
3. Open `init.vim` and add sourcing to that theme. For `nord`, it following,
```
source $HOME/.config/nvim/themes/nord.vim
```

