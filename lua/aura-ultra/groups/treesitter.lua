local Util = require("aura-ultra.util")

local M = {}

---@type aura-ultra.HighlightsFn
function M.get(c, opts)
  local ret = {
    ["@none"] = {},
    ["@error"] = { fg = c.red1, bold = true, underline = true },
    ["@namespace"] = { fg = c.purple },
    ["@module"] = { fg = c.purple },
    ["@comment"] = { fg = c.fg_dark },
    ["@comment.error"] = { fg = c.red1 },
    ["@comment.hint"] = { fg = c.teal },
    ["@comment.info"] = { fg = c.blue2 },
    ["@comment.warning"] = { fg = c.orange },
    ["@constant"] = { fg = c.fg },
    ["@constant.builtin"] = { fg = c.purple },
    ["@constant.macro"] = { fg = c.purple },
    ["@string"] = { fg = c.green },
    ["@string.regexp"] = { fg = c.green, bold = true },
    ["@string.escape"] = { fg = c.green, bold = true },
    ["@string.special.url"] = { fg = c.blue, underline = true },
    ["@character"] = { fg = c.green },
    ["@number"] = { fg = c.green },
    ["@boolean"] = { fg = c.green },
    ["@float"] = { fg = c.green },
    ["@function"] = { fg = c.purple, style = opts.styles.functions },
    ["@function.builtin"] = { fg = c.orange },
    ["@function.macro"] = { fg = c.orange },
    ["@method"] = { fg = c.orange, bold = true },
    ["@constructor"] = { fg = c.blue },
    ["@parameter"] = { fg = c.fg },
    ["@parameter.reference"] = { fg = c.purple },
    ["@variable"] = { fg = c.fg, style = opts.styles.variables },
    ["@variable.builtin"] = { fg = c.purple },
    ["@field"] = { fg = c.magenta },
    ["@property"] = { fg = c.purple },
    ["@label"] = { fg = c.purple },
    ["@operator"] = { fg = c.purple },
    ["@keyword"] = { fg = c.magenta, style = opts.styles.keywords },
    ["@keyword.function"] = { fg = c.orange },
    ["@keyword.import"] = { fg = c.purple, style = opts.styles.keywords },
    ["@keyword.const"] = { fg = c.purple, bold = true },
    ["@keyword.storage"] = { fg = c.fg, bold = true },
    ["@keyword.operator"] = { fg = c.purple },
    ["@conditional"] = { fg = c.purple, style = opts.styles.keywords },
    ["@repeat"] = { fg = c.purple, style = opts.styles.keywords },
    ["@exception"] = { fg = c.magenta, style = opts.styles.keywords },
    ["@type"] = { fg = c.blue },
    ["@type.builtin"] = { fg = c.purple },
    ["@include"] = { fg = c.purple },
    ["@annotation"] = { fg = c.purple },
    ["@text"] = {},
    ["@text.strong"] = { bold = true },
    ["@text.emphasis"] = { italic = true },
    ["@text.underline"] = { underline = true },
    ["@text.strike"] = { strikethrough = true },
    ["@comment.todo"] = { fg = c.blue },
    ["@tag"] = { fg = c.purple },
    ["@tag.builtin"] = { fg = c.purple },
    ["@tag.html"] = { fg = c.purple },
    ["@tag.attribute"] = { fg = c.magenta },
    ["@tag.delimiter"] = { fg = c.fg },
    ["@punctuation.delimiter"] = { fg = c.magenta },
    ["@punctuation.bracket"] = { fg = c.fg },
    ["@punctuation.special"] = { fg = c.purple },
    ["@markup.heading"] = { fg = c.green, bold = true },
  }

  for i, color in ipairs(c.rainbow) do
    ret["@markup.heading." .. i .. ".markdown"] = { fg = color, bold = true, bg = Util.blend_bg(color, 0.1) }
  end

  return ret
end

return M
