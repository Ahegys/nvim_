local M = {}

M.plugins = 'custom.plugins'

local getKeymaps = require("custom.keymaps")
for _, mapping in ipairs(getKeymaps) do
    local mode, key, commands, options = unpack(mapping)
    vim.api.nvim_set_keymap(mode, key, commands, options or {})
end

return M
