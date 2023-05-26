vim.api.nvim_set_keymap("n", "<leader>f", "<cmd>Format<CR>", {silent = true})
vim.api.nvim_set_keymap("n", "<leader>F", "<cmd>FormatWrite<CR>",
                        {silent = true})
-- local util = require "formatter.util"

require("formatter").setup {
    logging = true,
    log_level = vim.log.levels.ERROR,
    filetype = {
        -- Formatter configurations for filetype "lua" go here
        -- and will be executed in order
        lua = {require("formatter.filetypes.lua").luaformat},
        latex = {require("formatter.filetypes.latex").latexindent},
        java = {require("formatter.filetypes.java").clangformat},
        c = {require("formatter.filetypes.c").clangformat},
        cpp = {require("formatter.filetypes.cpp").clangformat},
        python = {require("formatter.filetypes.python").autopep8},
        ["*"] = {require("formatter.filetypes.any").remove_trailing_whitespace}
    }
}
