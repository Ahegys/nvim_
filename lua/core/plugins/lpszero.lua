return {
    'VonHeikemen/lsp-zero.nvim',
    dependencies = {
        'neovim/nvim-lspconfig',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/nvim-cmp',
        'L3MON4D3/LuaSnip',
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
    },
    config = function()
        local lsp_zero = require('lsp-zero')

        lsp_zero.on_attach(function(client, bufnr)
            lsp_zero.default_keymaps({buffer = bufnr})
        end)

        require('mason').setup({})

        require('mason-lspconfig').setup({
            ensure_installed = {'solargraph', 'clangd', 'pyright', 'crystalline', 'lua_ls'},
            handlers = {
                lsp_zero.default_setup
            },
        })
        local lsp_zero_api = require('lsp-zero.api')
        local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
        local lsp = require('lspconfig')

        lsp.clangd.setup({
            capabilities = lsp_capabilities,
            on_attach = function(client, bufnr)
                lsp_zero.default_keymaps({buffer = bufnr})
            end
        })

        local cmp = require("cmp")
        local cmp_action = lsp_zero.cmp_action()
        cmp.setup({
            sources = {
                {name = 'nvim_lsp'}
            },
            mapping = cmp.mapping.preset.insert({
                ['<C-Space>'] = cmp.mapping.complete(),
                ['<CR>'] = cmp.mapping.confirm({select = false}),

                ['<C-f>'] = cmp_action.luasnip_jump_forward(),
                ['<C-b>'] = cmp_action.luasnip_jump_backward(),

                ['<C-u>'] = cmp.mapping.scroll_docs(-4),
                ['<C-d>'] = cmp.mapping.scroll_docs(4),
            }),
            snippet = {
                expand = function(args)
                    require('luasnip').lsp_expand(args.body)
                end,
            },

        })
    end
}
