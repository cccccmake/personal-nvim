-- required by colorizer
vim.opt.termguicolors = true
vim.cmd([[
    set nocompatible
    set smarttab
    set number                  " line number
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
    colorscheme catppuccin-mocha" set color scheme
]])

require("plugins")
require("keymapping")
