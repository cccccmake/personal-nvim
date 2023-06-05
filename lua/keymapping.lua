-- signature for mapping keys
-- vim.api.nvim_set_keymap(mode, keys, mapping, options)

-- map leader
vim.g.mapleader = " "
-- cancel the highlighted parts
vim.api.nvim_set_keymap('n', "<Space><Enter>", ":nohlsearch<CR>",
                        {noremap = true})

-- navigate among the splitted windows
vim.api.nvim_set_keymap('n', "<c-j>", "<c-w>j", {noremap = true})
vim.api.nvim_set_keymap('n', "<c-k>", "<c-w>k", {noremap = true})
vim.api.nvim_set_keymap('n', "<c-h>", "<c-w>h", {noremap = true})
vim.api.nvim_set_keymap('n', "<c-l>", "<c-w>l", {noremap = true})

-- resize the splitted windows
vim.api.nvim_set_keymap('n', "<c-up>", "<c-w>+", {noremap = true})
vim.api.nvim_set_keymap('n', "<c-down>", "<c-w>-", {noremap = true})
vim.api.nvim_set_keymap('n', "<c-left>", "<c-w>>", {noremap = true})
vim.api.nvim_set_keymap('n', "<c-right>", "<c-w><", {noremap = true})

-- nerdtree mapping
vim.api.nvim_set_keymap('n', "<F3>", ":NERDTreeToggle<CR>", {noremap = true})
-- nvim ufo for code folding
vim.o.foldcolumn = '1' -- '0' is not bad
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true

vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)
