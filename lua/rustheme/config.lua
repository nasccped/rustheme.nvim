local vimenv = require("rustheme.lib.vimenv")
local M = {}

---@type config.RusthemeConfig
local default_config = {
    default_variant = {
        dark = "core-dark",
        light = "core-light",
    },
    globals = {
        bolds = {
            title = true,
            keyword = true,
            comment = false,
            tab_line_sel = true,
            separators = true,
            match_paren = true,
            substitute = true,
            pmenu_selection = true
        },
        italics = {
            title = false,
            keyword = true,
            comment = true,
            tab_line_sel = true,
            separators = false,
            match_paren = false,
            substitute = false,
            pmenu_selection = false
        },
        transparents = {
            background = false,
            float_background = false
        }
    },
    bg = vimenv.get_background()
}

--- Returns the default rustheme configuration.
---@return config.RusthemeConfig
function M.default()
    return vim.deepcopy(default_config)
end

return M
