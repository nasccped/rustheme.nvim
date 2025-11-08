local M = {}

local color = require("rustheme.lib.color")
local none = "NONE"

--- Returns the base groups by a given palette/config.
---@param plt palette.RusthemePalette
---@param cfg config.GlobalFields
---@return table
function M.callback(plt, cfg)
    local transp_bg = cfg.transparents.background
    local transp_float_bg = cfg.transparents.float_background
    local inv_title = cfg.invert_title
    return {
        --- Normal --------------------------------------------------
        Normal = {
            fg = plt.editor_text,
            bg = transp_bg and none or plt.editor_bg
        },
        NormalNC = "Normal",

        --- Float ---------------------------------------------------
        FloatTitle = inv_title and {
            fg = plt.editor_bg,
            bg = plt.editor_contrast,
            bold = cfg.bolds.title,
            italic = cfg.italics.title
        } or {
            fg = plt.editor_contrast,
            bg = transp_float_bg and none or plt.editor_bg,
            bold = cfg.bolds.title,
            italic = cfg.italics.title
        },
        FloatBorder = {
            fg = plt.editor_bg_highlight2,
            bg = transp_float_bg and none or plt.editor_bg
        },
        NormalFloat = {
            fg = plt.editor_text,
            bg = transp_float_bg and none or plt.editor_bg
        },

        --- Text ----------------------------------------------------
        Title = { fg = plt.editor_contrast, bg = none },
        Italic = { italic = true },
        Bold = { bold = true },
        Conceal = { fg = plt.editor_weak_text, bg = none },
        SpecialKey = { fg = plt.editor_text, bg = none },

        --- Tab -----------------------------------------------------
        TabLine = {
            fg = plt.editor_weak_text,
            bg = plt.editor_bg_darker,
        },
        TabLineSel = {
            fg = plt.editor_weak_text,
            bg = plt.editor_bg,
            bold = cfg.bolds.tab_line_sel,
            italic = cfg.italics.tab_line_sel,
        },
        TabLineFill = {
            fg = none,
            bg = transp_bg and none or plt.editor_bg_darker
        },

        --- Winbar --------------------------------------------------
        WinBar = { fg = plt.editor_weak_text, bg = none },
        WinBarNC = "WinBar",

        --- Status --------------------------------------------------
        StatusLine = {
            fg = plt.editor_weak_text,
            bg = transp_bg and none or plt.editor_bg_darker
        },
        StatusLineNC = "StatusLine",
        StatusInactive = "StatusLine",
        StatusNormal = {
            fg = plt.editor_bg,
            bg = plt.ui_blue
        },
        StatusInsert = {
            fg = plt.editor_bg,
            bg = plt.ui_green
        },
        StatusVisual = {
            fg = plt.editor_bg,
            bg = plt.ui_magenta
        },
        StatusReplace = {
            fg = plt.editor_bg,
            bg = plt.ui_magenta
        },
        StatusCommand = {
            fg = plt.editor_bg,
            bg = plt.ui_yellow
        },
        StatusTerminal = "StatusInsert",

        --- UI ------------------------------------------------------
        Cursor = {
            fg = none,
            bg = "#ff0000" -- wth this field does???
        },
        CursorIM = "Cursor",
        lCursor = "Cursor",
        CursorLineNr = { fg = plt.editor_contrast, bg = none },
        LineNr = { fg = plt.editor_bg_highlight2, bg = none },
        WinSeparator = {
            fg = plt.editor_bg_darker,
            bg = transp_bg and none or plt.editor_bg,
            bold = cfg.bolds.separators,
        },
        VertSplit = "WinSeparator",
        Folded = {
            fg = color.blend(
                plt.editor_text,
                plt.editor_bg,
                75
            ),
            bg = color.blend(
                plt.editor_bg_highlight,
                plt.editor_selection,
                20
            )
        },
        FoldColumn = { fg = plt.editor_text, bg = none },
        NonText = { fg = none, bg = none },
        EndOfBuffer = "NonText",
        SignColumn = { fg = none, bg = none },

        --- Diff ----------------------------------------------------
        Added = {
            fg = color.luminosity(
                color.blend(plt.ui_green, plt.editor_bg, 25),
                10
            )
        },
        Removed = {
            fg = color.luminosity(
                color.blend(plt.ui_red, plt.editor_bg, 25),
                10
            )
        },
        Changed = {
            fg = color.luminosity(
                color.blend(plt.ui_yellow, plt.editor_bg, 15),
                10
            )
        },
        -- DiffAdded = { fg = map.diff.added },     -- NOTE: DEPRECATED IN v0.10
        -- DiffRemoved = { fg = map.diff.removed }, -- NOTE: DEPRECATED IN v0.10
        -- DiffChanged = { fg = map.diff.changed }, -- NOTE: DEPRECATED IN v0.10
        DiffAdd = {
            bg = color.blend(plt.ui_green, plt.editor_bg, 80)
        },
        DiffChange = {
            bg = color.blend(plt.ui_yellow, plt.editor_bg, 80)
        },
        DiffDelete = {
            bg = color.blend(plt.ui_red, plt.editor_bg, 80)
        },
        DiffText = {
            bg = color.blend(plt.ui_yellow, plt.editor_bg, 80)
        },
        DiffOldFile = { fg = plt.ui_yellow },
        DiffNewFile = { fg = plt.ui_green },
        DiffFile = { fg = plt.ui_blue },
        DiffLine = { fg = plt.editor_text },
        DiffIndexLine = { fg = plt.ui_cyan },

        --- Diagnostics ---------------------------------------------
        ErrorMsg = {
            fg = color.luminosity(plt.ui_red, 20), bg = none
        },
        WarningMsg = {
            fg = color.luminosity(plt.ui_yellow, 20),
            bg = none
        },
        Question = {
            fg = color.luminosity(plt.ui_magenta, 20),
            bg = none
        },

        --- Menu ----------------------------------------------------
        Pmenu = {
            fg = plt.editor_weak_text,
            bg = transp_float_bg and none or plt.editor_bg_darker
        },
        PmenuSel = {
            fg = plt.editor_text,
            bg = plt.editor_selection,
            bold = cfg.bolds.pmenu_selection
        },
        PmenuSbar = {
            fg = none,
            bg = plt.editor_bg_highlight2
        },
        PmenuThumb = {
            fg = none,
            bg = plt.editor_bg_highlight2,
        },
        WildMenu = {
            fg = plt.editor_bg,
            bg = plt.editor_contrast
        },

        --- Search & Select -----------------------------------------
        Search = { fg = none, bg = plt.editor_bg_highlight2 },
        IncSearch = { fg = plt.editor_bg, bg = plt.editor_contrast },
        Substitute = {
            fg = none,
            bg = plt.editor_selection,
            bold = cfg.bolds.substitute,
            italic = cfg.italics.substitute,
        },
        CurSearch = "IncSearch",
        Visual = { fg = none, bg = plt.editor_selection },
        VisualNOS = "Visual",

        --- Highlights ----------------------------------------------
        CursorColumn = {
            fg = none,
            bg = plt.editor_bg_highlight2
        },
        ColorColumn = "CursorColumn",
        CursorLine = { fg = none, bg = plt.editor_bg_highlight },
        MatchParen = {
            fg = none,
            bg = color.blend(plt.ui_yellow, plt.editor_bg, 70),
            bold = cfg.bolds.match_paren,
        },

        --- Spell ---------------------------------------------------
        SpellBad = { sp = plt.ui_red, undercurl = true },
        SpellCap = { sp = plt.ui_yellow, undercurl = true },
        SpellLocal = {
            sp = plt.ui_blue,
            undercurl = true
        },
        SpellRare = {
            sp = plt.ui_green,
            undercurl = true
        },

        --- Other ---------------------------------------------------
        Terminal = {
            fg = plt.editor_text,
            bg = transp_float_bg and none or plt.editor_bg
        },
        Directory = { fg = plt.syntax_blue, bg = none },
        QuickFixLine = {
            fg = plt.editor_bg,
            bg = plt.editor_contrast
        },
    }
end

return M
