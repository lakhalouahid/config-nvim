"" Plugins Configuration 

call plug#begin('~/.local/share/nvim/plugged')

" Custom Stuff
Plug '~/.local/share/nvim/plugged/vim-basics'
Plug '~/.local/share/nvim/plugged/vim-textobj-cell'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/nvim-cmp'

" For luasnip users.
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'honza/vim-snippets'

" Replace With Register
Plug 'vim-scripts/ReplaceWithRegister'

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim', { 'do': 'make' }

" Awesome tpope Plugins
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'

" Make comment insanely fast
Plug 'chrisbra/vim-commentary'

" Make auto pairs
Plug 'jiangmiao/auto-pairs'

" Make wiki
Plug 'vimwiki/vimwiki'

" The best vim-airline
" Plug 'vim-airline/vim-airline'

" Titlecase
Plug 'christoomey/vim-titlecase'

" Colorscheme gruvbox
Plug 'morhetz/gruvbox'


" Wordnet
Plug 'fncll/wordnet.vim'

" Sort paragraph
Plug 'christoomey/vim-sort-motion'

" Text object
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-function'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-user'

" Markdown-runner
Plug 'dbridges/vim-markdown-runner'

" Jupyter
Plug 'goerz/jupytext.vim'
Plug 'jpalardy/vim-slime', { 'for': 'python' }
Plug 'hanschen/vim-ipython-cell', { 'for': 'python' }

" Markdown
Plug 'plasticboy/vim-markdown'

" Lua
Plug 'wsdjeg/vim-lua'

" nvim-lspconfig
Plug 'neovim/nvim-lspconfig'
" Notes

" Latex
Plug 'lervag/vimtex'


call plug#end()
