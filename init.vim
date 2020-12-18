
set nocompatible
set encoding=utf-8

" python host for nvim
let g:python3_host_prog = $HOME.'\AppData\Local\Programs\Python\Python38-32\python.exe'
let g:loaded_python_provider = 0

call plug#begin(stdpath('data') . '\plugged')

Plug 'joshdick/onedark.vim'

Plug 'sheerun/vim-polyglot'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'

Plug 'SirVer/ultisnips'

if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'tpope/vim-fugitive'

Plug 'lervag/vimtex'
Plug 'KeitaNakamura/tex-conceal.vim'


Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/indentpython.vim'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
Plug 'bitc/vim-bad-whitespace'

call plug#end()

" NERDTree configuration

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
" map ctrl+n to toggle NERDTree
nnoremap <C-n> :NERDTreeToggle<return> 


" UltiSnips configuration

let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger='<tab>'
let g:UltiSnipsJumpBackwardTrigger='<s-tab>'
let g:UltiSnipsEditSplit='tabdo'
let g:UltiSnipsSnippetDirectories=[$HOME.'\.vim\UltiSnips']


" deoplete configuration
let g:deoplete#enable_at_startup = 1

" clipboard support
set clipboard+=unnamedplus

" set rtp+=~/projectname " for project dependent UltiSnips

" relative numbering on the left
set relativenumber

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1

" where should splits happen
set splitbelow
set splitright

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" folding
set foldmethod=indent
set foldlevel=99
" enable folding with spacebar
nnoremap <space> za

" for seeing docstring in folded code
let g:SimpylFold_docstring_preview=1

" concealing
set conceallevel=1
let g:tex_conceal='abdmg'
hi Conceal ctermbg=none

" spelling mistakes
setlocal spell
set spelllang=en_us
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" tex configuration
let g:tex_flavor='latex'
let g:vimtex_view_general_viewer = 'okular'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
let g:vimtex_view_general_options_latexmk = '--unique'
let g:vimtex_quickfix_mode=0
let g:onedark_hide_endofbuffer=1

let g:airline_theme = 'tomorrow'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

syntax on
colorscheme onedark

