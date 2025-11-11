local M = {}

local plugins = { "which-key", "indent-blankline" }

--- Generates a group table from a given `palette.RusthemePalette`
--- and `config.GlobalFields`. The returned table can map string to
--- table or string to string also. The second will treat the field's
--- value as a link (`{ link = value }`) by the `vimenv.set_hl`
--- function.
---@param plt palette.RusthemePalette
---@param cfg config.GlobalFields
---@return table
function M.callback(plt, cfg)
    local tbl
    local groups = {}
    for _, plg in ipairs(plugins) do
        tbl = require(string.format("rustheme.groups.plugins.%s", plg))
        for k, v in pairs(tbl.callback(plt, cfg)) do
            groups[k] = v
        end
    end
    return groups
end

return M
