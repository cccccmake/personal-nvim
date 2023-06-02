-- required by colorizer
vim.opt.termguicolors = true
vim.cmd([[
    set nocompatible
    set smarttab
    set number
    set cursorline              " highlight current cursorline
    set expandtab               " converts tabs to white space
    set tabstop=4               " number of columns occupied by a tab
    set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
    set shiftwidth=4            " width for autoindents
    set nowrap
    set incsearch               " incremental search
    set showmatch               " show matching
    set ignorecase              " case insensitive
    set hlsearch                " highlight search
    set autoindent              " indent a new line the same amount as the line just typed
    set cc=80                   " set an 80 column border for good coding style
    set mouse=a                 " enable mouse click
    set clipboard=unnamedplus   " using system clipboard
    set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.exe,*.flv,*.img,*.xlsx
    set ttyfast                 " Speed up scrolling in Vim
    set noswapfile              " disable creating swap file
]])

-- signature for mapping keys
-- vim.api.nvim_set_keymap(mode, keys, mapping, options)
-- map leader
vim.g.mapleader = "<SPACE>"
-- cancel the highlighted parts
vim.api.nvim_set_keymap('n', "<Space><Enter>", ":nohlsearch<CR>", {noremap = true})

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
require("plugins")
