local keymaps = {
    {'n', "<C-s>", ':w!<CR>'},
    {'', "<C-t>", ':TroubleToggle<CR>'},
    -- Move to next search result and center the screen
    {'n', "n", 'nzzzv'},
    -- Move to previous search result and center the screen
    {'n', "N", 'Nzzzv'},
    -- Replace selected text in visual mode without yanking it
    {'x', "<leader>p", '"_dP'},
    -- Quit Vim without saving
    {'n', "<C-q>", ':q!<CR>'},
    -- Increment the current number under the cursor
    { 'n', '+', '<C-a>' },
    -- Decrement the current number under the cursor
    { 'n', '-', '<C-x>' },
    -- Delete a word, preserving the space character
    { 'n', 'dw', 'vb"_d' },
    -- Navigate to the left split window
    {'', 'sh', '<C-w>h' },
    {'', '<leader>tb', ':TagbarToggle<CR>'},
    -- Navigate to the upper split window
    {'', 'sk', '<C-w>k' },
    -- Navigate to the lower split window
    {'', 'sj', '<C-w>j' },
    -- Move selected text down in visual mode
    {"v", "<A-Down>", ":m '>+1<CR>gv=gv"},
    -- Move selected text up in visual mode
    {"v", "<A-Up>", ":m '<-2<CR>gv=gv"},
    -- Navigate to the right split window
    {'', 'sl', '<C-w>l' },
    -- Navigate to the lower split window
    {'', 's<up>', '<C-w>j' },
    -- Navigate to the left split window
    {'', 's<left>', '<C-w>h' },
    -- Navigate to the next window
    {'', '<Space>', '<C-w>w' },
    -- Navigate to the right split window
    {'', 's<right>', '<C-w>l' },
    -- Navigate to the upper split window
    {'', 's<down>', '<C-w>k' },
    -- Select the entire document
    { 'n', '<C-a>', 'gg<S-v>G' },
    -- Increase the split window size vertically
    { 'n', '<C-w><up>', '<C-w>+' },
    -- Decrease the split window size horizontally
    { 'n', '<C-w><left>', '<C-w><' },
    -- Decrease the split window size vertically
    { 'n', '<C-w><down>', '<C-w>-' },
    -- Increase the split window size horizontally
    { 'n', '<C-w><right>', '<C-w>>' },
    -- Close the current tab
    { 'n', 'tq', ':tabclose<CR>', { silent = true } },
    -- Edit the current tab
    { 'n', 'te', ':tabedit<Return>', { silent = true } },
    -- Split the window horizontally and navigate to it
    { 'n', 'ss', ':split<Return><C-w>w', { silent = true } },
    -- Split the window vertically and navigate to it
    { 'n', 'sv', ':vsplit<Return><C-w>w', { silent = true } },
    -- Select text to the right
    {'n', "<S-Right>", "v<Right>"},
    -- Select text to the left
    {'n', "<S-Left>", "v<Left>"},
}

return keymaps
