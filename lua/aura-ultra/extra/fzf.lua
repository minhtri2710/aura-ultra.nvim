local M = {}

---@param colors ColorScheme
---@param groups table<string, vim.api.keyset.highlight|string>
function M.generate(colors, groups)
  local bg_fallback = colors.bg_float ~= "NONE" and colors.bg_float or colors.bg

  local function resolve_group(name, visited)
    if type(name) ~= "string" then
      return nil
    end
    visited = visited or {}
    if visited[name] then
      return nil
    end
    visited[name] = true
    local hl = groups[name]
    if not hl then
      return nil
    end
    if type(hl) == "string" then
      return resolve_group(hl, visited)
    end
    return hl
  end

  local function get_color(attr, hl_name)
    local hl = resolve_group(hl_name)
    if hl and type(hl) == "table" then
      local value = hl[attr]
      if value and value ~= "NONE" then
        return value
      end
    end
    if attr == "fg" then
      return colors.fg
    end
    if attr == "bg" then
      return bg_fallback
    end
    return nil
  end

  local links = {
    FzfLuaFzfCursorLine = "CursorLine",
    FzfLuaFzfMatch = "Special",
    FzfLuaFzfBorder = "FzfLuaBorder",
    FzfLuaFzfScrollbar = "FzfLuaBorder",
    FzfLuaFzfSeparator = "FzfLuaBorder",
    FzfLuaFzfGutter = "FzfLuaNormal",
    FzfLuaFzfHeader = "FzfLuaTitle",
    FzfLuaFzfInfo = "NonText",
    FzfLuaFzfPointer = "Special",
    FzfLuaFzfMarker = "FzfLuaFzfPointer",
    FzfLuaFzfSpinner = "FzfLuaFzfPointer",
    FzfLuaFzfPrompt = "Special",
    FzfLuaFzfQuery = "FzfLuaNormal",
  }

  local spec = {
    ["fg"] = { "fg", "FzfLuaNormal" },
    ["bg"] = { "bg", "FzfLuaNormal" },
    ["hl"] = { "fg", "FzfLuaFzfMatch" },
    ["bg+"] = { "bg", "FzfLuaFzfCursorLine" },
    ["hl+"] = { "fg", "FzfLuaFzfMatch" },
    ["info"] = { "fg", "FzfLuaFzfInfo" },
    ["border"] = { "fg", "FzfLuaFzfBorder" },
    ["separator"] = { "fg", "FzfLuaFzfSeparator" },
    ["scrollbar"] = { "fg", "FzfLuaFzfScrollbar" },
    ["gutter"] = { "bg", "FzfLuaFzfGutter" },
    ["query"] = { "fg", "FzfLuaFzfQuery", "regular" },
    ["prompt"] = { "fg", "FzfLuaFzfPrompt" },
    ["pointer"] = { "fg", "FzfLuaFzfPointer" },
    ["marker"] = { "fg", "FzfLuaFzfMarker" },
    ["spinner"] = { "fg", "FzfLuaFzfSpinner" },
    ["header"] = { "fg", "FzfLuaFzfHeader" },
  }

  local ret = {}

  for name, desc in pairs(spec) do
    local hl_group = links[desc[2]] or desc[2]
    local color = get_color(desc[1], hl_group)
    assert(color, ("color not found for %s:%s"):format(name, hl_group))
    local line = string.format("--color=%s:%s", name, color)
    if desc[3] then
      line = line .. ":" .. desc[3]
    end
    ret[#ret + 1] = "  " .. line .. " \\"
  end

  table.sort(ret)

  return M.template:format(table.concat(ret, "\n"))
end

M.template = [[
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
  --highlight-line \
  --info=inline-right \
  --ansi \
  --layout=reverse \
  --border=none \
%s
"
]]

return M
