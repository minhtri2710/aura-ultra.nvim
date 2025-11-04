local M = {}

M.url = "https://github.com/nvimdev/dashboard-nvim"

---@type aura-ultra.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    -- General
    DashboardHeader           = { fg = c.green },
    DashboardFooter           = { fg = c.green },
    -- Hyper theme
    DashboardProjectTitle     = { fg = c.cyan },
    DashboardProjectTitleIcon = { fg = c.orange },
    DashboardProjectIcon      = { fg = c.yellow },
    DashboardMruTitle         = { fg = c.cyan },
    DashboardMruIcon          = { fg = c.purple },
    DashboardFiles            = { fg = c.purple },
    DashboardShortCutIcon     = { fg = c.magenta },
    -- Doome theme
    DashboardDesc             = { fg = c.cyan },
    DashboardKey              = { fg = c.orange },
    DashboardIcon             = { fg = c.cyan },
    DashboardShortCut         = { fg = c.cyan },
  }
end

return M
