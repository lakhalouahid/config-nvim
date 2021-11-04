""### PLUGINS CONFIGURATION ###
call plug#begin('~/.local/share/nvim/plugged')


"## GENERAL SETTINGS ##

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
"Plug 'junegunn/vim-github-dashboard'

" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'honza/vim-snippets'

" Replace With Register
Plug 'vim-scripts/ReplaceWithRegister'

" Awesome tpope Plugins
" vim-fugitive
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'

" Make comment insanely fast
Plug 'chrisbra/vim-commentary'

" Make Auto pairs
" Plug 'jiangmiao/auto-pairs'

" Make wiki
Plug 'vimwiki/vimwiki'

" The best vim-airline 
Plug 'vim-airline/vim-airline'

" Man pages
Plug 'vim-utils/vim-man'

" Titlecase
"Plug 'christoomey/vim-titlecase'

" Colorscheme
Plug 'morhetz/gruvbox'

" Easy display text
Plug 'junegunn/goyo.vim'

" Wordnet
Plug 'fncll/wordnet.vim'

" Info
Plug 'HiPhish/info.vim'

" Sort paragraph
Plug 'christoomey/vim-sort-motion'

" Indent text object
Plug 'michaeljsmith/vim-indent-object'

" Entine text object"
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'

""## END GENERAL SETTINGS ##



"## LANGUAGES SPECIFIC PLUGINS ##
"# COC #
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"# JAVASCRIPT #
Plug 'pangloss/vim-javascript'
Plug 'maksimr/vim-jsbeautify'

"# MARKDOWN #
Plug 'plasticboy/vim-markdown'

"# MATLAB #
Plug 'yinflying/matlab-screen'

"# LUA #
Plug 'wsdjeg/vim-lua'

"# GOLANG #
Plug 'fatih/vim-go'

"# BASH #
Plug 'vim-scripts/bash-support.vim'

"## END LANGUAGES SPECIFIC PLUGINS ##

call plug#end()
