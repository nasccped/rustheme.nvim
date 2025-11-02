local M = {}

local none = "NONE"

--- Returns the base groups by a given palette/config.
---@param plt palette.RusthemePalette
---@param cfg config.RusthemeConfig
---@return table
function M.groups(plt, cfg)
    local bold = plt.bold and cfg.globals.bold or false
    local italic = plt.italic and cfg.globals.italic or false
    local undercurl = plt.undercurl and cfg.globals.undercurl
        or false
    local bg = cfg.globals.transparent and none
        or plt.editor.background
    local weak_bg = cfg.globals.transparent and none
        or plt.editor.weak_background
    local float_bg = cfg.globals.float_transparent and none
        or plt.editor.weak_background
    local invert_title = cfg.globals.invert_title
    local cur_line = cfg.globals.transparent and none
        or plt.editor.contrast_color
    return {
        --- Normal --------------------------------------------------
        Normal = { fg = plt.editor.foreground, bg = bg },
        NormalNC = "Normal",

        --- Float ---------------------------------------------------
        FloatTitle = {
            fg = invert_title and float_bg
                or plt.editor.strong_contrast_color,
            bg = invert_title and plt.editor.strong_contrast_color
                or float_bg,
            bold = bold
        },
        FloatBorder = {
            fg = plt.editor.strong_background,
            bg = float_bg,
        },
        NormalFloat = {
            fg = plt.editor.foreground,
            bg = float_bg,
        },

        --- Text ----------------------------------------------------
        Title = "FloatTitle",
        Italic = { italic = italic },
        Bold = { bold = bold },
        Conceal = { fg = plt.editor.contrast_color, bg = none },
        SpecialKey = { fg = plt.editor.foreground, bg = none },

        --- Tab -----------------------------------------------------
        TabLine = { fg = plt.editor.weak_foreground, bg = weak_bg },
        TabLineSel = {
            fg = plt.editor.foreground,
            bg = bg,
            bold = bold,
            italic = italic
        },
        TabLineFill = { fg = none, bg = weak_bg },

        --- Winbar --------------------------------------------------
        WinBar = { fg = plt.editor.foreground, bg = none },
        WinBarNC = {
            fg = plt.editor.weak_foreground,
            bg = bg,
        },

        --- Status --------------------------------------------------
        StatusLine = { fg = plt.editor.foreground, bg = weak_bg },
        StatusLineNC = { fg = plt.editor.foreground, bg = none },
        StatusInactive = { fg = plt.editor.foreground, bg = bg },
        StatusNormal = {
            fg = plt.editor.background,
            bg = plt.editor.cyan
        },
        StatusInsert = {
            fg = plt.editor.background,
            bg = plt.editor.green
        },
        StatusVisual = {
            fg = plt.editor.background,
            bg = plt.editor.magenta
        },
        StatusReplace = {
            fg = plt.editor.background,
            bg = plt.editor.red
        },
        StatusCommand = {
            fg = plt.editor.background,
            bg = plt.editor.yellow
        },
        StatusTerminal = "StatusInsert",

        --- UI ------------------------------------------------------
        Cursor = {
            fg = plt.editor.background,
            bg = plt.editor.strong_background
        },
        CursorIM = "Cursor",
        lCursor = "Cursor",
        CursorLineNr = { fg = plt.editor.strong_contrast_color, bg = none },
        LineNr = { fg = plt.editor.strong_background, bg = none },
        WinSeparator = {
            fg = plt.editor.weak_background,
            bg = bg,
            bold = bold,
        },
        VertSplit = {
            fg = plt.editor.weak_background,
            bg = bg,
        },
        Folded = { fg = plt.editor.foreground, bg = weak_bg },
        FoldColumn = { fg = plt.editor.foreground, bg = none },
        NonText = { fg = plt.editor.foreground, bg = none },
        EndOfBuffer = { fg = plt.editor.foreground, bg = none },
        SignColumn = { fg = none, bg = none },

        --- Diff --------------------
        Added = { fg = plt.editor.green },
        Removed = { fg = plt.editor.red },
        Changed = { fg = plt.editor.yellow },
        DiffAdded = { fg = plt.editor.green },    -- NOTE: DEPRECATED IN v0.10
        DiffRemoved = { fg = plt.editor.red },    -- NOTE: DEPRECATED IN v0.10
        DiffChanged = { fg = plt.editor.yellow }, -- NOTE: DEPRECATED IN v0.10
        DiffAdd = { bg = plt.editor.weak_green },
        DiffChange = { bg = plt.editor.weak_yellow },
        DiffDelete = { bg = plt.editor.weak_red },
        DiffText = { bg = plt.editor.weak_yellow },
        DiffOldFile = { fg = plt.editor.yellow },
        DiffNewFile = { fg = plt.editor.green },
        DiffFile = { fg = plt.editor.cyan },
        DiffLine = { fg = plt.editor.foreground },
        DiffIndexLine = { fg = plt.editor.cyan },

        --- Diagnostics ---------------------------------------------
        ErrorMsg = { fg = plt.editor.red, bg = none },
        WarningMsg = { fg = plt.editor.yellow, bg = none },
        Question = { fg = plt.editor.magenta, bg = none },

        --- Menu ----------------------------------------------------
        Pmenu = { fg = plt.editor.foreground, bg = weak_bg },
        -- TODO: move `menu_selection` -> `selection`
        PmenuSel = {
            bg = plt.editor.contrast_color,
            bold = bold,
            blend = 0
        },
        PmenuSbar = { fg = none, bg = plt.editor.background },
        PmenuThumb = {
            fg = none,
            bg = plt.editor.background,
            blend = 0
        },
        WildMenu = {
            fg = plt.editor.strong_background,
            bg = plt.editor.contrast_color
        },

        --- Search & Select -----------------------------------------
        Search = { fg = none, bg = plt.editor.weak_yellow },
        IncSearch = { fg = bg, bg = plt.editor.magenta },
        Substitute = { fg = bg, bg = plt.editor.cyan, bold = bold },
        CurSearch = "IncSearch",
        Visual = { fg = none, bg = plt.editor.contrast_color },
        VisualNOS = { fg = plt.editor.contrast_color, bg = none },

        --- Highlights ----------------------------------------------
        CursorColumn = { fg = none, bg = plt.editor.contrast_color },
        ColorColumn = { fg = none, bg = plt.editor.contrast_color }, -- NOTE: Find better color
        CursorLine = { fg = none, bg = cur_line },
        MatchParen = { fg = plt.editor.yellow, bg = none, bold = bold },

        --- Spell ---------------------------------------------------
        SpellBad = { sp = plt.editor.red, undercurl = undercurl },
        SpellCap = { sp = plt.editor.yellow, undercurl = undercurl },
        SpellLocal = { sp = plt.editor.cyan, undercurl = undercurl },
        SpellRare = { sp = plt.editor.green, undercurl = undercurl },

        --- Other ---------------------------------------------------
        Terminal = { fg = plt.editor.foreground, bg = weak_bg },
        Directory = { fg = plt.editor.cyan, bg = none },
        QuickFixLine = { fg = plt.editor.contrast_color, bg = plt.editor.yellow },
    }
end

return M
