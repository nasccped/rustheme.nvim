local M = {}

--- Loads a color palette from a given colorscheme variant.
---@param variant config.AnyVariant
function M.from_variant(variant)
    return require(string.format("rustheme.palettes.%s", variant))
end

return M
