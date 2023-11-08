
return {
    'numToStr/Comment.nvim',
    lazy = false,
    config = function()

        require('Comment').setup({
            ignore = '^$',
            toggler = {
                line = '<C-/>',
                block = '<leader>bc',
            },
            opleader = {
                line = '<C-/>',
                block = '<leader>b',
            },
        })
    end
}

