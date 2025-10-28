local utils = require("rustheme.utils")
local Rustheme = {}

---Loads the colorscheme based on an optional theme variant.
---@param variant? string
function Rustheme.load(variant)
    -- new colors_name value to be set
    local colors_name
    -- new background mode ('light'|'dark') to be set
    local background
    -- reseting colors and syntax hl
    if utils.get_colors_name() then
        utils.run_cmd("hi clear")
    end
    if vim.fn.exists("syntax_on") then
        utils.run_cmd("syntax reset")
    end
    -- set colors_name + theme variant (default if not specified...)
    colors_name = string.format("rustheme%s", variant and ("-" .. variant) or "")
    background = variant ~= "mangrove" and variant or utils.get_background()
    variant = variant or background
    if background ~= utils.get_background() then
        utils.set_background(background)
    end
    utils.set_colors_name(colors_name)
    utils.set_termguicolors(true)
end

return Rustheme
