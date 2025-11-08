local M = {}

--- Returns the lsp's groups by a given palette/config.
---@param plt palette.RusthemePalette
---@param cfg config.GlobalFields
---@return table
function M.callback(plt, cfg)
    return {
        ["@variable"] = "Identifier",
        ["@variable.builtin"] = { fg = plt.syntax_orange2 },
        ["@variable.parameter"] = { fg = plt.syntax_blue },
        ["@variable.parameter.builtin"] = "@variable.parameter",
        ["@variable.member"] = "@property",

        ["@constant"] = "Constant",
        ["@constant.builtin"] = "Constant",
        ["@constant.macro"] = "Constant",

        ["@module"] = "Constant",
        ["@module.builtin"] = { fg = plt.syntax_yellow2 },
        ["@label"] = "Label",

        ["@string"] = "String",
        ["@string.documentation"] = "String",
        ["@string.regexp"] = "String",
        ["@string.escape"] = "SpecialChar",
        ["@string.special"] = "String",
        ["@string.special.symbol"] = "String",
        ["@string.special.url"] = "@markup.link.url",
        ["@string.special.path"] = "String",

        ["@character"] = "Character",
        ["@character.special"] = "SpecialChar",

        ["@boolean"] = "Boolean",
        ["@number"] = "Number",
        ["@number.float"] = "Float",

        ["@type"] = "Type",
        ["@type.builtin"] = "@type",
        ["@type.definition"] = "@type",

        ["@attribute"] = {
            fg = plt.syntax_annotation,
            bold = cfg.bolds.annotation,
            italic = cfg.italics.annotation
        },
        ["@attribute.builtin"] = "@attribute",
        ["@property"] = { fg = plt.syntax_blue },

        ["@function"] = "Function",
        ["@function.builtin"] = "Function",
        ["@function.call"] = "@function",
        ["@function.macro"] = "Macro",

        ["@function.method"] = "@function",
        ["@function.method.call"] = "@function.method",

        ["@constructor"] = "@function",
        ["@operator"] = "Operator",

        ["@keyword"] = "Keyword",
        ["@keyword.corotine"] = "Keyword",
        ["@keyword.function"] = "Keyword",
        ["@keyword.operator"] = "Keyword",
        ["@keyword.import"] = "Keyword",
        ["@keyword.type"] = "Keyword",
        ["@keyword.modifier"] = "Structure",
        ["@keyword.repeat"] = "Keyword",
        ["@keyword.return"] = "Keyword",
        ["@keyword.debug"] = "Keyword",
        ["@keyword.exception"] = "Keyword",

        ["@keyword.conditional"] = "Conditional",
        ["@keyword.conditional.ternary"] = { fg = plt.syntax_annotation },

        ["@keyword.directive"] = "Keyword",
        ["@keyword.directive.define"] = "Keyword",

        ["@punctuation.delimiter"] = { fg = plt.editor_text },
        ["@punctuation.bracket"] = { fg = plt.editor_text },
        ["@punctuation.special"] = { fg = plt.syntax_yellow2 },
        ["@punctuation.bracket.php"] = { fg = plt.syntax_yellow2 },

        ["@comment"] = "Comment",
        ["@comment.documentation"] = "@comment",

        ["@comment.error"] = "DiagnosticError",
        ["@comment.warning"] = "DiagnosticWarn",
        ["@comment.hint"] = "DiagnosticHint",
        ["@comment.info"] = "DiagnosticInfo",
        ["@comment.todo"] = { fg = plt.ui_cyan },
        ["@comment.note"] = { fg = plt.ui_blue },

        ["@markup.strong"] = {
            fg = plt.syntax_blue,
            bold = cfg.bolds.markup_strong,
            italic = cfg.italics.markup_strong
        },
        ["@markup.italic"] = {
            fg = plt.syntax_yellow2,
            bold = cfg.bolds.markup_italic,
            italic = cfg.italics.markup_italic
        },
        ["@markup.strikethrough"] = {
            fg = plt.editor_text,
            strikethrough = true
        },
        ["@markup.underline"] = "Underline",

        ["@markup.heading"] = {
            fg = plt.editor_text,
            bold = cfg.bolds.markup_heading,
            italic = cfg.italics.markup_heading
        },
        ["@markup.heading.1.markdown"] = {
            fg = plt.syntax_orange2,
            bold = cfg.bolds.markup_heading,
            italic = cfg.italics.markup_heading,
        },
        ["@markup.heading.2.markdown"] = {
            fg = plt.syntax_yellow2,
            bold = cfg.bolds.markup_heading,
            italic = cfg.italics.markup_heading,
        },
        ["@markup.heading.3.markdown"] = {
            fg = plt.syntax_green2,
            bold = cfg.bolds.markup_heading,
            italic = cfg.italics.markup_heading,
        },
        ["@markup.heading.4.markdown"] = {
            fg = plt.syntax_annotation,
            bold = cfg.bolds.markup_heading,
            italic = cfg.italics.markup_heading,
        },
        ["@markup.heading.5.markdown"] = {
            fg = plt.syntax_blue,
            bold = cfg.bolds.markup_heading,
            italic = cfg.italics.markup_heading,
        },
        ["@markup.heading.6.markdown"] = {
            fg = plt.syntax_high_magenta,
            bold = cfg.bolds.markup_heading,
            italic = cfg.italics.markup_heading,
        },

        ["@markup.quote"] = {
            fg = plt.editor_weak_text,
            bold = cfg.bolds.markup_quote,
            italic = cfg.italics.markup_quote,
        },
        ["@markup.math"] = {
            fg = plt.syntax_green2,
            bold = cfg.bolds.markup_math,
            italic = cfg.italics.markup_math,
        },
        ["@markup.environment"] = { fg = plt.syntax_orange2 },

        ["@markup.link"] = { fg = plt.editor_weak_text },
        ["@markup.link.label"] = "String",
        ["@markup.link.url"] = {
            fg = plt.syntax_blue,
            bold = cfg.bolds.markup_url,
            italic = cfg.italics.markup_url,
            underline = true
        },

        ["@markup.raw"] = { fg = plt.editor_weak_text },
        ["@markup.raw.block"] = { fg = plt.editor_weak_text },

        ["@markup.list"] = "Special",
        ["@markup.list.markdown"] = {
            fg = plt.syntax_orange2,
            bold = cfg.bolds.markdown_list,
            italic = cfg.italics.markdown_list,
        },
        ["@markup.list.unchecked"] = {
            fg = plt.syntax_blue,
            bold = cfg.bolds.markdown_unchecked,
            italic = cfg.italics.markdown_unchecked,
        },
        ["@markup.list.checked"] = {
            fg = plt.syntax_high_magenta,
            bold = cfg.bolds.markdown_checked,
            italic = cfg.italics.markdown_checked,
        },
        ["@diff.plus"] = "DiffAdded",
        ["@diff.minus"] = "DiffDelete",
        ["@diff.delta"] = "DiffChange",

        ["@tag"] = { fg = plt.syntax_orange2 },
        ["@tag.attribute"] = { fg = plt.syntax_yellow2 },
        ["@tag.delimiter"] = { fg = plt.editor_text },

        -- Language Specific ----------------------------------------

        -- cpp
        ["@property.cpp"] = { fg = plt.syntax_yellow2 },

        -- css
        ["@number.css"] = { fg = plt.syntax_yellow2 },
        ["@property.css"] = { fg = plt.syntax_orange2 },
        ["@property.class.css"] = { fg = plt.syntax_orange2 },
        ["@property.id.css"] = { fg = plt.syntax_yellow2 },
        ["@string.plain.css"] = { fg = plt.syntax_green2 },
        ["@type.tag.css"] = { fg = plt.syntax_blue },
        ["@type.css"] = { fg = plt.syntax_green2 },

        -- json
        ["@label.json"] = { fg = plt.syntax_blue },

        -- lua
        ["@constructor.lua"] = { fg = plt.syntax_orange2 },
        ["@variable.lua"] = "@variable",

        -- PHP
        ["@type.qualifier.php"] = "Keyword",
        ["@function.method.php"] = "Function",
        ["@function.method.call.php"] = "Function",

        -- Ruby
        ["@string.special.symbol.ruby"] = { fg = plt.syntax_blue },

        -- rust
        ["@constant.rust"] = "Constant",
        ["@function.macro.rust"] = "Macro",
        ["@module.rust"] = "@module",
        ["@punctuation.special.rust"] = {
            fg = plt.syntax_high_magenta
        },
        ["@type.rust"] = { fg = plt.syntax_green },

        -- toml
        ["@property.toml"] = { fg = plt.syntax_blue },

        -- typescript
        ["@type.qualifier.typescript"] = "Keyword",
        ["@constructor.typescript"] = "@constructor",

        -- TSX (Typescript React)
        ["@constructor.tsx"] = "@constructor",
        ["@tag.attribute.tsx"] = {
            fg = plt.syntax_blue,
            bold = cfg.bolds.tsx_attribute,
            italic = cfg.italics.tsx_attribute,
        },

        -- yaml
        ["@field.yaml"] = { fg = plt.syntax_orange2 },

        -- LEGACY ---------------------------------------------------
        ["@error"] = "Error",
        ["@string.regex"] = "@string.regexp",
        ["@float"] = "@number.float",
        ["@parameter"] = "@variable.parameter",
        ["@field"] = "@variable.member",

        ["@symbol"] = "@string.special.symbol",
        ["@namespace"] = "@module",
        ["@namespace.builtin"] = "@module.builtin",

        ["@text"] = { fg = plt.editor_text },
        ["@text.strong"] = "@markup.strong",
        ["@text.emphasis"] = "@markup.emphasis",
        ["@text.strike"] = "@markup.strikethrough",
        ["@text.underline"] = "@markup.underline",

        ["@text.title"] = "@markup.heading",
        ["@text.title.1.markdown"] = "@markup.heading.1.markdown",
        ["@text.title.2.markdown"] = "@markup.heading.2.markdown",
        ["@text.title.3.markdown"] = "@markup.heading.3.markdown",
        ["@text.title.4.markdown"] = "@markup.heading.4.markdown",
        ["@text.title.5.markdown"] = "@markup.heading.5.markdown",

        ["@text.quote"] = "@markup.quote",
        ["@text.math"] = "@markup.math",
        ["@text.environment"] = "@markup.environment",
        ["@text.environment.name"] = "@markup.environment",

        ["@text.literal"] = "@markup.raw",
        ["@text.uri"] = "@markup.link.url",
        ["@text.reference"] = "@markup.link",

        ["@text.todo"] = "@comment.todo",
        ["@text.note"] = "@comment.hint",
        ["@text.todo.note"] = "@text.note",
        ["@text.warning"] = "@comment.warning",
        ["@text.todo.warning"] = "@text.warning",
        ["@text.danger"] = "@comment.error",
        ["@text.todo.danger"] = "@text.danger",
        ["@text.unchecked"] = "@markup.list.unchecked",
        ["@text.todo.unchecked"] = "@text.unchecked",
        ["@text.checked"] = "@markup.list.checked",
        ["@text.todo.checked"] = "@text.checked",

        ["@text.diff.add"] = "@diff.plus",
        ["@text.diff.delete"] = "@diff.minus",

        ["@method"] = "@function",
        ["@method.call"] = "@function.method",

        ["@keyword.export"] = "@keyword",
        ["@keyword.storage"] = "StorageClass",
        ["@storageclass"] = "@keyword.storageclass",
        ["@conditional"] = "@keyword.conditional",
        ["@conditional.ternary"] = "@keyword.conditional.ternary",

        ["@repeat"] = "@keyword.repeat",
        ["@debug"] = "@keyword.debug",
        ["@include"] = "@keyword.include",
        ["@exception"] = "@keyword.exception",

        ["@preproc"] = "@keyword.directive",
        ["@define"] = "@keyword.directive.define",

        ["@type.qualifier"] = "@type",

        -- semantic tokens
        ["@annotation"] = "@attribute",
        ["@class"] = { fg = plt.syntax_green },
        ["@decorator"] = "@attribute",
        ["@enum"] = { fg = plt.syntax_green },
        ["@enumMember"] = "@constant",
        ["@event"] = { fg = plt.syntax_orange },
        ["@interface"] = "@keyword",
        ["@modifier"] = { fg = plt.syntax_blue },
        ["@regexp"] = { fg = plt.syntax_orange2 },
        ["@struct"] = { fg = plt.syntax_green },
        ["@typeParameter"] = { fg = plt.syntax_green },

        -----------------------
        -- Language Specific --
        -----------------------
        -- markdown
        ["@literal.markdown"] = { fg = plt.editor_weak_text },
        ["@none.markdown"] = { fg = plt.editor_text },
        ["@punctuation.delimiter.markdown"] = "@punctuation.delimiter",
        ["@punctuation.special.markdown"] = "@punctuation.special",
        ["@title.markdown"] = "markup.heading",

        -- PHP
        ["@method.php"] = "@function.method.php",
        ["@method.call.php"] = "@function.method.call.php",

        -- Ruby
        ["@symbol.ruby"] = "@string.special.symbol.ruby",

        -- rust
        ["@namespace.rust"] = "@module.rust",
    }
end

return M
