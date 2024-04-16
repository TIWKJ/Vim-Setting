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
Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Auto Completion
Plug 'davidhalter/jedi-vim'
Plug 'tpope/vim-surround' "ysw
Plug 'majutsushi/tagbar'
Plug 'ryanoasis/vim-devicons'
Plug 'morhetz/gruvbox'

call plug#end()

	"vim split =>  :vs or :sp
nmap <F8> :TagbarToggle<CR>

	"nerdtree setting
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

	"airline setting
let g:airline_powerline_fonts = 1
nnoremap <C-Down> :tabprevious<CR>
nnoremap <C-Up> :tabnext<CR>
	":bd => unload buffer / :bw
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif	
	" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

	"gruvbox
colorscheme gruvbox
autocmd VimEnter * hi Normal ctermbg=none
"transparent ^

"---------------------------------------------------------------
	"Auto close
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O	
 
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>" 
