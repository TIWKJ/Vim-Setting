set encoding=utf-8
set number
set relativenumber
set autoindent
set tabstop=2
set shiftwidth=2
set smarttab
set softtabstop=2
set mouse=a
set background=dark
colorscheme gruvbox
autocmd VimEnter * hi Normal ctermbg=none
"transparent ^
"clrt+p" for autocomplete

set laststatus=2

syntax on

set cursorline
:highlight Cursorline cterm=bold ctermbg=black

set showmatch "{} [] ()"

" Finding files
set path+=**
set wildmenu

"find * .something (tap to change file)
"b type 1-2 char and tap to autocomplete file that use to type
"----------------------------------------------------------------------
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'davidhalter/jedi-vim'
Plug 'tpope/vim-surround'

call plug#end()

"vim split =>  :vsp or :sp

"nerdtree setting
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'


"airline setting
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
nnoremap <C-Down> :bprevious<CR>
nnoremap <C-Up> :bnext<CR>
	":bd => unload buffer


