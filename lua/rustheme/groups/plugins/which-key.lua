local M = {}

---@param plt palette.RusthemePalette
---@param cfg config.GlobalFields
---@return table
function M.callback(plt, cfg)
    local _ = cfg
    return {
        WhichKey = { fg = plt.syntax_annotation },
        WhichKeyNormal = { bg = plt.editor_bg_darker },
        WhichKeyFloat = "NormalFloat",
        WhichKeyBorder = "FloatBorder",
        WhichKeySeparator = { fg = plt.editor_weak_text },
        WhichKeyDesc = { fg = plt.syntax_high_magenta },
        WhichKeyGroup = { fg = plt.syntax_blue },
        WhichKeyValue = { fg = plt.editor_text },
    }
end

return M
