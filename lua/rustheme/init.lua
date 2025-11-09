local conf = require("rustheme.config")
local vimenv = require("rustheme.lib.vimenv")
local vari = require("rustheme.lib.variant")
local palette = require("rustheme.palettes")
local groups = require("rustheme.groups")
local M = { config = conf.default() }

--- Loads the colorscheme based on an optional theme variant.
---@param variant? config.AnyVariant
function M.load(variant)
    if vimenv.get_colors_name() then
        vimenv.cmd("hi clear")
    end
    if vimenv.fn_exists("syntax_on") then
        vimenv.cmd("syntax reset")
    end
    vari.setup(variant, M.config.default_variant, M.config.bg)
    local bg = vari.get_bg()
    variant = vari.get_variant()
    local colors_name = string.format(
        "rustheme %s",
        string.gsub(variant, "-", " ")
    )
    vimenv.set_colors_name(colors_name)
    local cfg = vim.deepcopy(M.config.variant_config[variant])
    cfg = vim.tbl_deep_extend("force", cfg or {}, M.config.globals)
    local plt = vim.tbl_deep_extend(
        "force",
        palette.from_variant(variant),
        M.config.palette_override or {}
    )
    vimenv.set_termguicolors(true)
    local grps = vim.tbl_deep_extend(
        "force",
        groups.get_groups(plt, cfg or {}),
        M.config.groups_override or {}
    )
    vimenv.set_background(bg)
    vimenv.set_hl(grps)
end

--- Set a new config table to be used by the theme.
---@param cfg config.RusthemeConfig
function M.setup(cfg)
    M.config = vim.tbl_deep_extend(
        "force",
        M.config,
        cfg or {}
    )
end

return M
