local utils = require("rustheme.lib.utils")
local Rustheme = {}

---Default rustheme variant when not specified.
local default_variant = "core-dark"

---Current vim background (when variant not specified).
local current_background = utils.get_background()

---Local map for variant background detection.
local background_map = {
    ["core-dark"] = "dark",
    ["core-light"] = "light",
    ["mangrove-dark"] = "dark",
    ["mangrove-light"] = "light",
}

---Loads the colorscheme based on an optional theme variant.
---@param variant? string
function Rustheme.load(variant)
    if utils.get_colors_name() then
        utils.run_cmd("hi clear")
    end
    if vim.fn.exists("syntax_on") then
        utils.run_cmd("syntax reset")
    end
    variant = variant or default_variant
    local background = background_map[variant] or current_background
    local colors_name = string.format("rustheme-%s", variant)
    if background ~= utils.get_background() then
        utils.set_background(background)
    end
    utils.set_colors_name(colors_name)
    utils.set_termguicolors(true)
end

return Rustheme
