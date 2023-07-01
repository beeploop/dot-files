-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use {
        'uloco/bluloco.nvim',
        requires = { 'rktjmp/lush.nvim' }
    }

    use({
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup {
                icons = false,
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    })

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end, }
    use("theprimeagen/harpoon")
    use("mbbill/undotree")
    use("tpope/vim-fugitive")
    use("nvim-treesitter/nvim-treesitter-context");

    use('nvim-tree/nvim-web-devicons')

    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        }
    }

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },
            { 'mfussenegger/nvim-jdtls' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }

    use("folke/zen-mode.nvim")
    use("eandrju/cellular-automaton.nvim")
    use("laytan/cloak.nvim")

    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    require 'nvim-treesitter.configs'.setup {
        autotag = {
            enable = true,
        }
    }

    --svelkit plugin dependency
    use("othree/html5.vim")
    use("pangloss/vim-javascript")

    --for sveltekit
    use("evanleck/vim-svelte")

    --Gitsigns
    use("lewis6991/gitsigns.nvim")

    -- sort tailwind classes
    use {
        'laytan/tailwind-sorter.nvim',
        requires = { 'nvim-treesitter/nvim-treesitter', 'nvim-lua/plenary.nvim' },
        config = function() require('tailwind-sorter').setup() end,
        run = 'cd formatter && npm i && npm run build',
    }

    -- lualine for status lualine
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- for commenting
    use("terrortylor/nvim-comment")

    -- don't mind this, this is for testing the first plugin I made
    use "/home/johnloydmulit/repos/lua/my-nvim-plugins/first-nvim-plugin/"
end)
