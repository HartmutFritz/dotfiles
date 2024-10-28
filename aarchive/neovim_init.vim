

"call plug#begin('~/.local/share/nvim/plugged')

"Plug 'preservim/nerdtree'  # An example plugin
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'olimorris/onedarkpro.nvim'

"call plug#end()

"colorscheme onedark

" set cursorline

highlight CursorLine cterm=NONE ctermbg=darkgrey ctermfg=None guibg=LightGrey guifg=NONE

set number                     " Show current line number
" set relativenumber             " Show relative line numbers

set nocompatible

set ignorecase

set hlsearch

set incsearch

set tabstop=4

set expandtab

set shiftwidth=4

set autoindent
" Indents word-wrapped lines as much as the 'parent' line
set breakindent
" Ensures word-wrap does not split words

" set formatoptions=l
" set lbr

set wildmode=longest,list

syntax on

set clipboard=unnamedplus

set ttyfast

"filetype on

vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', {noremap = true, silent = true})

noremap <expr> j v:count ? 'j' : 'gj'
noremap <expr> k v:count ? 'k' : 'gk'

nnoremap <C-u> <C-u>zz
nnoremap <C-d> <C-d>zz

nnoremap n nzzzv
nnoremap N Nzzzv

set linebreak

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif



