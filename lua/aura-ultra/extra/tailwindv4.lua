local util = require("aura-ultra.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local tailwindv4 = util.template(
    [[
@theme inline {
  --color-aura-ultra-${_style}-bg: oklch(from ${bg} l c h);
  --color-aura-ultra-${_style}-bg-dark: oklch(from ${bg_dark} l c h);
  --color-aura-ultra-${_style}-bg-dark1: oklch(from ${bg_dark1} l c h);
  --color-aura-ultra-${_style}-bg-float: var(--color-aura-ultra-${_style}-bg-dark);
  --color-aura-ultra-${_style}-bg-highlight: oklch(from ${bg_highlight} l c h);
  --color-aura-ultra-${_style}-bg-popup: var(--color-aura-ultra-${_style}-bg-dark);
  --color-aura-ultra-${_style}-bg-search: var(--color-aura-ultra-${_style}-blue0);
  --color-aura-ultra-${_style}-bg-sidebar: var(--color-aura-ultra-${_style}-bg-dark);
  --color-aura-ultra-${_style}-bg-statusline: var(--color-aura-ultra-${_style}-bg-dark);
  --color-aura-ultra-${_style}-bg-visual: oklch(from ${bg_visual} l c h);
  --color-aura-ultra-${_style}-black: oklch(from ${black} l c h);
  --color-aura-ultra-${_style}-black-bright: oklch(from ${terminal.black_bright} l c h);
  --color-aura-ultra-${_style}-blue: oklch(from ${blue} l c h);
  --color-aura-ultra-${_style}-blue-bright: oklch(from ${terminal.blue_bright} l c h);
  --color-aura-ultra-${_style}-blue0: oklch(from ${blue0} l c h);
  --color-aura-ultra-${_style}-blue1: oklch(from ${blue1} l c h);
  --color-aura-ultra-${_style}-blue2: oklch(from ${blue2} l c h);
  --color-aura-ultra-${_style}-blue5: oklch(from ${blue5} l c h);
  --color-aura-ultra-${_style}-blue6: oklch(from ${blue6} l c h);
  --color-aura-ultra-${_style}-blue7: oklch(from ${blue7} l c h);
  --color-aura-ultra-${_style}-border: var(--color-aura-ultra-${_style}-black);
  --color-aura-ultra-${_style}-border-highlight: oklch(from ${border_highlight} l c h);
  --color-aura-ultra-${_style}-comment: oklch(from ${comment} l c h);
  --color-aura-ultra-${_style}-cyan: oklch(from ${cyan} l c h);
  --color-aura-ultra-${_style}-cyan-bright: oklch(from ${terminal.cyan_bright} l c h);
  --color-aura-ultra-${_style}-dark3: oklch(from ${dark3} l c h);
  --color-aura-ultra-${_style}-dark5: oklch(from ${dark5} l c h);
  --color-aura-ultra-${_style}-diff-add: oklch(from ${diff.add} l c h);
  --color-aura-ultra-${_style}-diff-change: oklch(from ${diff.change} l c h);
  --color-aura-ultra-${_style}-diff-delete: oklch(from ${diff.delete} l c h);
  --color-aura-ultra-${_style}-diff-text: var(--color-aura-ultra-${_style}-blue7);
  --color-aura-ultra-${_style}-error: var(--color-aura-ultra-${_style}-red1);
  --color-aura-ultra-${_style}-fg: oklch(from ${fg} l c h);
  --color-aura-ultra-${_style}-fg-dark: oklch(from ${fg_dark} l c h);
  --color-aura-ultra-${_style}-fg-float: var(--color-aura-ultra-${_style}-fg);
  --color-aura-ultra-${_style}-fg-gutter: oklch(from ${fg_gutter} l c h);
  --color-aura-ultra-${_style}-fg-sidebar: var(--color-aura-ultra-${_style}-fg-dark);
  --color-aura-ultra-${_style}-git-add: oklch(from ${git.add} l c h);
  --color-aura-ultra-${_style}-git-change: oklch(from ${git.change} l c h);
  --color-aura-ultra-${_style}-git-delete: oklch(from ${git.delete} l c h);
  --color-aura-ultra-${_style}-git-ignore: var(--color-aura-ultra-${_style}-dark3);
  --color-aura-ultra-${_style}-green: oklch(from ${green} l c h);
  --color-aura-ultra-${_style}-green-bright: oklch(from ${terminal.green_bright} l c h);
  --color-aura-ultra-${_style}-green1: oklch(from ${green1} l c h);
  --color-aura-ultra-${_style}-green2: oklch(from ${green2} l c h);
  --color-aura-ultra-${_style}-hint: var(--color-aura-ultra-${_style}-teal);
  --color-aura-ultra-${_style}-info: var(--color-aura-ultra-${_style}-blue2);
  --color-aura-ultra-${_style}-magenta: oklch(from ${magenta} l c h);
  --color-aura-ultra-${_style}-magenta-bright: oklch(from ${terminal.magenta_bright} l c h);
  --color-aura-ultra-${_style}-magenta2: oklch(from ${magenta2} l c h);
  --color-aura-ultra-${_style}-orange: oklch(from ${orange} l c h);
  --color-aura-ultra-${_style}-purple: oklch(from ${purple} l c h);
  --color-aura-ultra-${_style}-rainbow1: var(--color-aura-ultra-${_style}-blue);
  --color-aura-ultra-${_style}-rainbow2: var(--color-aura-ultra-${_style}-yellow);
  --color-aura-ultra-${_style}-rainbow3: var(--color-aura-ultra-${_style}-green);
  --color-aura-ultra-${_style}-rainbow4: var(--color-aura-ultra-${_style}-teal);
  --color-aura-ultra-${_style}-rainbow5: var(--color-aura-ultra-${_style}-magenta);
  --color-aura-ultra-${_style}-rainbow6: var(--color-aura-ultra-${_style}-purple);
  --color-aura-ultra-${_style}-rainbow7: var(--color-aura-ultra-${_style}-orange);
  --color-aura-ultra-${_style}-rainbow8: var(--color-aura-ultra-${_style}-red);
  --color-aura-ultra-${_style}-red: oklch(from ${red} l c h);
  --color-aura-ultra-${_style}-red-bright: oklch(from ${terminal.red_bright} l c h);
  --color-aura-ultra-${_style}-red1: oklch(from ${red1} l c h);
  --color-aura-ultra-${_style}-teal: oklch(from ${teal} l c h);
  --color-aura-ultra-${_style}-todo: var(--color-aura-ultra-${_style}-blue);
  --color-aura-ultra-${_style}-warning: var(--color-aura-ultra-${_style}-yellow);
  --color-aura-ultra-${_style}-yellow: oklch(from ${yellow} l c h);
  --color-aura-ultra-${_style}-yellow-bright: oklch(from ${terminal.yellow_bright} l c h);
}]],
    colors
  )

  return tailwindv4
end

return M
