vim.cmd('autocmd!')
vim.scriptencoding = 'utf-8'
-- Basic Neovim settings
local options = {
-- UI settings
	encoding = 'utf-8',
	fileencoding = 'utf-8',
	autoread = true,
	title = true,
	hlsearch = true,
	autoindent = true,
	backup = false,
	showcmd = true,
	cmdheight = 1,
	laststatus = 2,
	scrolloff = 10,
	shell = 'fish',
	inccommand = 'split',
	ai = true,
	si = true,
	termguicolors = true, -- Enables use of colors in the terminal
	mouse = "a", -- Enables mouse usage in normal and visual mode
	number = true, -- Shows line numbers
	relativenumber = true, -- Shows relative line numbers
	wrap = false, -- Disables line wrapping
	cursorline = true, -- Highlights the line under the cursor
	-- signcolumn = "yes", -- Always shows the sign column
	splitright = true, -- Opens splits to the right
	splitbelow = true, -- Opens splits below
	clipboard = "unnamedplus", -- Allows copying to the system clipboard
-- Editor settings
	expandtab = true, -- Converts tabs to spaces
	tabstop = 4, -- Sets the size of a tab
	shiftwidth = 4, -- Sets the size of an indentation
	smartindent = true, -- Automatically indents
	undofile = true, -- Enables persistent undo
	incsearch = true, -- Enables incremental search
	ignorecase = true, -- Ignores case when searching
	smartcase = true, -- Ignores case if the search query is all lowercase
	background = "dark",
	backupskip = '/tmp/*,/private/tmp/*',
	completeopt = { 'menu', 'menuone', 'noselect'},
}
vim.opt.formatoptions:append { 'r' }
vim.opt.path:append { '**' }
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])
vim.cmd "set colorcolumn=80"

vim.api.nvim_create_autocmd("InsertLeave", {
	pattern = '*',
	command = "set nopaste"
})
vim.o.inccommand = "split"
-- Applies the settings
for k, v in pairs(options) do
vim.opt[k] = v
end

