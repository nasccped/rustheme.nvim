local M = {}

---@type config.RusthemeConfig
local default_config = {
    globals = {
        bolds = true,
        italics = true,
        transparents = {
            background = false,
            float_background = false
        },
        invert_title = false,
        termguicolors = true
    },
    mapping_overrides = {
        everything = {},
        ["core-dark"] = {},
        ["core-light"] = {},
        ["mangrove-dark"] = {},
        ["mangrove-light"] = {}
    },
    group_overrides = {}
}

--- Returns the default rustheme configuration.
---@return config.RusthemeConfig
function M.default()
    return vim.deepcopy(default_config)
end

return M
