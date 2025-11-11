local Util = require("aura-ultra.util")
local base = {
  black = "#15141b",
  gray = "#6d6d6d",
  white = "#edecee",
  purple = "#a277ff",
  purple_faded = "#3d375e",
  green = "#61ffca",
  orange = "#ffca85",
  red = "#ff6767",
  pink = "#f694ff",
  blue = "#82e2ff",
  bg = "#2a1f3d",
  bg_dark = "#23182f",
  bg_dark1 = "#1b1426",
  fg_dark = "#c8bff2",
  fg_gutter = "#3b2f4f",
  dark3 = "#5a4d7a",
  dark5 = "#7a6f9b",
  comment = "#6e5f8f",
  terminal_black = "#4e3e63",
}

local function lighten(hex, amount)
  return Util.blend("#ffffff", amount or 0.2, hex)
end

local function darken(hex, amount)
  return Util.blend("#000000", amount or 0.2, hex)
end

local function mix(foreground, amount, background)
  return Util.blend(foreground, amount, background)
end

local function create_palette()
  ---@class Palette
  local colors = {
    none = "NONE",
    bg = base.bg,
    bg_dark = base.bg_dark,
    bg_dark1 = base.bg_dark1,
    bg_float = darken(base.black, 0.18),
    bg_highlight = mix(base.purple_faded, 0.3, base.black),
    bg_popup = darken(base.black, 0.18),
    bg_search = mix(base.blue, 0.25, base.black),
    bg_sidebar = darken(base.black, 0.2),
    bg_statusline = darken(base.black, 0.2),
    bg_visual = mix(base.purple, 0.25, base.black),
    blue = base.blue,
    blue0 = mix(base.blue, 0.22, base.black),
    blue1 = lighten(base.blue, 0.28),
    blue2 = lighten(base.blue, 0.18),
    blue5 = darken(base.blue, 0.35),
    blue6 = darken(base.blue, 0.45),
    blue7 = mix(base.blue, 0.4, base.gray),
    border = mix(base.purple_faded, 0.35, base.black),
    border_highlight = mix(base.purple, 0.4, base.black),
    comment = base.comment,
    cyan = mix(base.blue, 0.5, base.green),
    dark3 = base.dark3,
    dark5 = base.dark5,
    diff = {
      add = mix(base.green, 0.2, base.black),
      change = mix(base.blue, 0.2, base.black),
      delete = mix(base.red, 0.2, base.black),
      text = mix(base.blue, 0.45, base.black),
    },
    error = lighten(base.red, 0.25),
    fg = base.white,
    fg_dark = base.fg_dark,
    fg_float = base.white,
    fg_gutter = base.fg_gutter,
    fg_sidebar = mix(base.white, 0.3, base.gray),
    git = {
      add = mix(base.green, 0.42, base.black),
      change = mix(base.blue, 0.42, base.black),
      delete = mix(base.red, 0.42, base.black),
      ignore = mix(base.gray, 0.42, base.black),
    },
    green = base.green,
    green1 = lighten(base.green, 0.18),
    green2 = lighten(base.green, 0.32),
    hint = lighten(base.green, 0.42),
    info = lighten(base.blue, 0.35),
    magenta = base.pink,
    magenta2 = mix(base.pink, 0.45, base.purple),
    orange = base.orange,
    purple = base.purple,
    rainbow = {
      base.blue,
      lighten(base.orange, 0.15),
      base.green,
      mix(base.green, 0.5, base.blue),
      base.pink,
      base.purple,
      mix(base.orange, 0.55, base.red),
      base.red,
    },
    red = base.red,
    red1 = darken(base.red, 0.2),
    teal = mix(base.green, 0.5, base.blue),
    terminal_black = base.terminal_black,
    todo = base.blue,
    warning = lighten(base.orange, 0.25),
    yellow = lighten(base.orange, 0.18),
  }

  colors.black = darken(base.black, 0.5)

  colors.terminal = {
    black = colors.black,
    black_bright = mix(colors.black, 0.4, colors.fg),
    red = colors.red,
    red_bright = Util.brighten(colors.red),
    green = colors.green,
    green_bright = Util.brighten(colors.green),
    yellow = colors.yellow,
    yellow_bright = Util.brighten(colors.yellow),
    blue = colors.blue,
    blue_bright = Util.brighten(colors.blue),
    magenta = colors.magenta,
    magenta_bright = Util.brighten(colors.magenta),
    purple = colors.purple,
    purple_bright = Util.brighten(colors.purple),
    cyan = colors.cyan,
    cyan_bright = Util.brighten(colors.cyan),
    white = colors.fg_dark,
    white_bright = colors.fg,
    orange = colors.orange,
    orange_bright = Util.brighten(colors.orange),
  }

  return colors
end

local M = {}

---@param opts? aura-ultra.Config
function M.setup(opts)
  opts = require("aura-ultra.config").extend(opts)

  if opts.style and opts.style ~= "dark" then
    vim.notify(
      ('aura-ultra: style "%s" has been removed. Falling back to "dark".'):format(opts.style),
      vim.log.levels.WARN
    )
  end
  opts.style = "dark"

  ---@class ColorScheme: Palette
  local colors = create_palette()

  Util.bg = colors.bg
  Util.fg = colors.fg

  colors.none = "NONE"

  colors.diff = {
    add = Util.blend_bg(colors.green2, 0.25),
    delete = Util.blend_bg(colors.red1, 0.25),
    change = Util.blend_bg(colors.blue7, 0.15),
    text = colors.blue7,
  }

  colors.git.ignore = colors.dark3
  colors.black = Util.blend_bg(colors.bg, 0.8, "#000000")
  colors.border_highlight = Util.blend_bg(colors.blue1, 0.8)
  colors.border = colors.black

  colors.bg_popup = colors.bg_dark
  colors.bg_statusline = colors.bg

  colors.bg_sidebar = opts.styles.sidebars == "transparent" and colors.none
    or opts.styles.sidebars == "dark" and colors.bg_dark
    or colors.bg

  colors.bg_float = opts.styles.floats == "transparent" and colors.none
    or opts.styles.floats == "dark" and colors.bg_dark
    or colors.bg

  colors.bg_visual = Util.blend_bg(colors.blue0, 0.4)
  colors.bg_search = colors.blue0
  colors.fg_sidebar = colors.fg_dark
  colors.fg_float = colors.fg

  colors.error = colors.red1
  colors.todo = colors.blue
  colors.warning = colors.yellow
  colors.info = colors.blue2
  colors.hint = colors.teal

  colors.rainbow = {
    colors.blue,
    colors.yellow,
    colors.green,
    colors.teal,
    colors.magenta,
    colors.purple,
    colors.orange,
    colors.red,
  }

  colors.terminal = {
    black = colors.black,
    black_bright = colors.terminal_black,
    red = colors.red,
    red_bright = Util.brighten(colors.red),
    green = colors.green,
    green_bright = Util.brighten(colors.green),
    yellow = colors.yellow,
    yellow_bright = Util.brighten(colors.yellow),
    blue = colors.blue,
    blue_bright = Util.brighten(colors.blue),
    magenta = colors.magenta,
    magenta_bright = Util.brighten(colors.magenta),
    purple = colors.purple,
    purple_bright = Util.brighten(colors.purple),
    cyan = colors.cyan,
    cyan_bright = Util.brighten(colors.cyan),
    white = colors.fg_dark,
    white_bright = colors.fg,
    orange = colors.orange,
    orange_bright = Util.brighten(colors.orange),
  }

  opts.on_colors(colors)

  return colors, opts
end

return M
