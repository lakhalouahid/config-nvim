-- debug
vim.lsp.set_log_level("error")


-- loads lsp servers
require('lsp/lua-lsp')
require('lsp/bash-lsp')
require('lsp/python-lsp')
require('lsp/vim-lsp')


-- configuration language server
require('config')
-- telescope
require('utils/telescope')

-- Mappings
local function buf_set_keymap(...) vim.api.nvim_set_keymap(...) end
local opts = { noremap=true, silent=false }
-- See `:help vim.lsp.*` for documentation on any of the below functions
buf_set_keymap('n', '<space>dl', '<cmd>lua vim.cmd("vsp"..vim.lsp.get_log_path())<CR>', opts)
buf_set_keymap('n', '<space>pf', '<cmd>lua require("telescope.builtin").find_files()<CR>', opts)
buf_set_keymap('n', '<space>pg', '<cmd>lua require("telescope.builtin").live_grep()<CR>', opts)
buf_set_keymap('n', '<space>ps', '<cmd>lua require("telescope.builtin").grep_string({search=vim.fn.input("Grep for: ")})<CR>', opts)
buf_set_keymap('n', '<space>pw', '<cmd>lua require("telescope.builtin").grep_string({search=vim.fn.expand("<cword>")})<CR>', opts)
buf_set_keymap('n', '<space>pv', '<cmd>lua require("utils/tls").search_dotfiles()<CR>', opts)
buf_set_keymap('n', '<space>pV', '<cmd>lua require("utils/tls").grep_dotfiles()<CR>', opts)
buf_set_keymap('n', ']g', '<cmd>cnext<CR>', opts)
buf_set_keymap('n', '[g', '<cmd>cprevious<CR>', opts)
buf_set_keymap('n', '<space>nc', '<cmd>call Basics#Move2NextCell()<CR>', opts)
