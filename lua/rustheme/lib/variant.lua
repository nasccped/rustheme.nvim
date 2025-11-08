local M = {}
local var_bg_map = {
    ["core-dark"] = "dark",
    ["core-light"] = "light",
    ["mangrove-dark"] = "dark",
    ["mangrove-light"] = "light"
}

--- forcing default
local local_variant = "core-dark"
local local_bg = "dark"

--- Setup the variant module private fields.
---@param variant? config.AnyVariant
---@param defaults config.DefaultVariant
---@param bg? "dark"|"light"
function M.setup(variant, defaults, bg)
    local_variant = variant
        or defaults[bg]
        or defaults[local_bg]
        or local_variant
    local_bg = var_bg_map[local_variant]
end

--- Returns the color variant. Don't forget to use `M.setup` before.
---@return config.AnyVariant
function M.get_variant()
    return local_variant
end

--- Returns the background mode. Don't forget to use `M.setup` before.
---@return "dark"|"light"
function M.get_bg()
    return local_bg
end

return M
