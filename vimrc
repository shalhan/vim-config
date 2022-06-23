set relativenumber
set tabstop=4
set shiftwidth=4
set autoindent
set mouse=a
set foldenable
set foldmethod=indent

se t_Co=16
let g:solarized_termcolors=256  
set background=dark  
colorscheme solarized


call plug#begin()
  Plug 'preservim/nerdtree'
  Plug 'ryanoasis/vim-devicons'
  Plug 'itchyny/lightline.vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'mg979/vim-visual-multi', {'branch': 'master'}
  Plug 'dense-analysis/ale'
  Plug 'tomtom/tcomment_vim'
  Plug 'liuchengxu/vista.vim'
call plug#end()

" this is to auto open nerdtree
" augroup nerdtree_open
"    autocmd!
"    autocmd VimEnter * NERDTree | wincmd p
" augroup END

map <F2> :NERDTree<CR>
map <F3> :NERDTreeToggle<CR>
map <leader>c <C-_><C-_>
" map <C-W><C-W> <F4>
map <C-W> <C-w>

" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
NeoBundle 'tiagofumo/vim-nerdtree-syntax-highlight'
call neobundle#end()


" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

set encoding=UTF-8
let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1
