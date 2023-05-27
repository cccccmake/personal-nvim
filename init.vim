lua << END
    require('plugins')
END

set nocompatible            " disable compatibility to old-time vi
syntax on                   " syntax highlighting
filetype on
filetype plugin on
filetype indent on   	    " allow auto-indenting depending on file type
set smarttab
set number                  " add line numbers
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
set wildmenu
" set wildmode=longest, list  " get bash-like tab completions
set completeopt=longest,menuone
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.exe,*.flv,*.img,*.xlsx
set ttyfast                 " Speed up scrolling in Vim
set noswapfile              " disable creating swap file

" mapping  syntax
" map_mode <what-you-type> <what-is-expected>
" noremap  non-recursive-edit-map
" nnoremap normal-normal-edit-map
" inoremap insert-normal-edit-map
" vnoremap visual-normal-edit-map

" cancel the highlight search
nnoremap <Space><Enter> :nohlsearch<CR> 

" navigate among the splitted windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" resize the splitted windows
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><

" nerdtree mapping
nnoremap <F3> :NERDTreeToggle<CR>
