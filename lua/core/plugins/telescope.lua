return {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        require('telescope').setup{
            find_files = {
                theme =  "dropdown" 
            },
            live_grep = {
                theme =  "dropdown"
            },
        }
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
        vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
        vim.keymap.set('n', '<leader>li', builtin.lsp_implementations, {})
        vim.keymap.set('n', '<leader>ld', builtin.lsp_definitions, {})
        vim.keymap.set('n', '<leader>gs', builtin.git_status, {})
        vim.keymap.set('n', '<leader>gc', builtin.git_commits, {})
    end
}
