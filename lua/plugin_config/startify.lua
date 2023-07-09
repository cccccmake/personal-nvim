vim.cmd[[

"" Startify, package is managed by Packer, but configed in vimscript

"" show startify when closing the last buffer
" autocmd BufEnter * if line2byte('.') == -1 && len(tabpagebuflist()) == 1 | Startify | endif

let g:startify_lists = [
\ { 'type': 'sessions',  'header': ['   Sessions']       },
\ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
\ { 'type': 'files',     'header': ['   MRU']            },
\ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
\ { 'type': 'commands',  'header': ['   Commands']       },
\ ]

" put your bookmarks here so that they can show up in your startup screen
let g:startify_bookmarks = [ '~/TUD/MA/THESIS/thesis.tex',
\'~/TUD/MA/THESIS/includes/',
\'~/.config/nvim/',
\'~/Blog/content/post/',
\]

let g:startify_custom_header = [
\'                                                     ',
\' Powered by cccccmake                                ',
\' Do not forget your life motto :)                    ',
\'！！！彻底疯狂！！！                                 ',
\'-----------------------------------------------------',
\'-----------------------------------------------------'
\]

]]
