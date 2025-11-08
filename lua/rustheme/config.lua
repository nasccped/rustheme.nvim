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
        char = false,
        annotation = true,
        markup_strong = true,
        markup_italic = false,
        markup_heading = true,
        markup_quote = false,
        markup_math = false,
        markup_url = false,
        markdown_list = true,
        markdown_checked = true,
        markdown_unchecked = true,
        tsx_attribute = false
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
        char = false,
        annotation = true,
        markup_strong = false,
        markup_italic = true,
        markup_heading = false,
        markup_quote = true,
        markup_math = true,
        markup_url = true,
        markdown_list = false,
        markdown_checked = false,
        markdown_unchecked = false,
        tsx_attribute = true
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
