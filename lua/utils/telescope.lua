require("telescope").setup({
    defaults = {
        file_sorter = require("telescope.sorters").get_fzy_sorter,
        prompt_prefix = " >",
        file_ignore_patterns = {".git", "node_modules"}
    },
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        },
    },
})

require("telescope").load_extension("fzy_native")

local M = {}
M.grep_dotfiles = function()
    require("telescope.builtin").live_grep({
        prompt_title = "< VimRC >",
        cwd = '~/.config/nvim',
        hidden = true,
    })
end
M.search_dotfiles = function()
    require("telescope.builtin").find_files({
        prompt_title = "< VimRC >",
        cwd = '~/.config/nvim',
        hidden = true,
    })
end

return M
