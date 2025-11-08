local M = {}
local none = "NONE"

--- Returns the syntax's groups by a given palette/config.
---@param plt palette.RusthemePalette
---@param cfg config.GlobalFields
---@return table
function M.callback(plt, cfg)
    return {
        Comment = {
            fg = plt.syntax_comment,
            bg = none,
            bold = cfg.bolds.comment,
            italic = cfg.italics.comment
        },
        Constant = {
            fg = plt.syntax_yellow2,
            bg = none,
            bold = cfg.bolds.const,
            italic = cfg.italics.const
        },
        String = {
            fg = plt.syntax_green2,
            bg = none,
            bold = cfg.bolds.string,
            italic = cfg.italics.string
        },
        Character = {
            fg = plt.syntax_green2,
            bg = none,
            bold = cfg.bolds.char,
            italic = cfg.italics.char,
        },
        Number = { fg = plt.syntax_yellow2, bg = none },
        Boolean = { fg = plt.syntax_yellow2, bg = none },
        Float = { fg = plt.syntax_yellow2, bg = none },
        Identifier = { fg = plt.syntax_blue, bg = none },
        Function = { fg = plt.syntax_yellow, bg = none },
        Statement = { fg = plt.syntax_orange, bg = none },
        Conditional = { fg = plt.syntax_orange, bg = none },
        Repeat = { fg = plt.syntax_orange, bg = none },
        Label = { fg = plt.syntax_annotation, bg = none },
        Operator = { fg = plt.syntax_high_magenta, bg = none },
        Keyword = { fg = plt.syntax_orange, bg = none },
        Exception = { fg = plt.syntax_orange, bg = none },
        PreProc = { fg = plt.syntax_yellow2, bg = none },
        Include = { fg = plt.syntax_annotation, bg = none },
        Define = { fg = plt.syntax_annotation, bg = none },
        Macro = { fg = plt.syntax_annotation, bg = none },
        PreCondit = { fg = plt.syntax_annotation, bg = none },
        Type = { fg = plt.syntax_green, bg = none },
        StorageClass = { fg = plt.syntax_green, bg = none },
        Structure = { fg = plt.syntax_green, bg = none },
        Typedef = { fg = plt.syntax_green, bg = none },
        Special = { fg = plt.syntax_orange2, bg = none },
        SpecialChar = { fg = plt.syntax_orange2, bg = none },
        Tag = { fg = plt.syntax_yellow, bg = none },
        Delimiter = { fg = plt.syntax_yellow, bg = none },
        SpecialComment = { fg = plt.syntax_yellow2, bg = none },
        Debug = { fg = plt.syntax_yellow, bg = none },
        Underlined = {
            fg = plt.syntax_blue,
            bg = none,
            underline = true
        },
        Ignore = { fg = none, bg = none },
        Error = { fg = plt.ui_red, bg = none },
        Todo = { fg = plt.ui_yellow, bg = none },
    }
end

return M
