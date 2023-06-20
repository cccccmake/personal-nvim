-- required by colorizer
vim.opt.termguicolors = true
-- wrap settings
vim.opt.wrap = true
vim.opt.textwidth=0
vim.opt.wrapmargin=0
vim.opt.columns=80
-- vim.opt.formatoptions:remove('l')
-- vim.opt.formatoptions:append('t')
-- -- this causes trouble breaking lines whose len < 80
-- vim.opt.formatoptions:append('a')
vim.opt.tabstop=4
vim.opt.softtabstop=4
vim.opt.shiftwidth=4
-- encoding settings
vim.opt.termencoding="utf-8"
vim.opt.encoding="utf-8"
vim.opt.fileencoding="utf-8"
vim.opt.mouse="a"
-- clipboard
vim.opt.clipboard="unnamedplus"
-- some other things
vim.opt.compatible = false
vim.opt.smarttab = true
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.linebreak = true
vim.opt.incsearch = true
vim.opt.showmatch = true
vim.opt.ignorecase = true
vim.opt.hlsearch = true
vim.opt.autoindent = true
vim.opt.ttyfast = true
vim.opt.swapfile = false
-- set colorscheme
vim.cmd.guifont="*" -- original: set guifontwide = *
vim.cmd.colorscheme "catppuccin-mocha"
--load plugins and keymappings
require("plugins")
require("keymapping")
