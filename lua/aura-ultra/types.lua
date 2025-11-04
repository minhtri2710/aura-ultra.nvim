---@class aura-ultra.Highlight: vim.api.keyset.highlight
---@field style? vim.api.keyset.highlight

---@alias aura-ultra.Highlights table<string,aura-ultra.Highlight|string>

---@alias aura-ultra.HighlightsFn fun(colors: ColorScheme, opts:aura-ultra.Config):aura-ultra.Highlights

---@class aura-ultra.Cache
---@field groups aura-ultra.Highlights
---@field inputs table
