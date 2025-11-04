local Config = require("aura-ultra.config")
local Init = require("aura-ultra")

before_each(function()
  vim.o.background = "dark"
  vim.cmd.colorscheme("default")
  Config.setup()
  Init.styles = {}
end)

it("did proper init", function()
  assert.same({}, Init.styles)
  assert.same("default", vim.g.colors_name)
  assert.same("dark", vim.o.background)
end)

describe("loading respects vim.o.background", function()
  it("= dark", function()
    vim.o.background = "dark"
    vim.cmd.colorscheme("aura-ultra")
    assert.same("dark", vim.o.background)
    assert.same("aura-ultra", vim.g.colors_name)
  end)

  it("= light", function()
    vim.o.background = "light"
    vim.cmd.colorscheme("aura-ultra")
    assert.same("dark", vim.o.background)
    assert.same("aura-ultra", vim.g.colors_name)
  end)
end)
