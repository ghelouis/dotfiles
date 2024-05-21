" vim configuration file

" Disable vi compatibility mode
set nocompatible

" Filetype detection for plugins and indentation options
filetype plugin indent on

" Reload a file when it's changed from the outside
set autoread

" Auto commenting disabled for all files
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Make backspace behave as expected
set backspace=eol,indent,start

" Set the minimal amount of lines under and above the cursor
set scrolloff=5

" Show line number
set number

" Syntax highlighting
syntax on

" Custom colorscheme
colorscheme jellybeans

" Briefly show matching braces
set showmatch

" Line wrapping
set wrap

" Wrap on column 80
set textwidth=79

" Edited buffers are allowed to be hidden
set hidden

" Ignore case on search
set ignorecase

" Ignore case unless there is an uppercase letter in the pattern
set smartcase

" Length of a tab, never change it
set tabstop=8

" The number of spaces inserted when pressing tab
set softtabstop=2

" The number of spaces inserted/removed when pressing gg< or >
set shiftwidth=2

" Insert spaces instead of tabs
set expandtab

" When tabbing manually, use shiftwidth instead of tabstop and softtabstop
set smarttab

" Set basic indenting when filetype detection
" didn't find a fancy indentation scheme
set autoindent

" Auto vim to clipboard copy (requires gvim for Arch)
set clipboard=unnamedplus

" Associate .dat files to ledger (for syntax highlighting, see plugin below)
autocmd BufNewFile,BufRead *.dat set syntax=ledger

" Set specific indentation for some file types
autocmd FileType html setlocal softtabstop=2 shiftwidth=2
autocmd FileType javascript setlocal softtabstop=2 shiftwidth=2


" F2: Toggle list (display unprintable characters)
nnoremap <F2> :set list!<CR>

" Tab: autoindent whole file
nnoremap <Tab> gg=G''

" Space: next buffer
nnoremap <Space> :bn<Enter>


" Plugins (see https://github.com/junegunn/vim-plug)
call plug#begin()
Plug 'ledger/vim-ledger'
Plug 'dhruvasagar/vim-table-mode'
call plug#end()
