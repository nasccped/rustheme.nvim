---@class config.RusthemeConfig
---@field default_variant? config.DefaultVariant
---@field globals? config.GlobalFields
---@field variant_config? config.VariantConfig
---@field palette_override? table Color palette to extend/override the original one.
---@field groups_override? table Group mapping to override the generated one.
---@field bg? "light"|"dark" The current background being used.

---@class config.DefaultVariant Maps the rustheme variant based on a background mode.
---@field light? config.LightVariant Default variant for light background.
---@field dark? config.DarkVariant Default variant for dark background.

---@class config.VariantConfig Same as `config.GlobalFields`, but applied only to a specific variant.
---@field ["core-dark"]? config.GlobalFields Global fields applied to "core-dark" variant.
---@field ["core-light"]? config.GlobalFields Global fields applied to "core-light" variant.
---@field ["mangrove-dark"]? config.GlobalFields Global fields applied to "mangrove-dark" variant.
---@field ["mangrove-light"]? config.GlobalFields Global fields applied to "mangrove-light" variant.

---@alias config.AnyVariant config.LightVariant|config.DarkVariant Alias for variant option.
---@alias config.LightVariant "core-light"|"mangrove-light" Alias for light variants.
---@alias config.DarkVariant "core-dark"|"mangrove-dark" Alias for dark variants.

---@class config.GlobalFields Config fields that affect all theme variants.
---@field transparents? config.Transparents
---@field bolds? config.TokenTrigger
---@field italics? config.TokenTrigger
---@field invert_title? boolean Invert title colors (bg turns into fg and vice-versa).

---@class config.Transparents Config for transparent bgs.
---@field background? boolean
---@field float_background? boolean

---@class config.TokenTrigger Maps a neovim token to a boolean. Should be used by the `bolds` and `italics` fields.
---@field title? boolean
---@field keyword? boolean
---@field comment? boolean
---@field separators? boolean Window separators.
---@field tab_line_sel? boolean Current selected tab line.
---@field match_paren? boolean Matching parents () / [] / {}.
---@field substitute? boolean Substitute text when running `:s/[OLD]/[NEW]/[OPTIONS]`.
---@field pmenu_selection? boolean Current Pop-up menu selection.
