local M = {}

--- Returns the lsp's groups by a given palette/config.
---@param plt palette.RusthemePalette
---@param cfg config.GlobalFields
---@return table
function M.callback(plt, cfg)
    local _ = cfg
    local err, hint, warn, info, okay
    err = plt.ui_red
    hint = plt.ui_cyan
    warn = plt.ui_yellow
    info = plt.ui_blue
    okay = plt.ui_green
    return {
        DiagnosticError = { fg = err },
        DiagnosticHint = { fg = hint },
        DiagnosticInfo = { fg = info },
        DiagnosticWarn = { fg = warn },
        DiagnosticOk = { fg = okay },
        DiagnosticUnderlineError = { sp = err, undercurl = true },
        DiagnosticUnderlineHint = { sp = hint, undercurl = true },
        DiagnosticUnderlineInfo = { sp = info, undercurl = true },
        DiagnosticUnderlineWarn = { sp = warn, undercurl = true },
        DiagnosticUnderlineOk = { sp = okay, undercurl = true },
        LspCodeLens = { fg = plt.editor_weak_text },
        LspCodeLensSeparator = { fg = plt.editor_weak_text },
        LspReferenceRead = {
            fg = plt.editor_weak_text,
            bg = plt.editor_bg_highlight
        },
        LspReferenceText = "LspReferenceRead",
        LspReferenceWrite = "LspReferenceRead",
        -- LSP Semantic Tokens
        -- Ref: :help lsp-semantics
        ["@lsp.type.boolean"] = "@boolean",
        ["@lsp.type.builtinType"] = "@type.builtin",
        ["@lsp.type.comment"] = "@comment",
        ["@lsp.type.enum"] = "@type",
        ["@lsp.type.enumMember"] = "@constant",
        ["@lsp.type.escapeSequence"] = "@string.escape",
        ["@lsp.type.formatSpecifier"] = "@punctuation.special",
        ["@lsp.type.interface"] = "@interface",
        ["@lsp.type.keyword"] = "@keyword",
        ["@lsp.type.namespace"] = "@namespace",
        ["@lsp.type.number"] = "@number",
        ["@lsp.type.operator"] = "@operator",
        ["@lsp.type.parameter"] = "@parameter",
        ["@lsp.type.property"] = "@property",
        ["@lsp.type.selfKeyword"] = "@variable.builtin",
        ["@lsp.type.typeAlias"] = "@type.definition",
        ["@lsp.type.unresolvedReference"] = "@error",
        ["@lsp.type.variable"] = "@variable",
        ["@lsp.typemod.class.defaultLibrary"] = "@type.builtin",
        ["@lsp.typemod.enum.defaultLibrary"] = "@type.builtin",
        ["@lsp.typemod.enumMember.defaultLibrary"] =
        "@constant.builtin",
        ["@lsp.typemod.function.defaultLibrary"] = "@function.builtin",
        ["@lsp.typemod.function.global"] = "@function.builtin",
        ["@lsp.typemod.keyword.async"] = "@keyword.coroutine",
        ["@lsp.typemod.macro.defaultLibrary"] = "@function.builtin",
        ["@lsp.typemod.method.defaultLibrary"] = "@function.builtin",
        ["@lsp.typemod.method.reference"] = "@function",
        ["@lsp.typemod.method.trait"] = "@function",
        ["@lsp.typemod.operator.injected"] = "@operator",
        ["@lsp.typemod.selfKeyword.defaultLibrary"] = "@keyword",
        ["@lsp.typemod.string.injected"] = "@string",
        ["@lsp.typemod.type.defaultLibrary"] = "@type.builtin",
        ["@lsp.typemod.variable.defaultLibrary"] = "@variable.builtin",
        ["@lsp.typemod.variable.injected"] = "@variable",
        ["@lsp.typemod.variable.readonly"] = "@constant",

        -- rust
        ["@lsp.typemod.function.defaultLibrary.rust"] = {
            fg = plt.editor_text
        },
        ["@lsp.typemod.generic.attribute.rust"] = {
            fg = plt.syntax_green2
        },
        ["@lsp.typemod.macro.defaultLibrary.rust"] = "RustMacro",
        ["@lsp.typemod.decorator.library.rust"] = "RustDecoratorFunc",
        ["@lsp.type.macro.rust"] = "RustMacro",
        ["@lsp.type.function.rust"] = { fg = plt.syntax_yellow },
        ["@lsp.type.namespace.rust"] = "@namespace.rust",
        ["@lsp.typemod.variable.callable.rust"] = "Function",
        ["@function.call.rust"] = "Function"
    }
end

return M
