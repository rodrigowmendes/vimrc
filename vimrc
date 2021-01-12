"Plugins
call plug#begin('~/.vim/plugged')
Plug 'vim-python/python-syntax'
Plug 'ekalinin/dockerfile.vim'
call plug#end()

"Preferências
set number
set clipboard=unnamedplus
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_winsize = 20
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END