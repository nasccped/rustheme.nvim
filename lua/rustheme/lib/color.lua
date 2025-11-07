local M = {}

---@class lib.color.RGBTable
---@field r? number represents red value (0 - 255).
---@field g? number represents green value (0 - 255).
---@field b? number represents blue value (0 - 255).
local RGBTable = {
    r = nil,
    g = nil,
    b = nil
}

RGBTable.__index = RGBTable

--- Creates a new RGBTable from a string value.
---@param value string
---@return lib.color.RGBTable
function RGBTable:new(value)
    value = string.gsub(value, "#", "")
    if string.len(value) ~= 6 then
        error(
            "RGBTable PANIC: string input should have len == 6 (hex repr.)"
        )
    end
    local rgb = { r = nil, g = nil, b = nil }
    local temp
    for i = 1, #rgb do
        temp = value.sub((i * 2) - 1, i * 2)
        rgb[i] = tonumber(temp, 16)
    end
    return setmetatable(rgb, RGBTable)
end

--- Clamps the RGBTable inner values + returns itself.
---@return lib.color.RGBTable
function RGBTable:clamp()
    for k, v in ipairs(self) do
        self[k] = math.max(0, math.min(255, v))
    end
    return self
end

--- Rounds RGBTable inner values + returns itself.
---@return lib.color.RGBTable
function RGBTable:round()
    for k, v in ipairs(self) do
        self[k] = math.floor(v + 0.5)
    end
    return self
end

--- Converts a `RGBTable` to a hex repr. (string). Can raise error if
--- any invalid value (nil or not in 0 - 255 range) is present.
---@return string
function RGBTable:to_hex()
    for k, v in pairs(self) do
        if not v or type(v) ~= "number" or v < 0 or v > 255 then
            error("RGBTable PANIC: invalid integer value (" .. v .. ")")
        end
        self[k] = string.format("%02X", v)
    end
    local r, g, b = table.unpack(self)
    return string.format("#%s%s%s", r, g, b)
end

--- Increases RGBTable luminosity by a given amount. There's no amount
--- value check since it's handled by the public functions. Returns
--- itself at the end.
---@param amount number
---@return lib.color.RGBTable
function RGBTable:luminosity(amount)
    if amount == 0 then
        return self
    end
    local diffs = vim.deepcopy(self)
    if amount > 0 then
        for k, v in pairs(diffs) do
            diffs[k] = 255 - v
        end
    end
    for i = 1, #self do
        self[i] = self[i] + (diffs[i] / 100 * amount)
    end
    return self
end

--- (In/De)crease color luminosity of a color hex string by a given
--- ammount. The amount is percentage based, so the range is `-100`
--- <=> `+100`.
---@param color_hex string
---@param amount number
---@return string
function M.luminosity(color_hex, amount)
    -- if invalid amount value, panic.
    if amount > 100 or amount < -100 then
        error(
            "color PANIC: increasing luminosity with an invalid amount (" ..
            amount .. ")")
    end
    local tbl = RGBTable:new(color_hex)
    return tbl:luminosity(amount):round():clamp():to_hex()
end

return M
