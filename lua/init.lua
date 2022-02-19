-- debug
vim.lsp.set_log_level("error")


-- loads lsp servers
require('lsp/lua-lsp')
require('lsp/bash-lsp')
require('lsp/typescript-lsp')
require('lsp/python-lsp')
require('lsp/vim-lsp')


-- configuration language server
require('config')
