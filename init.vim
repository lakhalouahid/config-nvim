"### NOEVIM INIT CONFIGURATION FILE ###
"## Global Settings ##

" Leader
let mapleader = " "  " Define the leader character
let maplocalleader = " "  " Define the leader character

" Behavior
set ruler           " Show the line and columninit.vim number
set nowrap          " Don't Wrap the lineBs
set encoding=utf-8  " Encoding UTF-8
set nocompatible    " No compatibel vith vi
set title           " Title Setting
set hidden          " Make a buffer becomes hidden when it is abandoned
set scrolloff=0
set signcolumn=no   " Left column for errors
" set colorcolumn=80 " 80 red column
set cmdheight=1     " Cmd Height
set shortmess+=c    " Don't give ins-completion-menu messages
set noshowmode
set nohlsearch      " No hlsearch
set completeopt=menuone,noinsert,noselect
set exrc            " Read local vimrc config file
set nowrapscan
"set nosecure
"set omnifunc=syntaxcomplete#Complete
set updatetime=200
set belloff=all     " Set off the bell sound
syntax enable       " Enable synthax highlighting
filetype on         " Enable filetype detection
filetype plugin on  " Enable loading the plugin files for specific file type
filetype indent on  " Enable loading the indent file for specific file type


" Tabs and identations
set expandtab     " Expand tabs to spaces
set tabstop=2     " Tab settings
set softtabstop=2 " Tab settings
set shiftwidth=2  " Tab settings
set smarttab      " Smarttab
set smartindent   " Smart indent
set autoindent    " Auto ident

" Spelling
set spelllang=en    " Make english as the default language for spelling
set background=dark " Use my beautiful drak background theme

" Themes
set notermguicolors

" Search
set path=.** " Search from the current folder and down
" Windows config
"set number " Show line number
"set splitbelow " Make window splits open below current window
"set splitright " Make window splits open right current window
set numberwidth=1
set relativenumber " Show relative line number
set number         " Show absolute number
set incsearch      " Show where the pattern, as it was typed so far, matches

" Backups
set history=700                         " Set the history to 700 deep
set undolevels=700                      " No more then 700 undolevels
set noswapfile                          " No swap files :)
set nobackup                            " No backups :)
set undofile                            " Use a undofile for each opened file
set undodir=~/.local/share/nvim/undodir " Define the undodir

" Extra stuff
set clipboard=unnamed                     " Use the plus register as the clipboard register
set runtimepath+=~/.local/share/nvim/lua " Runtime

" Vim provider
let g:python3_host_prog = '/usr/bin/python3'
let g:loaded_ruby_provider = 0
let g:loaded_perl_provider = 0
let g:loaded_python_provider = 0


" Load bash aliases
"let $ZSH_ENV='~/.config/zsh/.sh_aliases'

" Plugings
source $HOME/.config/nvim/vim/plugs.vim
source $HOME/.config/nvim/vim/mappings.vim
source $HOME/.config/nvim/vim/configurations.vim

" Colorscheme
colorscheme gruvbox
highlight extrawhitespace ctermbg=DarkMagenta guibg=blue

lua << EOF
 require('init')
EOF
