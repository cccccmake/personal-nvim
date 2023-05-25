vim.api.nvim_set_keymap("n", "<A-TAB>", "<cmd>bnext<CR>", {silent=true})
vim.api.nvim_set_keymap("n", "<S-TAB>", "<cmd>bprevious<CR>", {silent=true})

vim.opt.termguicolors = true
require("bufferline").setup{}
