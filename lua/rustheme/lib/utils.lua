local Utils = {}

---Returns the colors name from vim globals api.
---@return string?
function Utils.get_colors_name()
    return vim.g.colors_name
end

---Alias to `vim.cmd` function.
---@param command string
function Utils.run_cmd(command)
    vim.cmd(command)
end

---Returns the background mode ("light" | "dark") from vim api.
---@return 'dark'|'light'
function Utils.get_background()
    return vim.o.background
end

---Set the background mode ("light" | "dark") using vim api.
---@param mode 'light'|'dark'
function Utils.set_background(mode)
    vim.o.background = mode
end

---Binding to `vim.g.colors_name`.
---@param color_name string
function Utils.set_colors_name(color_name)
    vim.g.colors_name = color_name
end

---Alias for `vim.o.termguicolors`.
---@param enable boolean
function Utils.set_termguicolors(enable)
    vim.o.termguicolors = enable
end

return Utils
