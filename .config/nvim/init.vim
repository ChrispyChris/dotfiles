""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                        "
" Better Safe than Sorry "
"                        "
""""""""""""""""""""""""""

set nocompatible

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"               "
" User Settings "
"               "
"""""""""""""""""

" Leader key setup
nnoremap <Space> <Nop>
let mapleader=" "
nnoremap <leader>n :NERDTree<CR>

set colorcolumn=81
set hidden
set history=50
set incsearch
set nobackup
set noerrorbells
set noswapfile
set nowrap
set nowritebackup
set number
set relativenumber
set scrolloff=8
set showcmd
set visualbell

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"               "
"  Status Bar   "
"               "
"""""""""""""""""

set laststatus=2

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"              "
" CoC Settings "
"              "
""""""""""""""""

set cmdheight=2
set shortmess+=c
set updatetime=300
set signcolumn=number
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion
inoremap <silent><expr> <c-space> coc#refresh()

" Make <CR> auto-select the first completion item
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Add NeoVim's native statusline support
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
set statusline+=%F

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                      "
" Tab Spacing Settings "
"                      "
""""""""""""""""""""""""

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                         "
" Tab Spacing Settings for HTML/CSS Files "
"                                         "
"""""""""""""""""""""""""""""""""""""""""""

autocmd Filetype html setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab autoindent
autocmd Filetype css setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab autoindent

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"          "
" Mappings "
"          "
""""""""""""

inoremap jj <Esc>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                              "
" Plugin and Filetype Settings "
"                              "
""""""""""""""""""""""""""""""""
"
" Vim-plug automatically executes filetype plugin indent on and syntax enable
" If removing vim-plug, enable these options in configuration
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugs')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'mattn/emmet-vim', { 'for': ['css', 'html'] }
Plug 'pangloss/vim-javascript', { 'for': ['javascript'] }
Plug 'leafgarland/typescript-vim', { 'for': ['typescript'] }
Plug 'maxmellon/vim-jsx-pretty', { 'for': ['javascript', 'typescript'] }
call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"               "
" Emmett Plugin "
"               "
"""""""""""""""""

let g:user_emmet_leader_key=','

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"               "
" Color Scheme  "
"               "
"""""""""""""""""

let g:gruvbox_italic=1
autocmd vimenter * ++nested colorscheme gruvbox

if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
if (has("termguicolors"))
  set termguicolors
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
