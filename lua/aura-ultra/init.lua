local config = require("aura-ultra.config")

local M = {}
---@type {light?: string, dark?: string}
M.styles = {}

---@param opts? aura-ultra.Config
function M.load(opts)
  opts = require("aura-ultra.config").extend(opts)
  if vim.o.background ~= "dark" then
    vim.o.background = "dark"
  end
  return require("aura-ultra.theme").setup(opts)
end

M.setup = config.setup

return M
