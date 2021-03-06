"Instalação do Vim-Plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"Plugins
call plug#begin('~/.vim/plugged')
Plug 'vim-python/python-syntax'
Plug 'ekalinin/dockerfile.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'davidhalter/jedi-vim'
Plug 'preservim/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'
call plug#end()

set encoding=utf8
set number
set clipboard=unnamedplus
"Preferências

"netrw
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_winsize = 20

"Mapeamentos do explorador de arquivos
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"Configurações do explorador de arquivos
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" Fecha o VIM se o explorador for a única janela restante
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
