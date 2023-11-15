local plugins = {
    {
        'vim-crystal/vim-crystal',
        ft = 'crystal'
    },
    {
        'preservim/tagbar',
        ft = 'tagbar'
    },
    {
        'mg979/vim-visual-multi',
        ft = 'multiCursor'
    },
    {
        'f-person/git-blame.nvim',
        config = function ()
            require('gitblame').setup {
                enabled = false,
            }
        end
    },
    {
        'folke/trouble.nvim',
        opts = {},
    },
    {
        'neovim/nvim-lspconfig',
        config = function()
            require("plugins.configs.lspconfig")
            require("custom.configs.lspconfig")
        end
    },
    {
        -- lazy.nvim
        {
            "folke/noice.nvim",
            event = "VeryLazy",
            opts = {
            }
           ,
           dependencies = {
                "MunifTanjim/nui.nvim",
                "rcarriga/nvim-notify",
            }
        }
    }
}

return plugins
