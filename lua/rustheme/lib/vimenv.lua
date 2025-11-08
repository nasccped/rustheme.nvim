local cmd = vim.cmd
local o = vim.o
local g = vim.g
local fn = vim.fn
local hl = vim.api.nvim_set_hl
local M = {}

--- Alias to `vim.cmd` function.
---@param command string
function M.cmd(command)
    cmd(command)
end

--- Returns the background mode ("light"|"dark") from vim api.
---@return 'dark'|'light'
function M.get_background()
    return o.background
end

--- Set the background mode ("light"|"dark") using vim api.
---@param mode 'light'|'dark'
function M.set_background(mode)
    o.background = mode
end

--- Returns the colors name from vim globals.
---@return string?
function M.get_colors_name()
    return g.colors_name
end

--- Alias to `vim.g.colors_name`.
---@param color_name string
function M.set_colors_name(color_name)
    g.colors_name = color_name
end

function M.fn_exists(val)
    return fn.exists(val)
end

--- Alias for `vim.o.termguicolors`.
---@param enable boolean
function M.set_termguicolors(enable)
    o.termguicolors = enable
end

--- Sets the highlights for each groups. The map type can be string to
--- table (default behavior) or string to string (using
--- `{ link = value }`).
---@param groups table
function M.set_group_hl(groups)
    for k, v in pairs(groups) do
        hl(0, k, type(v) == "string" and { link = v } or v)
    end
end

return M
