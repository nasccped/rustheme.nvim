local M = {}

local mods = { "base", "lsp", "syntax", "treesitter" }

--- Generates a group table from a given `palette.RusthemePalette`
--- and `config.GlobalFields`. The returned table can map string to
--- table or string to string also. The second will treat the field's
--- value as a link (`{ link = value }`) by the `vimenv.set_hl`
--- function.
---@param plt palette.RusthemePalette
---@param cfg config.GlobalFields
---@return table
function M.get_groups(plt, cfg)
    local tbl
    local groups = {}
    for _, m in ipairs(mods) do
        tbl = require(string.format("rustheme.groups.%s", m))
        for k, v in pairs(tbl.callback(plt, cfg)) do
            groups[k] = v
        end
    end
    return groups
end

return M
