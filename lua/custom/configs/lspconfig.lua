local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")

lspconfig.pyright.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {"python"},

})

lspconfig.clangd.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {"c", "cpp", "h", "hpp"},
})

lspconfig.bashls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {"sh"},
})

lspconfig.htmx.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {
        "html"
    },
})

lspconfig.solargraph.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {"ruby"},
})

lspconfig.zls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {"zig"},
})

lspconfig.vuels.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {"vue"},
})

lspconfig.tailwindcss.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { "django-html", "htmldjango", "html", "php","css", "postcss", "sass", "scss", "javascript", "javascriptreact", "typescript", "typescriptreact", "vue" },
})

lspconfig.intelephense.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {"php"},
})

lspconfig.rust_analyzer.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {"rust"},
    root_dir = lspconfig.util.root_pattern("Cargo.toml"),
})

lspconfig.crystalline.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {"crystal"},
    root_dir = function (file_name)
        return lspconfig.util.root_pattern "shard.yml"(file_name) or
            lspconfig.util.find_git_ancestor(file_name) or
            lspconfig.util.path.dirname(file_name)
    end
})
