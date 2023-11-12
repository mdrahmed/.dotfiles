" v for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" List directories by toggling with NERTTREEToggle
nnoremap <c-t> :NERDTreeToggle<CR>
inoremap <c-t> <Esc> :NERDTreeToggle<CR>

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>
" Use control-c instead of escape
nnoremap <C-c> <Esc>

" Easy CAPS - no need
" inoremap <c-u> <ESC>viwUi
" nnoremap <c-u> viwU<Esc><Paste>

" Easy select a word 
inoremap <c-w> <Esc>viw
nnoremap <c-w> viw

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>
" List total buffers
nnoremap <c-b> :buffers<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" <tab>: completion.
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Leader key is "\" by default
" nnoremap <Leader>o o<Esc>^Da
" nnoremap <Leader>O O<Esc>^Da

