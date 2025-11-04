local M = {}

M.url = "https://github.com/supermaven-inc/supermaven-nvim"

---@type aura-ultra.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    SupermavenSuggestion = { fg = c.terminal_black },
  }
  return ret
end

return M
