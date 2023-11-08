local function vgit_status()
    local status = vim.b.vgit_status

    -- Verifique se a tabela vgit_status existe e tem informações
    if status and type(status) == "table" then
        local added = status.added or 0
        local removed = status.removed or 0
        local changed = status.changed or 0

        return string.format("Added: %d, Removed: %d, Changed: %d", added, removed, changed)
    else
        return ""
    end
end

return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons'},
  config = function()
    require('lualine').setup{
        options = { theme = 'horizon' },
        sections = {
            lualine_b = { vgit_status },
        }
    }
  end
}
