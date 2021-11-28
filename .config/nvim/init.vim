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

set number
set relativenumber
set history=50
set showcmd
set incsearch
set hidden
set noerrorbells
set visualbell
set nowrap
set colorcolumn=81
set noswapfile
set nobackup
set nowritebackup
set scrolloff=8

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
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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
"set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
"set statusline+=%F

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
" vim-plug automatically executes filetype plugin indent on and syntax enable
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugs')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"               "
" Emmett Plugin "
"               "
"""""""""""""""""
"
"let g:user_emmet_leader_key='<C-Z>'
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
