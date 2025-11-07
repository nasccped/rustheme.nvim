---@class config.RusthemeConfig
---@field default_variant? config.DefaultVariant
---@field globals? config.GlobalsFields
---@field _current_bg? "light"|"dark" The current background being used.
---@field _variant? config.Variant The theme variant being used.

---@class config.DefaultVariant Maps the rustheme variant based on a background mode.
---@field light? config.Variant Default variant for light background.
---@field dark? config.Variant Default variant for dark background.

---@alias config.Variant "core-dark"|"core-light"|"mangrove-dark"|"mangrove-light" Alias for variant option.

---@class config.GlobalsFields Config fields that affect all theme variants.
---@field bolds? config.TokenTrigger
---@field italics? config.TokenTrigger

---@class config.TokenTrigger Maps a neovim token to a boolean. Should be used by the `bolds` and `italics` fields.
---@field title? boolean
---@field keyword? boolean
---@field comment? boolean
