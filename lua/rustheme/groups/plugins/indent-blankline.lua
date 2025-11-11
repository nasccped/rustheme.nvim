local color = require("rustheme.lib.color")
local M = {}

---@param plt palette.RusthemePalette
---@param cfg config.GlobalFields
---@return table
function M.callback(plt, cfg)
    local _ = cfg
    return {
        IndentBlanklineChar        = {
            fg = plt.editor_bg_highlight2,
            nocombine = true
        },
        IndentBlanklineContextChar = {
            fg = color.blend(plt.editor_contrast, plt.editor_bg, 10),
            nocombine = true
        },
        IblIndent                  = {
            fg = plt.editor_bg_highlight2,
            nocombine = true
        },
        IblWhitespace              = {
            fg = plt.editor_bg_darker,
            nocombine = true
        },
        IblScope                   = {
            fg = color.blend(plt.editor_contrast, plt.editor_bg, 10),
            nocombine = true
        },
    }
end

return M
