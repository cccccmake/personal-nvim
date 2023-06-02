-- This file can be loaded by calling `lua require('plugins')` from your init.vimd
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
-- vim.o.showtabline = 2

return require('packer').startup(function(use)

    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- startup
    use {
        "startup-nvim/startup.nvim",
        requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
        config = function()
            require("startup").setup()
        end
    }

    -- colorizer
    use{
        'norcalli/nvim-colorizer.lua',
        config = function()
            require("colorizer").setup()
        end
    }

    -- vimtex
    use {'lervag/vimtex', config = [[require('plugin_config.vimtex')]]}

    -- trouble
    use {
        "folke/trouble.nvim",
        requires = {{"nvim-tree/nvim-web-devicons"}},
        config = [[require('plugin_config.trouble')]],
        opts = {}
    }

    -- nvim-lint
    use {
        'mhartington/formatter.nvim',
        config = [[require('plugin_config.formatter')]]
    }

    -- comment
    use {
        'numToStr/Comment.nvim',
        config = function() require('Comment').setup() end
    }

    -- terminal
    use {
        'akinsho/toggleterm.nvim',
        tag = '*',
        config = [[require('plugin_config.toggleterm')]]
    }

    -- nerdtree
    use 'preservim/nerdtree'

    -- scope
    use {
        'romgrk/barbar.nvim',
        config = [[require('plugin_config.barbar')]],
    }

    -- telescope for fuzzy searching
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
        config = [[require('plugin_config.telescope')]],
        requires = {{'nvim-lua/plenary.nvim'}}
    }

    -- tokyonight color scheme
    use 'folke/tokyonight.nvim'

    -- vim-devicons
    use 'ryanoasis/vim-devicons'

    -- enable the colorscheme tokyonight
    vim.cmd [[colorscheme tokyonight]]

    -- Simple plugins can be specified as strings
    use 'rstacruz/vim-closer'

    -- goto definition
    use {
        'rmagatti/goto-preview',
        config = function() require('goto-preview').setup {} end
    }

    -- auto pair
    use {
        'jiangmiao/auto-pairs',
        -- config = require("auto-pairs").setup()
    }

    use 'L3MON4D3/LuaSnip'

    -- nvim-cmp
    use {
        'hrsh7th/nvim-cmp',
        requires = {
            { 'hrsh7th/cmp-buffer',                  after = 'nvim-cmp' },
            'hrsh7th/cmp-nvim-lsp',
            'onsails/lspkind.nvim',
            { 'hrsh7th/cmp-nvim-lsp-signature-help', after = 'nvim-cmp' },
            { 'hrsh7th/cmp-path',                    after = 'nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lua',                after = 'nvim-cmp' },
            { 'saadparwaiz1/cmp_luasnip',            after = 'nvim-cmp' },
            'lukas-reineke/cmp-under-comparator',
            {'hrsh7th/cmp-cmdline',                   after = 'nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp-document-symbol', after = 'nvim-cmp' },
        },
        config = [[require('plugin_config.nvim-cmp')]],
        -- event = 'InsertEnter', 
        -- this affects command line completion: Only after insertion mode triggered
        -- as well as the cmp load... wtf...
        wants = 'LuaSnip',
    }

    -- java language server
    -- use {
    --     'mfussenegger/nvim-jdtls',
    --     -- ft = {'java'},
    --     config = [[require('plugin_config.jdtls')]]
    -- }

    -- Lazy loading:
    -- Load on specific commands
    use {
        'tpope/vim-dispatch',
        opt = true,
        cmd = {'Dispatch', 'Make', 'Focus', 'Start'}
    }

    -- Load on an autocommand event
    use {'andymass/vim-matchup', event = 'VimEnter'}

    -- lua line
    use {
        'nvim-lualine/lualine.nvim',
        requires = {'nvim-tree/nvim-web-devicons', opt = true},
        config = require('lualine').setup()
    }

    -- lsp
    use {
        'neovim/nvim-lspconfig',
        config = [[require('plugin_config.nvim-lsp')]]
    }

    -- Load on a combination of conditions: specific filetypes or commands
    -- Also run code after load (see the "config" key)
    use {
        'w0rp/ale',
        ft = {
            'sh', 'zsh', 'bash', 'c', 'cpp', 'cmake', 'html', 'markdown',
            'racket', 'vim', 'tex'
        },
        cmd = 'ALEEnable',
        config = 'vim.cmd[[ALEEnable]]'
    }

    -- Plugins can have dependencies on other plugins
    use {
        'haorenW1025/completion-nvim',
        opt = true,
        requires = {
            {'hrsh7th/vim-vsnip', opt = true},
            {'hrsh7th/vim-vsnip-integ', opt = true}
        }
    }

    -- You can specify rocks in isolation
    use_rocks 'penlight'

    use_rocks {'lua-resty-http', 'lpeg'}

    -- Plugins can have post-install/update hooks
    use {
        'iamcco/markdown-preview.nvim'
        -- run = 'cd app && yarn install',
        -- cmd = 'MarkdownPreview'
    }

    -- Post-install/update hook with neovim command
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    -- Post-install/update hook with call of vimscript function with argument
    use {
        'glacambre/firenvim',
        run = function() vim.fn['firenvim#install'](0) end
    }

    -- Use dependency and run lua function after load
    use {
        'lewis6991/gitsigns.nvim',
        requires = {'nvim-lua/plenary.nvim'},
        config = function() require('gitsigns').setup() end
    }

    -- You can specify multiple plugins in a single call
    use {'tjdevries/colorbuddy.vim'}

    -- You can alias plugin names
    use {'dracula/vim', as = 'dracula'}

end)
