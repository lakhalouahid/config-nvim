-- Mappings
local function buf_set_keymap(...) vim.api.nvim_set_keymap(...) end
local opts = { noremap=true, silent=false }

-- See `:help vim.lsp.*` for documentation on any of the below functions
buf_set_keymap('n', '<space>dl', '<cmd>lua vim.cmd("vsp"..vim.lsp.get_log_path())<CR>', opts)
buf_set_keymap('n', '<space>pf', '<cmd>lua require("utils/telescope").find_files()<CR>', opts)
buf_set_keymap('n', '<space>pg', '<cmd>lua require("utils/telescope").grep_files()<CR>', opts)
buf_set_keymap('n', '<space>pm', '<cmd>lua require("utils/telescope").man_pages()<CR>', opts)
