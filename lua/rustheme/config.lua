local vimenv = require("rustheme.lib.vimenv")
local M = {}

---@type config.GlobalFields
local globals = {
    bolds = {
        title = true,
        keyword = true,
        comment = false,
        tab_line_sel = true,
        separators = true,
        match_paren = true,
        substitute = true,
        pmenu_selection = true,
        string = false,
        char = false
    },
    italics = {
        title = false,
        keyword = true,
        comment = true,
        tab_line_sel = true,
        separators = false,
        match_paren = false,
        substitute = false,
        pmenu_selection = false,
        string = false,
        char = false
    },
    transparents = {
        background = false,
        float_background = false
    }
}

---@type config.RusthemeConfig
local default_config = {
    default_variant = {
        dark = "core-dark",
        light = "core-light",
    },
    globals = vim.deepcopy(globals),
    variant_config = {
        ["core-dark"] = {},
        ["core-light"] = {},
        ["mangrove-dark"] = {},
        ["mangrove-light"] = {}
    },
    palette_override = {},
    groups_override = {},
    bg = vimenv.get_background()
}

--- Returns the default rustheme configuration.
---@return config.RusthemeConfig
function M.default()
    return vim.deepcopy(default_config)
end

--- Returns the default `config.GlobalFields`.
---@return config.RusthemeConfig
function M.default_global_fields()
    return vim.deepcopy(globals)
end

return M
