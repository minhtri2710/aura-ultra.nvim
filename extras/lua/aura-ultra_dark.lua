local colors = {
  _name = "aura-ultra_dark",
  _style = "dark",
  bg = "#2a1f3d",
  bg_dark = "#23182f",
  bg_dark1 = "#1b1426",
  bg_float = "#23182f",
  bg_highlight = "#211f2f",
  bg_popup = "#23182f",
  bg_search = "#2d414d",
  bg_sidebar = "#23182f",
  bg_statusline = "#2a1f3d",
  bg_visual = "#2b2d43",
  black = "#221931",
  blue = "#82e2ff",
  blue0 = "#2d414d",
  blue1 = "#a5eaff",
  blue2 = "#99e7ff",
  blue5 = "#5593a6",
  blue6 = "#487c8c",
  blue7 = "#759ca7",
  border = "#221931",
  border_highlight = "#8cc1d8",
  comment = "#6e5f8f",
  cyan = "#72f1e5",
  dark3 = "#5a4d7a",
  dark5 = "#7a6f9b",
  diff = {
    add = "#455765",
    change = "#35324d",
    delete = "#532c42",
    text = "#759ca7"
  },
  error = "#cc5252",
  fg = "#edecee",
  fg_dark = "#c8bff2",
  fg_float = "#edecee",
  fg_gutter = "#3b2f4f",
  fg_sidebar = "#c8bff2",
  git = {
    add = "#357765",
    change = "#436b7b",
    delete = "#77373b",
    ignore = "#5a4d7a"
  },
  green = "#61ffca",
  green1 = "#7dffd4",
  green2 = "#94ffdb",
  hint = "#72f1e5",
  info = "#99e7ff",
  magenta = "#f694ff",
  magenta2 = "#c884ff",
  none = "NONE",
  orange = "#ffca85",
  purple = "#a277ff",
  rainbow = { "#82e2ff", "#ffd49b", "#61ffca", "#72f1e5", "#f694ff", "#a277ff", "#ffca85", "#ff6767" },
  red = "#ff6767",
  red1 = "#cc5252",
  teal = "#72f1e5",
  terminal = {
    black = "#221931",
    black_bright = "#786395",
    blue = "#82e2ff",
    blue_bright = "#b5ebff",
    cyan = "#72f1e5",
    cyan_bright = "#8bfef3",
    green = "#61ffca",
    green_bright = "#c9ffe8",
    magenta = "#f694ff",
    magenta_bright = "#f7abff",
    orange = "#ffca85",
    orange_bright = "#ffdbb4",
    purple = "#a277ff",
    purple_bright = "#ac89ff",
    red = "#ff6767",
    red_bright = "#ff8080",
    white = "#c8bff2",
    white_bright = "#edecee",
    yellow = "#ffd49b",
    yellow_bright = "#ffe5c8"
  },
  terminal_black = "#786395",
  todo = "#82e2ff",
  warning = "#ffd49b",
  yellow = "#ffd49b"
}

local highlights = {
  ["@annotation"] = {
    fg = "#a277ff"
  },
  ["@boolean"] = {
    fg = "#61ffca"
  },
  ["@character"] = {
    fg = "#61ffca"
  },
  ["@comment"] = {
    fg = "#c8bff2"
  },
  ["@comment.error"] = {
    fg = "#cc5252"
  },
  ["@comment.hint"] = {
    fg = "#72f1e5"
  },
  ["@comment.info"] = {
    fg = "#99e7ff"
  },
  ["@comment.todo"] = {
    fg = "#82e2ff"
  },
  ["@comment.warning"] = {
    fg = "#ffca85"
  },
  ["@conditional"] = {
    fg = "#a277ff",
    italic = true
  },
  ["@constant"] = {
    fg = "#edecee"
  },
  ["@constant.builtin"] = {
    fg = "#a277ff"
  },
  ["@constant.macro"] = {
    fg = "#a277ff"
  },
  ["@constructor"] = {
    fg = "#82e2ff"
  },
  ["@error"] = {
    bold = true,
    fg = "#cc5252",
    underline = true
  },
  ["@exception"] = {
    fg = "#f694ff",
    italic = true
  },
  ["@field"] = {
    fg = "#f694ff"
  },
  ["@float"] = {
    fg = "#61ffca"
  },
  ["@function"] = {
    fg = "#a277ff"
  },
  ["@function.builtin"] = {
    fg = "#ffca85"
  },
  ["@function.macro"] = {
    fg = "#ffca85"
  },
  ["@include"] = {
    fg = "#a277ff"
  },
  ["@keyword"] = {
    fg = "#f694ff",
    italic = true
  },
  ["@keyword.const"] = {
    bold = true,
    fg = "#a277ff"
  },
  ["@keyword.function"] = {
    fg = "#ffca85"
  },
  ["@keyword.import"] = {
    fg = "#a277ff",
    italic = true
  },
  ["@keyword.operator"] = {
    fg = "#a277ff"
  },
  ["@keyword.storage"] = {
    bold = true,
    fg = "#edecee"
  },
  ["@label"] = {
    fg = "#a277ff"
  },
  ["@lsp.type.boolean"] = "@boolean",
  ["@lsp.type.builtinType"] = "@type.builtin",
  ["@lsp.type.comment"] = "@comment",
  ["@lsp.type.decorator"] = "@attribute",
  ["@lsp.type.deriveHelper"] = "@attribute",
  ["@lsp.type.enum"] = "@type",
  ["@lsp.type.enumMember"] = "@constant",
  ["@lsp.type.escapeSequence"] = "@string.escape",
  ["@lsp.type.formatSpecifier"] = "@markup.list",
  ["@lsp.type.generic"] = "@variable",
  ["@lsp.type.interface"] = {
    fg = "#bbebfa"
  },
  ["@lsp.type.keyword"] = "@keyword",
  ["@lsp.type.lifetime"] = "@keyword.storage",
  ["@lsp.type.namespace"] = "@module",
  ["@lsp.type.namespace.python"] = "@variable",
  ["@lsp.type.number"] = "@number",
  ["@lsp.type.operator"] = "@operator",
  ["@lsp.type.parameter"] = "@variable.parameter",
  ["@lsp.type.property"] = "@property",
  ["@lsp.type.selfKeyword"] = "@variable.builtin",
  ["@lsp.type.selfTypeKeyword"] = "@variable.builtin",
  ["@lsp.type.string"] = "@string",
  ["@lsp.type.typeAlias"] = "@type.definition",
  ["@lsp.type.unresolvedReference"] = {
    sp = "#cc5252",
    undercurl = true
  },
  ["@lsp.type.variable"] = {},
  ["@lsp.typemod.class.defaultLibrary"] = "@type.builtin",
  ["@lsp.typemod.enum.defaultLibrary"] = "@type.builtin",
  ["@lsp.typemod.enumMember.defaultLibrary"] = "@constant.builtin",
  ["@lsp.typemod.function.defaultLibrary"] = "@function.builtin",
  ["@lsp.typemod.keyword.async"] = "@keyword.coroutine",
  ["@lsp.typemod.keyword.injected"] = "@keyword",
  ["@lsp.typemod.macro.defaultLibrary"] = "@function.builtin",
  ["@lsp.typemod.method.defaultLibrary"] = "@function.builtin",
  ["@lsp.typemod.operator.injected"] = "@operator",
  ["@lsp.typemod.string.injected"] = "@string",
  ["@lsp.typemod.struct.defaultLibrary"] = "@type.builtin",
  ["@lsp.typemod.type.defaultLibrary"] = {
    fg = "#8cc1d8"
  },
  ["@lsp.typemod.typeAlias.defaultLibrary"] = {
    fg = "#8cc1d8"
  },
  ["@lsp.typemod.variable.callable"] = "@function",
  ["@lsp.typemod.variable.defaultLibrary"] = "@variable.builtin",
  ["@lsp.typemod.variable.injected"] = "@variable",
  ["@lsp.typemod.variable.static"] = "@constant",
  ["@markup.heading"] = {
    bold = true,
    fg = "#61ffca"
  },
  ["@markup.heading.1.markdown"] = {
    bg = "#333350",
    bold = true,
    fg = "#82e2ff"
  },
  ["@markup.heading.2.markdown"] = {
    bg = "#3f3146",
    bold = true,
    fg = "#ffd49b"
  },
  ["@markup.heading.3.markdown"] = {
    bg = "#30354b",
    bold = true,
    fg = "#61ffca"
  },
  ["@markup.heading.4.markdown"] = {
    bg = "#31344e",
    bold = true,
    fg = "#72f1e5"
  },
  ["@markup.heading.5.markdown"] = {
    bg = "#3e2b50",
    bold = true,
    fg = "#f694ff"
  },
  ["@markup.heading.6.markdown"] = {
    bg = "#362850",
    bold = true,
    fg = "#a277ff"
  },
  ["@markup.heading.7.markdown"] = {
    bg = "#3f3044",
    bold = true,
    fg = "#ffca85"
  },
  ["@markup.heading.8.markdown"] = {
    bg = "#3f2641",
    bold = true,
    fg = "#ff6767"
  },
  ["@method"] = {
    bold = true,
    fg = "#ffca85"
  },
  ["@module"] = {
    fg = "#a277ff"
  },
  ["@namespace"] = {
    fg = "#a277ff"
  },
  ["@none"] = {},
  ["@number"] = {
    fg = "#61ffca"
  },
  ["@operator"] = {
    fg = "#a277ff"
  },
  ["@parameter"] = {
    fg = "#edecee"
  },
  ["@parameter.reference"] = {
    fg = "#a277ff"
  },
  ["@property"] = {
    fg = "#a277ff"
  },
  ["@punctuation.bracket"] = {
    fg = "#edecee"
  },
  ["@punctuation.delimiter"] = {
    fg = "#f694ff"
  },
  ["@punctuation.special"] = {
    fg = "#a277ff"
  },
  ["@repeat"] = {
    fg = "#a277ff",
    italic = true
  },
  ["@string"] = {
    fg = "#61ffca"
  },
  ["@string.escape"] = {
    bold = true,
    fg = "#61ffca"
  },
  ["@string.regexp"] = {
    bold = true,
    fg = "#61ffca"
  },
  ["@string.special.url"] = {
    fg = "#82e2ff",
    underline = true
  },
  ["@tag"] = {
    fg = "#a277ff"
  },
  ["@tag.attribute"] = {
    fg = "#f694ff"
  },
  ["@tag.builtin"] = {
    fg = "#a277ff"
  },
  ["@tag.delimiter"] = {
    fg = "#edecee"
  },
  ["@tag.html"] = {
    fg = "#a277ff"
  },
  ["@text"] = {},
  ["@text.emphasis"] = {
    italic = true
  },
  ["@text.strike"] = {
    strikethrough = true
  },
  ["@text.strong"] = {
    bold = true
  },
  ["@text.underline"] = {
    underline = true
  },
  ["@type"] = {
    fg = "#82e2ff"
  },
  ["@type.builtin"] = {
    fg = "#a277ff"
  },
  ["@variable"] = {
    fg = "#edecee"
  },
  ["@variable.builtin"] = {
    fg = "#a277ff"
  },
  ALEErrorSign = {
    fg = "#cc5252"
  },
  ALEWarningSign = {
    fg = "#ffd49b"
  },
  AerialArrayIcon = "LspKindArray",
  AerialBooleanIcon = "LspKindBoolean",
  AerialClassIcon = "LspKindClass",
  AerialColorIcon = "LspKindColor",
  AerialConstantIcon = "LspKindConstant",
  AerialConstructorIcon = "LspKindConstructor",
  AerialEnumIcon = "LspKindEnum",
  AerialEnumMemberIcon = "LspKindEnumMember",
  AerialEventIcon = "LspKindEvent",
  AerialFieldIcon = "LspKindField",
  AerialFileIcon = "LspKindFile",
  AerialFolderIcon = "LspKindFolder",
  AerialFunctionIcon = "LspKindFunction",
  AerialGuide = {
    fg = "#3b2f4f"
  },
  AerialInterfaceIcon = "LspKindInterface",
  AerialKeyIcon = "LspKindKey",
  AerialKeywordIcon = "LspKindKeyword",
  AerialLine = "LspInlayHint",
  AerialMethodIcon = "LspKindMethod",
  AerialModuleIcon = "LspKindModule",
  AerialNamespaceIcon = "LspKindNamespace",
  AerialNormal = {
    bg = "NONE",
    fg = "#edecee"
  },
  AerialNullIcon = "LspKindNull",
  AerialNumberIcon = "LspKindNumber",
  AerialObjectIcon = "LspKindObject",
  AerialOperatorIcon = "LspKindOperator",
  AerialPackageIcon = "LspKindPackage",
  AerialPropertyIcon = "LspKindProperty",
  AerialReferenceIcon = "LspKindReference",
  AerialSnippetIcon = "LspKindSnippet",
  AerialStringIcon = "LspKindString",
  AerialStructIcon = "LspKindStruct",
  AerialTextIcon = "LspKindText",
  AerialTypeParameterIcon = "LspKindTypeParameter",
  AerialUnitIcon = "LspKindUnit",
  AerialValueIcon = "LspKindValue",
  AerialVariableIcon = "LspKindVariable",
  AlphaButtons = {
    fg = "#72f1e5"
  },
  AlphaFooter = {
    fg = "#a5eaff"
  },
  AlphaHeader = {
    fg = "#82e2ff"
  },
  AlphaHeaderLabel = {
    fg = "#ffca85"
  },
  AlphaShortcut = {
    fg = "#ffca85"
  },
  BlinkCmpDoc = {
    bg = "#23182f",
    fg = "#edecee"
  },
  BlinkCmpDocBorder = {
    bg = "#23182f",
    fg = "#8cc1d8"
  },
  BlinkCmpGhostText = {
    fg = "#786395"
  },
  BlinkCmpKindArray = "LspKindArray",
  BlinkCmpKindBoolean = "LspKindBoolean",
  BlinkCmpKindClass = "LspKindClass",
  BlinkCmpKindCodeium = {
    bg = "NONE",
    fg = "#72f1e5"
  },
  BlinkCmpKindColor = "LspKindColor",
  BlinkCmpKindConstant = "LspKindConstant",
  BlinkCmpKindConstructor = "LspKindConstructor",
  BlinkCmpKindCopilot = {
    bg = "NONE",
    fg = "#72f1e5"
  },
  BlinkCmpKindDefault = {
    bg = "NONE",
    fg = "#c8bff2"
  },
  BlinkCmpKindEnum = "LspKindEnum",
  BlinkCmpKindEnumMember = "LspKindEnumMember",
  BlinkCmpKindEvent = "LspKindEvent",
  BlinkCmpKindField = "LspKindField",
  BlinkCmpKindFile = "LspKindFile",
  BlinkCmpKindFolder = "LspKindFolder",
  BlinkCmpKindFunction = "LspKindFunction",
  BlinkCmpKindInterface = "LspKindInterface",
  BlinkCmpKindKey = "LspKindKey",
  BlinkCmpKindKeyword = "LspKindKeyword",
  BlinkCmpKindMethod = "LspKindMethod",
  BlinkCmpKindModule = "LspKindModule",
  BlinkCmpKindNamespace = "LspKindNamespace",
  BlinkCmpKindNull = "LspKindNull",
  BlinkCmpKindNumber = "LspKindNumber",
  BlinkCmpKindObject = "LspKindObject",
  BlinkCmpKindOperator = "LspKindOperator",
  BlinkCmpKindPackage = "LspKindPackage",
  BlinkCmpKindProperty = "LspKindProperty",
  BlinkCmpKindReference = "LspKindReference",
  BlinkCmpKindSnippet = "LspKindSnippet",
  BlinkCmpKindString = "LspKindString",
  BlinkCmpKindStruct = "LspKindStruct",
  BlinkCmpKindSupermaven = {
    bg = "NONE",
    fg = "#72f1e5"
  },
  BlinkCmpKindTabNine = {
    bg = "NONE",
    fg = "#72f1e5"
  },
  BlinkCmpKindText = "LspKindText",
  BlinkCmpKindTypeParameter = "LspKindTypeParameter",
  BlinkCmpKindUnit = "LspKindUnit",
  BlinkCmpKindValue = "LspKindValue",
  BlinkCmpKindVariable = "LspKindVariable",
  BlinkCmpLabel = {
    bg = "NONE",
    fg = "#edecee"
  },
  BlinkCmpLabelDeprecated = {
    bg = "NONE",
    fg = "#3b2f4f",
    strikethrough = true
  },
  BlinkCmpLabelMatch = {
    bg = "NONE",
    fg = "#a5eaff"
  },
  BlinkCmpMenu = {
    bg = "#23182f",
    fg = "#edecee"
  },
  BlinkCmpMenuBorder = {
    bg = "#23182f",
    fg = "#8cc1d8"
  },
  BlinkCmpSignatureHelp = {
    bg = "#23182f",
    fg = "#edecee"
  },
  BlinkCmpSignatureHelpBorder = {
    bg = "#23182f",
    fg = "#8cc1d8"
  },
  Bold = {
    bold = true,
    fg = "#edecee"
  },
  BufferAlternate = {
    bg = "#3b2f4f",
    fg = "#edecee"
  },
  BufferAlternateADDED = {
    bg = "#3b2f4f",
    fg = "#357765"
  },
  BufferAlternateCHANGED = {
    bg = "#3b2f4f",
    fg = "#436b7b"
  },
  BufferAlternateDELETED = {
    bg = "#3b2f4f",
    fg = "#77373b"
  },
  BufferAlternateERROR = {
    bg = "#3b2f4f",
    fg = "#cc5252"
  },
  BufferAlternateHINT = {
    bg = "#3b2f4f",
    fg = "#72f1e5"
  },
  BufferAlternateINFO = {
    bg = "#3b2f4f",
    fg = "#99e7ff"
  },
  BufferAlternateIndex = {
    bg = "#3b2f4f",
    fg = "#99e7ff"
  },
  BufferAlternateMod = {
    bg = "#3b2f4f",
    fg = "#ffd49b"
  },
  BufferAlternateSign = {
    bg = "#3b2f4f",
    fg = "#99e7ff"
  },
  BufferAlternateTarget = {
    bg = "#3b2f4f",
    fg = "#ff6767"
  },
  BufferAlternateWARN = {
    bg = "#3b2f4f",
    fg = "#ffd49b"
  },
  BufferCurrent = {
    bg = "#2a1f3d",
    fg = "#edecee"
  },
  BufferCurrentADDED = {
    bg = "#2a1f3d",
    fg = "#357765"
  },
  BufferCurrentCHANGED = {
    bg = "#2a1f3d",
    fg = "#436b7b"
  },
  BufferCurrentDELETED = {
    bg = "#2a1f3d",
    fg = "#77373b"
  },
  BufferCurrentERROR = {
    bg = "#2a1f3d",
    fg = "#cc5252"
  },
  BufferCurrentHINT = {
    bg = "#2a1f3d",
    fg = "#72f1e5"
  },
  BufferCurrentINFO = {
    bg = "#2a1f3d",
    fg = "#99e7ff"
  },
  BufferCurrentIndex = {
    bg = "#2a1f3d",
    fg = "#99e7ff"
  },
  BufferCurrentMod = {
    bg = "#2a1f3d",
    fg = "#ffd49b"
  },
  BufferCurrentSign = {
    bg = "#2a1f3d",
    fg = "#2a1f3d"
  },
  BufferCurrentTarget = {
    bg = "#2a1f3d",
    fg = "#ff6767"
  },
  BufferCurrentWARN = {
    bg = "#2a1f3d",
    fg = "#ffd49b"
  },
  BufferInactive = {
    bg = "#261f37",
    fg = "#6a5f88"
  },
  BufferInactiveADDED = {
    bg = "#261f37",
    fg = "#33655d"
  },
  BufferInactiveCHANGED = {
    bg = "#261f37",
    fg = "#3e5c6f"
  },
  BufferInactiveDELETED = {
    bg = "#261f37",
    fg = "#68323b"
  },
  BufferInactiveERROR = {
    bg = "#261f37",
    fg = "#ac484e"
  },
  BufferInactiveHINT = {
    bg = "#261f37",
    fg = "#64c7c3"
  },
  BufferInactiveINFO = {
    bg = "#261f37",
    fg = "#83bfd8"
  },
  BufferInactiveIndex = {
    bg = "#261f37",
    fg = "#7a6f9b"
  },
  BufferInactiveMod = {
    bg = "#261f37",
    fg = "#d4b088"
  },
  BufferInactiveSign = {
    bg = "#261f37",
    fg = "#2a1f3d"
  },
  BufferInactiveTarget = {
    bg = "#261f37",
    fg = "#ff6767"
  },
  BufferInactiveWARN = {
    bg = "#261f37",
    fg = "#d4b088"
  },
  BufferLineIndicatorSelected = {
    fg = "#436b7b"
  },
  BufferOffset = {
    bg = "#2a1f3d",
    fg = "#7a6f9b"
  },
  BufferTabpageFill = {
    bg = "#231f32",
    fg = "#7a6f9b"
  },
  BufferTabpages = {
    bg = "#2a1f3d",
    fg = "NONE"
  },
  BufferVisible = {
    bg = "#2a1f3d",
    fg = "#edecee"
  },
  BufferVisibleADDED = {
    bg = "#2a1f3d",
    fg = "#357765"
  },
  BufferVisibleCHANGED = {
    bg = "#2a1f3d",
    fg = "#436b7b"
  },
  BufferVisibleDELETED = {
    bg = "#2a1f3d",
    fg = "#77373b"
  },
  BufferVisibleERROR = {
    bg = "#2a1f3d",
    fg = "#cc5252"
  },
  BufferVisibleHINT = {
    bg = "#2a1f3d",
    fg = "#72f1e5"
  },
  BufferVisibleINFO = {
    bg = "#2a1f3d",
    fg = "#99e7ff"
  },
  BufferVisibleIndex = {
    bg = "#2a1f3d",
    fg = "#99e7ff"
  },
  BufferVisibleMod = {
    bg = "#2a1f3d",
    fg = "#ffd49b"
  },
  BufferVisibleSign = {
    bg = "#2a1f3d",
    fg = "#99e7ff"
  },
  BufferVisibleTarget = {
    bg = "#2a1f3d",
    fg = "#ff6767"
  },
  BufferVisibleWARN = {
    bg = "#2a1f3d",
    fg = "#ffd49b"
  },
  Character = {
    fg = "#61ffca"
  },
  CmpDocumentation = {
    bg = "#23182f",
    fg = "#edecee"
  },
  CmpDocumentationBorder = {
    bg = "#23182f",
    fg = "#8cc1d8"
  },
  CmpGhostText = {
    fg = "#786395"
  },
  CmpItemAbbr = {
    bg = "NONE",
    fg = "#edecee"
  },
  CmpItemAbbrDeprecated = {
    bg = "NONE",
    fg = "#3b2f4f",
    strikethrough = true
  },
  CmpItemAbbrMatch = {
    bg = "NONE",
    fg = "#a5eaff"
  },
  CmpItemAbbrMatchFuzzy = {
    bg = "NONE",
    fg = "#a5eaff"
  },
  CmpItemKindArray = "LspKindArray",
  CmpItemKindBoolean = "LspKindBoolean",
  CmpItemKindClass = "LspKindClass",
  CmpItemKindCodeium = {
    bg = "NONE",
    fg = "#72f1e5"
  },
  CmpItemKindColor = "LspKindColor",
  CmpItemKindConstant = "LspKindConstant",
  CmpItemKindConstructor = "LspKindConstructor",
  CmpItemKindCopilot = {
    bg = "NONE",
    fg = "#72f1e5"
  },
  CmpItemKindDefault = {
    bg = "NONE",
    fg = "#c8bff2"
  },
  CmpItemKindEnum = "LspKindEnum",
  CmpItemKindEnumMember = "LspKindEnumMember",
  CmpItemKindEvent = "LspKindEvent",
  CmpItemKindField = "LspKindField",
  CmpItemKindFile = "LspKindFile",
  CmpItemKindFolder = "LspKindFolder",
  CmpItemKindFunction = "LspKindFunction",
  CmpItemKindInterface = "LspKindInterface",
  CmpItemKindKey = "LspKindKey",
  CmpItemKindKeyword = "LspKindKeyword",
  CmpItemKindMethod = "LspKindMethod",
  CmpItemKindModule = "LspKindModule",
  CmpItemKindNamespace = "LspKindNamespace",
  CmpItemKindNull = "LspKindNull",
  CmpItemKindNumber = "LspKindNumber",
  CmpItemKindObject = "LspKindObject",
  CmpItemKindOperator = "LspKindOperator",
  CmpItemKindPackage = "LspKindPackage",
  CmpItemKindProperty = "LspKindProperty",
  CmpItemKindReference = "LspKindReference",
  CmpItemKindSnippet = "LspKindSnippet",
  CmpItemKindString = "LspKindString",
  CmpItemKindStruct = "LspKindStruct",
  CmpItemKindSupermaven = {
    bg = "NONE",
    fg = "#72f1e5"
  },
  CmpItemKindTabNine = {
    bg = "NONE",
    fg = "#72f1e5"
  },
  CmpItemKindText = "LspKindText",
  CmpItemKindTypeParameter = "LspKindTypeParameter",
  CmpItemKindUnit = "LspKindUnit",
  CmpItemKindValue = "LspKindValue",
  CmpItemKindVariable = "LspKindVariable",
  CmpItemMenu = {
    bg = "NONE",
    fg = "#6e5f8f"
  },
  CodeBlock = {
    bg = "#23182f"
  },
  CodeiumSuggestion = {
    fg = "#786395"
  },
  ColorColumn = {
    bg = "#221931"
  },
  Comment = {
    fg = "#6e5f8f",
    italic = true
  },
  ComplHint = {
    fg = "#786395"
  },
  Conceal = {
    fg = "#7a6f9b"
  },
  Constant = {
    fg = "#ffca85"
  },
  CopilotAnnotation = {
    fg = "#786395"
  },
  CopilotSuggestion = {
    fg = "#786395"
  },
  CurSearch = "IncSearch",
  Cursor = {
    bg = "#edecee",
    fg = "#2a1f3d"
  },
  CursorColumn = {
    bg = "#211f2f"
  },
  CursorIM = {
    bg = "#edecee",
    fg = "#2a1f3d"
  },
  CursorLine = {
    bg = "#211f2f"
  },
  CursorLineNr = {
    bold = true,
    fg = "#ffca85"
  },
  DapStoppedLine = {
    bg = "#3f3146"
  },
  DashboardDesc = {
    fg = "#72f1e5"
  },
  DashboardFiles = {
    fg = "#a277ff"
  },
  DashboardFooter = {
    fg = "#61ffca"
  },
  DashboardHeader = {
    fg = "#61ffca"
  },
  DashboardIcon = {
    fg = "#72f1e5"
  },
  DashboardKey = {
    fg = "#ffca85"
  },
  DashboardMruIcon = {
    fg = "#a277ff"
  },
  DashboardMruTitle = {
    fg = "#72f1e5"
  },
  DashboardProjectIcon = {
    fg = "#ffd49b"
  },
  DashboardProjectTitle = {
    fg = "#72f1e5"
  },
  DashboardProjectTitleIcon = {
    fg = "#ffca85"
  },
  DashboardShortCut = {
    fg = "#72f1e5"
  },
  DashboardShortCutIcon = {
    fg = "#f694ff"
  },
  Debug = {
    fg = "#ffca85"
  },
  DefinitionCount = {
    fg = "#a277ff"
  },
  DefinitionIcon = {
    fg = "#82e2ff"
  },
  Delimiter = "Special",
  DiagnosticError = {
    fg = "#cc5252"
  },
  DiagnosticHint = {
    fg = "#72f1e5"
  },
  DiagnosticInfo = {
    fg = "#99e7ff"
  },
  DiagnosticInformation = "DiagnosticInfo",
  DiagnosticUnderlineError = {
    sp = "#cc5252",
    undercurl = true
  },
  DiagnosticUnderlineHint = {
    sp = "#72f1e5",
    undercurl = true
  },
  DiagnosticUnderlineInfo = {
    sp = "#99e7ff",
    undercurl = true
  },
  DiagnosticUnderlineWarn = {
    sp = "#ffd49b",
    undercurl = true
  },
  DiagnosticUnnecessary = {
    fg = "#786395"
  },
  DiagnosticVirtualTextError = {
    bg = "#3a243f",
    fg = "#cc5252"
  },
  DiagnosticVirtualTextHint = {
    bg = "#31344e",
    fg = "#72f1e5"
  },
  DiagnosticVirtualTextInfo = {
    bg = "#353350",
    fg = "#99e7ff"
  },
  DiagnosticVirtualTextWarn = {
    bg = "#3f3146",
    fg = "#ffd49b"
  },
  DiagnosticWarn = {
    fg = "#ffd49b"
  },
  DiagnosticWarning = "DiagnosticWarn",
  DiffAdd = {
    bg = "#455765"
  },
  DiffChange = {
    bg = "#35324d"
  },
  DiffDelete = {
    bg = "#532c42"
  },
  DiffText = {
    bg = "#759ca7"
  },
  Directory = {
    fg = "#82e2ff"
  },
  EndOfBuffer = {
    fg = "#2a1f3d"
  },
  Error = {
    fg = "#cc5252"
  },
  ErrorMsg = {
    fg = "#cc5252"
  },
  FlashBackdrop = {
    fg = "#5a4d7a"
  },
  FlashLabel = {
    bg = "#c884ff",
    bold = true,
    fg = "#edecee"
  },
  FloatBorder = {
    bg = "#23182f",
    fg = "#8cc1d8"
  },
  FloatTitle = {
    bg = "#23182f",
    fg = "#8cc1d8"
  },
  FoldColumn = {
    bg = "#2a1f3d",
    fg = "#6e5f8f"
  },
  Folded = {
    bg = "#3b2f4f",
    fg = "#82e2ff"
  },
  Foo = {
    bg = "#c884ff",
    fg = "#edecee"
  },
  Function = {
    fg = "#82e2ff"
  },
  FzfLuaBorder = {
    bg = "#23182f",
    fg = "#8cc1d8"
  },
  FzfLuaCursor = "IncSearch",
  FzfLuaDirPart = {
    fg = "#c8bff2"
  },
  FzfLuaFilePart = "FzfLuaFzfNormal",
  FzfLuaFzfCursorLine = "Visual",
  FzfLuaFzfNormal = {
    fg = "#edecee"
  },
  FzfLuaFzfPointer = {
    fg = "#c884ff"
  },
  FzfLuaFzfSeparator = {
    bg = "#23182f",
    fg = "#ffca85"
  },
  FzfLuaHeaderBind = "@punctuation.special",
  FzfLuaHeaderText = "Title",
  FzfLuaNormal = {
    bg = "#23182f",
    fg = "#edecee"
  },
  FzfLuaPath = "Directory",
  FzfLuaPreviewTitle = {
    bg = "#23182f",
    fg = "#8cc1d8"
  },
  FzfLuaTitle = {
    bg = "#23182f",
    fg = "#ffca85"
  },
  GitGutterAdd = {
    fg = "#357765"
  },
  GitGutterAddLineNr = {
    fg = "#357765"
  },
  GitGutterChange = {
    fg = "#436b7b"
  },
  GitGutterChangeLineNr = {
    fg = "#436b7b"
  },
  GitGutterDelete = {
    fg = "#77373b"
  },
  GitGutterDeleteLineNr = {
    fg = "#77373b"
  },
  GitSignsAdd = {
    fg = "#357765"
  },
  GitSignsChange = {
    fg = "#436b7b"
  },
  GitSignsDelete = {
    fg = "#77373b"
  },
  GlyphPalette1 = {
    fg = "#cc5252"
  },
  GlyphPalette2 = {
    fg = "#61ffca"
  },
  GlyphPalette3 = {
    fg = "#ffd49b"
  },
  GlyphPalette4 = {
    fg = "#82e2ff"
  },
  GlyphPalette6 = {
    fg = "#7dffd4"
  },
  GlyphPalette7 = {
    fg = "#edecee"
  },
  GlyphPalette9 = {
    fg = "#ff6767"
  },
  GrugFarHelpHeader = {
    fg = "#6e5f8f"
  },
  GrugFarHelpHeaderKey = {
    fg = "#72f1e5"
  },
  GrugFarInputLabel = {
    fg = "#a5eaff"
  },
  GrugFarInputPlaceholder = {
    fg = "#5a4d7a"
  },
  GrugFarResultsChangeIndicator = {
    fg = "#436b7b"
  },
  GrugFarResultsHeader = {
    fg = "#ffca85"
  },
  GrugFarResultsLineColumn = {
    fg = "#5a4d7a"
  },
  GrugFarResultsLineNo = {
    fg = "#5a4d7a"
  },
  GrugFarResultsMatch = {
    bg = "#ff6767",
    fg = "#221931"
  },
  GrugFarResultsStats = {
    fg = "#82e2ff"
  },
  Headline = "Headline1",
  Headline1 = {
    bg = "#2e2947"
  },
  Headline2 = {
    bg = "#352842"
  },
  Headline3 = {
    bg = "#2d2a44"
  },
  Headline4 = {
    bg = "#2e2a45"
  },
  Headline5 = {
    bg = "#342547"
  },
  Headline6 = {
    bg = "#302347"
  },
  Headline7 = {
    bg = "#352841"
  },
  Headline8 = {
    bg = "#35233f"
  },
  HopNextKey = {
    bold = true,
    fg = "#c884ff"
  },
  HopNextKey1 = {
    bold = true,
    fg = "#99e7ff"
  },
  HopNextKey2 = {
    fg = "#6d97b1"
  },
  HopUnmatched = {
    fg = "#5a4d7a"
  },
  IblIndent = {
    fg = "#3b2f4f",
    nocombine = true
  },
  IblScope = {
    fg = "#a5eaff",
    nocombine = true
  },
  Identifier = {
    fg = "#f694ff"
  },
  IlluminatedWordRead = {
    bg = "#3b2f4f"
  },
  IlluminatedWordText = {
    bg = "#3b2f4f"
  },
  IlluminatedWordWrite = {
    bg = "#3b2f4f"
  },
  IncSearch = {
    bg = "#ffca85",
    fg = "#221931"
  },
  IndentBlanklineChar = {
    fg = "#3b2f4f",
    nocombine = true
  },
  IndentBlanklineContextChar = {
    fg = "#a5eaff",
    nocombine = true
  },
  IndentLine = {
    fg = "#3b2f4f",
    nocombine = true
  },
  IndentLineCurrent = {
    fg = "#a5eaff",
    nocombine = true
  },
  Italic = {
    fg = "#edecee",
    italic = true
  },
  Keyword = {
    fg = "#72f1e5",
    italic = true
  },
  LazyProgressDone = {
    bold = true,
    fg = "#c884ff"
  },
  LazyProgressTodo = {
    bold = true,
    fg = "#3b2f4f"
  },
  LeapBackdrop = {
    fg = "#5a4d7a"
  },
  LeapLabel = {
    bold = true,
    fg = "#c884ff"
  },
  LeapMatch = {
    bg = "#c884ff",
    bold = true,
    fg = "#edecee"
  },
  LineNr = {
    fg = "#3b2f4f"
  },
  LineNrAbove = {
    fg = "#3b2f4f"
  },
  LineNrBelow = {
    fg = "#3b2f4f"
  },
  LspCodeLens = {
    fg = "#6e5f8f"
  },
  LspFloatWinBorder = {
    fg = "#8cc1d8"
  },
  LspFloatWinNormal = {
    bg = "#23182f"
  },
  LspInfoBorder = {
    bg = "#23182f",
    fg = "#8cc1d8"
  },
  LspInlayHint = {
    bg = "#322c48",
    fg = "#5a4d7a"
  },
  LspKindArray = "@punctuation.bracket",
  LspKindBoolean = "@boolean",
  LspKindClass = "@type",
  LspKindColor = "Special",
  LspKindConstant = "@constant",
  LspKindConstructor = "@constructor",
  LspKindEnum = "@lsp.type.enum",
  LspKindEnumMember = "@lsp.type.enumMember",
  LspKindEvent = "Special",
  LspKindField = "@variable.member",
  LspKindFile = "Normal",
  LspKindFolder = "Directory",
  LspKindFunction = "@function",
  LspKindInterface = "@lsp.type.interface",
  LspKindKey = "@variable.member",
  LspKindKeyword = "@lsp.type.keyword",
  LspKindMethod = "@function.method",
  LspKindModule = "@module",
  LspKindNamespace = "@module",
  LspKindNull = "@constant.builtin",
  LspKindNumber = "@number",
  LspKindObject = "@constant",
  LspKindOperator = "@operator",
  LspKindPackage = "@module",
  LspKindProperty = "@property",
  LspKindReference = "@markup.link",
  LspKindSnippet = "Conceal",
  LspKindString = "@string",
  LspKindStruct = "@lsp.type.struct",
  LspKindText = "@markup",
  LspKindTypeParameter = "@lsp.type.typeParameter",
  LspKindUnit = "@lsp.type.struct",
  LspKindValue = "@string",
  LspKindVariable = "@variable",
  LspReferenceRead = {
    bg = "#3b2f4f"
  },
  LspReferenceText = {
    bg = "#3b2f4f"
  },
  LspReferenceWrite = {
    bg = "#3b2f4f"
  },
  LspSagaBorderTitle = {
    fg = "#72f1e5"
  },
  LspSagaCodeActionBorder = {
    fg = "#82e2ff"
  },
  LspSagaCodeActionContent = {
    fg = "#a277ff"
  },
  LspSagaCodeActionTitle = {
    fg = "#a5eaff"
  },
  LspSagaDefPreviewBorder = {
    fg = "#61ffca"
  },
  LspSagaFinderSelection = {
    fg = "#2b2d43"
  },
  LspSagaHoverBorder = {
    fg = "#82e2ff"
  },
  LspSagaRenameBorder = {
    fg = "#61ffca"
  },
  LspSagaSignatureHelpBorder = {
    fg = "#ff6767"
  },
  LspSignatureActiveParameter = {
    bg = "#2a253f",
    bold = true
  },
  MatchParen = {
    bold = true,
    fg = "#ffca85"
  },
  MiniAnimateCursor = {
    nocombine = true,
    reverse = true
  },
  MiniAnimateNormalFloat = "NormalFloat",
  MiniClueBorder = "FloatBorder",
  MiniClueDescGroup = "DiagnosticFloatingWarn",
  MiniClueDescSingle = "NormalFloat",
  MiniClueNextKey = "DiagnosticFloatingHint",
  MiniClueNextKeyWithPostkeys = "DiagnosticFloatingError",
  MiniClueSeparator = "DiagnosticFloatingInfo",
  MiniClueTitle = "FloatTitle",
  MiniCompletionActiveParameter = {
    underline = true
  },
  MiniCursorword = {
    bg = "#3b2f4f"
  },
  MiniCursorwordCurrent = {
    bg = "#3b2f4f"
  },
  MiniDepsChangeAdded = "diffAdded",
  MiniDepsChangeRemoved = "diffRemoved",
  MiniDepsHint = "DiagnosticHint",
  MiniDepsInfo = "DiagnosticInfo",
  MiniDepsMsgBreaking = "DiagnosticWarn",
  MiniDepsPlaceholder = "Comment",
  MiniDepsTitle = "Title",
  MiniDepsTitleError = {
    bg = "#77373b",
    fg = "#221931"
  },
  MiniDepsTitleSame = "Comment",
  MiniDepsTitleUpdate = {
    bg = "#357765",
    fg = "#221931"
  },
  MiniDiffOverAdd = "DiffAdd",
  MiniDiffOverChange = "DiffText",
  MiniDiffOverContext = "DiffChange",
  MiniDiffOverDelete = "DiffDelete",
  MiniDiffSignAdd = {
    fg = "#357765"
  },
  MiniDiffSignChange = {
    fg = "#436b7b"
  },
  MiniDiffSignDelete = {
    fg = "#77373b"
  },
  MiniFilesBorder = "FloatBorder",
  MiniFilesBorderModified = "DiagnosticFloatingWarn",
  MiniFilesCursorLine = "CursorLine",
  MiniFilesDirectory = "Directory",
  MiniFilesFile = {
    fg = "#edecee"
  },
  MiniFilesNormal = "NormalFloat",
  MiniFilesTitle = "FloatTitle",
  MiniFilesTitleFocused = {
    bg = "#23182f",
    bold = true,
    fg = "#8cc1d8"
  },
  MiniHipatternsFixme = {
    bg = "#cc5252",
    bold = true,
    fg = "#221931"
  },
  MiniHipatternsHack = {
    bg = "#ffd49b",
    bold = true,
    fg = "#221931"
  },
  MiniHipatternsNote = {
    bg = "#72f1e5",
    bold = true,
    fg = "#221931"
  },
  MiniHipatternsTodo = {
    bg = "#99e7ff",
    bold = true,
    fg = "#221931"
  },
  MiniIconsAzure = {
    fg = "#99e7ff"
  },
  MiniIconsBlue = {
    fg = "#82e2ff"
  },
  MiniIconsCyan = {
    fg = "#72f1e5"
  },
  MiniIconsGreen = {
    fg = "#61ffca"
  },
  MiniIconsGrey = {
    fg = "#edecee"
  },
  MiniIconsOrange = {
    fg = "#ffca85"
  },
  MiniIconsPurple = {
    fg = "#a277ff"
  },
  MiniIconsRed = {
    fg = "#ff6767"
  },
  MiniIconsYellow = {
    fg = "#ffd49b"
  },
  MiniIndentscopePrefix = {
    nocombine = true
  },
  MiniIndentscopeSymbol = {
    fg = "#a5eaff",
    nocombine = true
  },
  MiniJump = {
    bg = "#c884ff",
    fg = "#ffffff"
  },
  MiniJump2dDim = "Comment",
  MiniJump2dSpot = {
    bold = true,
    fg = "#c884ff",
    nocombine = true
  },
  MiniJump2dSpotAhead = {
    bg = "#23182f",
    fg = "#72f1e5",
    nocombine = true
  },
  MiniJump2dSpotUnique = {
    bold = true,
    fg = "#ffca85",
    nocombine = true
  },
  MiniMapNormal = "NormalFloat",
  MiniMapSymbolCount = "Special",
  MiniMapSymbolLine = "Title",
  MiniMapSymbolView = "Delimiter",
  MiniNotifyBorder = "FloatBorder",
  MiniNotifyNormal = "NormalFloat",
  MiniNotifyTitle = "FloatTitle",
  MiniOperatorsExchangeFrom = "IncSearch",
  MiniPickBorder = "FloatBorder",
  MiniPickBorderBusy = "DiagnosticFloatingWarn",
  MiniPickBorderText = {
    bg = "#23182f",
    fg = "#72f1e5"
  },
  MiniPickHeader = "DiagnosticFloatingHint",
  MiniPickIconDirectory = "Directory",
  MiniPickIconFile = "MiniPickNormal",
  MiniPickMatchCurrent = "CursorLine",
  MiniPickMatchMarked = "Visual",
  MiniPickMatchRanges = "DiagnosticFloatingHint",
  MiniPickNormal = "NormalFloat",
  MiniPickPreviewLine = "CursorLine",
  MiniPickPreviewRegion = "IncSearch",
  MiniPickPrompt = {
    bg = "#23182f",
    fg = "#99e7ff"
  },
  MiniStarterCurrent = {
    nocombine = true
  },
  MiniStarterFooter = {
    fg = "#ffd49b",
    italic = true
  },
  MiniStarterHeader = {
    fg = "#82e2ff"
  },
  MiniStarterInactive = {
    fg = "#6e5f8f",
    italic = true
  },
  MiniStarterItem = {
    bg = "#2a1f3d",
    fg = "#edecee"
  },
  MiniStarterItemBullet = {
    fg = "#8cc1d8"
  },
  MiniStarterItemPrefix = {
    fg = "#ffd49b"
  },
  MiniStarterQuery = {
    fg = "#99e7ff"
  },
  MiniStarterSection = {
    fg = "#a5eaff"
  },
  MiniStatuslineDevinfo = {
    bg = "#3b2f4f",
    fg = "#c8bff2"
  },
  MiniStatuslineFileinfo = {
    bg = "#3b2f4f",
    fg = "#c8bff2"
  },
  MiniStatuslineFilename = {
    bg = "#211f2f",
    fg = "#c8bff2"
  },
  MiniStatuslineInactive = {
    bg = "#2a1f3d",
    fg = "#82e2ff"
  },
  MiniStatuslineModeCommand = {
    bg = "#ffd49b",
    bold = true,
    fg = "#221931"
  },
  MiniStatuslineModeInsert = {
    bg = "#61ffca",
    bold = true,
    fg = "#221931"
  },
  MiniStatuslineModeNormal = {
    bg = "#82e2ff",
    bold = true,
    fg = "#221931"
  },
  MiniStatuslineModeOther = {
    bg = "#72f1e5",
    bold = true,
    fg = "#221931"
  },
  MiniStatuslineModeReplace = {
    bg = "#ff6767",
    bold = true,
    fg = "#221931"
  },
  MiniStatuslineModeVisual = {
    bg = "#f694ff",
    bold = true,
    fg = "#221931"
  },
  MiniSurround = {
    bg = "#ffca85",
    fg = "#221931"
  },
  MiniTablineCurrent = {
    bg = "#3b2f4f",
    fg = "#edecee"
  },
  MiniTablineFill = {
    bg = "#221931"
  },
  MiniTablineHidden = {
    bg = "#2a1f3d",
    fg = "#7a6f9b"
  },
  MiniTablineModifiedCurrent = {
    bg = "#3b2f4f",
    fg = "#ffd49b"
  },
  MiniTablineModifiedHidden = {
    bg = "#2a1f3d",
    fg = "#bf9e7f"
  },
  MiniTablineModifiedVisible = {
    bg = "#2a1f3d",
    fg = "#ffd49b"
  },
  MiniTablineTabpagesection = {
    bg = "#3b2f4f",
    fg = "NONE"
  },
  MiniTablineVisible = {
    bg = "#2a1f3d",
    fg = "#edecee"
  },
  MiniTestEmphasis = {
    bold = true
  },
  MiniTestFail = {
    bold = true,
    fg = "#ff6767"
  },
  MiniTestPass = {
    bold = true,
    fg = "#61ffca"
  },
  MiniTrailspace = {
    bg = "#ff6767"
  },
  ModeMsg = {
    bold = true,
    fg = "#c8bff2"
  },
  MoreMsg = {
    fg = "#82e2ff"
  },
  MsgArea = {
    fg = "#c8bff2"
  },
  NavicIconsArray = "LspKindArray",
  NavicIconsBoolean = "LspKindBoolean",
  NavicIconsClass = "LspKindClass",
  NavicIconsColor = "LspKindColor",
  NavicIconsConstant = "LspKindConstant",
  NavicIconsConstructor = "LspKindConstructor",
  NavicIconsEnum = "LspKindEnum",
  NavicIconsEnumMember = "LspKindEnumMember",
  NavicIconsEvent = "LspKindEvent",
  NavicIconsField = "LspKindField",
  NavicIconsFile = "LspKindFile",
  NavicIconsFolder = "LspKindFolder",
  NavicIconsFunction = "LspKindFunction",
  NavicIconsInterface = "LspKindInterface",
  NavicIconsKey = "LspKindKey",
  NavicIconsKeyword = "LspKindKeyword",
  NavicIconsMethod = "LspKindMethod",
  NavicIconsModule = "LspKindModule",
  NavicIconsNamespace = "LspKindNamespace",
  NavicIconsNull = "LspKindNull",
  NavicIconsNumber = "LspKindNumber",
  NavicIconsObject = "LspKindObject",
  NavicIconsOperator = "LspKindOperator",
  NavicIconsPackage = "LspKindPackage",
  NavicIconsProperty = "LspKindProperty",
  NavicIconsReference = "LspKindReference",
  NavicIconsSnippet = "LspKindSnippet",
  NavicIconsString = "LspKindString",
  NavicIconsStruct = "LspKindStruct",
  NavicIconsText = "LspKindText",
  NavicIconsTypeParameter = "LspKindTypeParameter",
  NavicIconsUnit = "LspKindUnit",
  NavicIconsValue = "LspKindValue",
  NavicIconsVariable = "LspKindVariable",
  NavicSeparator = {
    bg = "NONE",
    fg = "#edecee"
  },
  NavicText = {
    bg = "NONE",
    fg = "#edecee"
  },
  NeoTreeDimText = {
    fg = "#3b2f4f"
  },
  NeoTreeFileName = {
    fg = "#c8bff2"
  },
  NeoTreeGitModified = {
    fg = "#ffca85"
  },
  NeoTreeGitStaged = {
    fg = "#7dffd4"
  },
  NeoTreeGitUntracked = {
    fg = "#f694ff"
  },
  NeoTreeNormal = {
    bg = "#23182f",
    fg = "#c8bff2"
  },
  NeoTreeNormalNC = {
    bg = "#23182f",
    fg = "#c8bff2"
  },
  NeoTreeTabActive = {
    bg = "#23182f",
    bold = true,
    fg = "#82e2ff"
  },
  NeoTreeTabInactive = {
    bg = "#1c1326",
    fg = "#5a4d7a"
  },
  NeoTreeTabSeparatorActive = {
    bg = "#23182f",
    fg = "#82e2ff"
  },
  NeoTreeTabSeparatorInactive = {
    bg = "#1c1326",
    fg = "#2a1f3d"
  },
  NeogitBranch = {
    fg = "#f694ff"
  },
  NeogitDiffAddHighlight = {
    bg = "#455765",
    fg = "#357765"
  },
  NeogitDiffContextHighlight = {
    bg = "#332746",
    fg = "#c8bff2"
  },
  NeogitDiffDeleteHighlight = {
    bg = "#532c42",
    fg = "#77373b"
  },
  NeogitHunkHeader = {
    bg = "#211f2f",
    fg = "#edecee"
  },
  NeogitHunkHeaderHighlight = {
    bg = "#3b2f4f",
    fg = "#82e2ff"
  },
  NeogitRemote = {
    fg = "#a277ff"
  },
  NeotestAdapterName = {
    bold = true,
    fg = "#a277ff"
  },
  NeotestBorder = {
    fg = "#82e2ff"
  },
  NeotestDir = {
    fg = "#82e2ff"
  },
  NeotestExpandMarker = {
    fg = "#c8bff2"
  },
  NeotestFailed = {
    fg = "#ff6767"
  },
  NeotestFile = {
    fg = "#72f1e5"
  },
  NeotestFocused = {
    fg = "#ffd49b"
  },
  NeotestIndent = {
    fg = "#c8bff2"
  },
  NeotestMarked = {
    fg = "#82e2ff"
  },
  NeotestNamespace = {
    fg = "#94ffdb"
  },
  NeotestPassed = {
    fg = "#61ffca"
  },
  NeotestRunning = {
    fg = "#ffd49b"
  },
  NeotestSkipped = {
    fg = "#82e2ff"
  },
  NeotestTarget = {
    fg = "#82e2ff"
  },
  NeotestTest = {
    fg = "#c8bff2"
  },
  NeotestWinSelect = {
    fg = "#82e2ff"
  },
  NoiceCmdlineIconInput = {
    fg = "#ffd49b"
  },
  NoiceCmdlineIconLua = {
    fg = "#a5eaff"
  },
  NoiceCmdlinePopupBorderInput = {
    fg = "#ffd49b"
  },
  NoiceCmdlinePopupBorderLua = {
    fg = "#a5eaff"
  },
  NoiceCmdlinePopupTitleInput = {
    fg = "#ffd49b"
  },
  NoiceCmdlinePopupTitleLua = {
    fg = "#a5eaff"
  },
  NoiceCompletionItemKindArray = "LspKindArray",
  NoiceCompletionItemKindBoolean = "LspKindBoolean",
  NoiceCompletionItemKindClass = "LspKindClass",
  NoiceCompletionItemKindColor = "LspKindColor",
  NoiceCompletionItemKindConstant = "LspKindConstant",
  NoiceCompletionItemKindConstructor = "LspKindConstructor",
  NoiceCompletionItemKindDefault = {
    bg = "NONE",
    fg = "#c8bff2"
  },
  NoiceCompletionItemKindEnum = "LspKindEnum",
  NoiceCompletionItemKindEnumMember = "LspKindEnumMember",
  NoiceCompletionItemKindEvent = "LspKindEvent",
  NoiceCompletionItemKindField = "LspKindField",
  NoiceCompletionItemKindFile = "LspKindFile",
  NoiceCompletionItemKindFolder = "LspKindFolder",
  NoiceCompletionItemKindFunction = "LspKindFunction",
  NoiceCompletionItemKindInterface = "LspKindInterface",
  NoiceCompletionItemKindKey = "LspKindKey",
  NoiceCompletionItemKindKeyword = "LspKindKeyword",
  NoiceCompletionItemKindMethod = "LspKindMethod",
  NoiceCompletionItemKindModule = "LspKindModule",
  NoiceCompletionItemKindNamespace = "LspKindNamespace",
  NoiceCompletionItemKindNull = "LspKindNull",
  NoiceCompletionItemKindNumber = "LspKindNumber",
  NoiceCompletionItemKindObject = "LspKindObject",
  NoiceCompletionItemKindOperator = "LspKindOperator",
  NoiceCompletionItemKindPackage = "LspKindPackage",
  NoiceCompletionItemKindProperty = "LspKindProperty",
  NoiceCompletionItemKindReference = "LspKindReference",
  NoiceCompletionItemKindSnippet = "LspKindSnippet",
  NoiceCompletionItemKindString = "LspKindString",
  NoiceCompletionItemKindStruct = "LspKindStruct",
  NoiceCompletionItemKindText = "LspKindText",
  NoiceCompletionItemKindTypeParameter = "LspKindTypeParameter",
  NoiceCompletionItemKindUnit = "LspKindUnit",
  NoiceCompletionItemKindValue = "LspKindValue",
  NoiceCompletionItemKindVariable = "LspKindVariable",
  NonText = {
    fg = "#5a4d7a"
  },
  Normal = {
    bg = "#2a1f3d",
    fg = "#edecee"
  },
  NormalFloat = {
    bg = "#23182f",
    fg = "#edecee"
  },
  NormalNC = {
    bg = "#2a1f3d",
    fg = "#edecee"
  },
  NormalSB = {
    bg = "#23182f",
    fg = "#c8bff2"
  },
  NotifyBackground = {
    bg = "#2a1f3d",
    fg = "#edecee"
  },
  NotifyDEBUGBody = {
    bg = "#2a1f3d",
    fg = "#edecee"
  },
  NotifyDEBUGBorder = {
    bg = "#2a1f3d",
    fg = "#3e3256"
  },
  NotifyDEBUGIcon = {
    fg = "#6e5f8f"
  },
  NotifyDEBUGTitle = {
    fg = "#6e5f8f"
  },
  NotifyERRORBody = {
    bg = "#2a1f3d",
    fg = "#edecee"
  },
  NotifyERRORBorder = {
    bg = "#2a1f3d",
    fg = "#5b2e43"
  },
  NotifyERRORIcon = {
    fg = "#cc5252"
  },
  NotifyERRORTitle = {
    fg = "#cc5252"
  },
  NotifyINFOBody = {
    bg = "#2a1f3d",
    fg = "#edecee"
  },
  NotifyINFOBorder = {
    bg = "#2a1f3d",
    fg = "#4b5b77"
  },
  NotifyINFOIcon = {
    fg = "#99e7ff"
  },
  NotifyINFOTitle = {
    fg = "#99e7ff"
  },
  NotifyTRACEBody = {
    bg = "#2a1f3d",
    fg = "#edecee"
  },
  NotifyTRACEBorder = {
    bg = "#2a1f3d",
    fg = "#4e3977"
  },
  NotifyTRACEIcon = {
    fg = "#a277ff"
  },
  NotifyTRACETitle = {
    fg = "#a277ff"
  },
  NotifyWARNBody = {
    bg = "#2a1f3d",
    fg = "#edecee"
  },
  NotifyWARNBorder = {
    bg = "#2a1f3d",
    fg = "#6a5559"
  },
  NotifyWARNIcon = {
    fg = "#ffd49b"
  },
  NotifyWARNTitle = {
    fg = "#ffd49b"
  },
  NvimTreeFolderIcon = {
    bg = "NONE",
    fg = "#82e2ff"
  },
  NvimTreeGitDeleted = {
    fg = "#77373b"
  },
  NvimTreeGitDirty = {
    fg = "#436b7b"
  },
  NvimTreeGitNew = {
    fg = "#357765"
  },
  NvimTreeImageFile = {
    fg = "#c8bff2"
  },
  NvimTreeIndentMarker = {
    fg = "#3b2f4f"
  },
  NvimTreeNormal = {
    bg = "#23182f",
    fg = "#c8bff2"
  },
  NvimTreeNormalNC = {
    bg = "#23182f",
    fg = "#c8bff2"
  },
  NvimTreeOpenedFile = {
    bg = "#211f2f"
  },
  NvimTreeRootFolder = {
    bold = true,
    fg = "#82e2ff"
  },
  NvimTreeSpecialFile = {
    fg = "#a277ff",
    underline = true
  },
  NvimTreeSymlink = {
    fg = "#82e2ff"
  },
  NvimTreeWinSeparator = {
    bg = "#23182f",
    fg = "#23182f"
  },
  OctoDetailsLabel = {
    bold = true,
    fg = "#a5eaff"
  },
  OctoDetailsValue = "@variable.member",
  OctoDirty = {
    bold = true,
    fg = "#ffca85"
  },
  OctoIssueTitle = {
    bold = true,
    fg = "#a277ff"
  },
  OctoStateChangesRequested = "DiagnosticVirtualTextWarn",
  OctoStateClosed = "DiagnosticVirtualTextError",
  OctoStateMerged = {
    bg = "#3e2b50",
    fg = "#f694ff"
  },
  OctoStateOpen = "DiagnosticVirtualTextHint",
  OctoStatePending = "DiagnosticVirtualTextWarn",
  OctoStatusColumn = {
    fg = "#a5eaff"
  },
  Operator = {
    fg = "#5593a6"
  },
  Pmenu = {
    bg = "#23182f",
    fg = "#edecee"
  },
  PmenuMatch = {
    bg = "#23182f",
    fg = "#a5eaff"
  },
  PmenuMatchSel = {
    bg = "#382c4b",
    fg = "#a5eaff"
  },
  PmenuSbar = {
    bg = "#2d2339"
  },
  PmenuSel = {
    bg = "#382c4b"
  },
  PmenuThumb = {
    bg = "#3b2f4f"
  },
  PreProc = {
    fg = "#72f1e5"
  },
  Question = {
    fg = "#82e2ff"
  },
  QuickFixLine = {
    bg = "#2b2d43",
    bold = true
  },
  RainbowDelimiterBlue = {
    fg = "#82e2ff"
  },
  RainbowDelimiterCyan = {
    fg = "#72f1e5"
  },
  RainbowDelimiterGreen = {
    fg = "#61ffca"
  },
  RainbowDelimiterOrange = {
    fg = "#ffca85"
  },
  RainbowDelimiterRed = {
    fg = "#ff6767"
  },
  RainbowDelimiterViolet = {
    fg = "#a277ff"
  },
  RainbowDelimiterYellow = {
    fg = "#ffd49b"
  },
  ReferencesCount = {
    fg = "#a277ff"
  },
  ReferencesIcon = {
    fg = "#82e2ff"
  },
  RenderMarkdownBullet = {
    fg = "#ffca85"
  },
  RenderMarkdownCode = {
    bg = "#23182f"
  },
  RenderMarkdownCodeInline = "@markup.raw.markdown_inline",
  RenderMarkdownDash = {
    fg = "#ffca85"
  },
  RenderMarkdownH1Bg = {
    bg = "#333350"
  },
  RenderMarkdownH1Fg = {
    bold = true,
    fg = "#82e2ff"
  },
  RenderMarkdownH2Bg = {
    bg = "#3f3146"
  },
  RenderMarkdownH2Fg = {
    bold = true,
    fg = "#ffd49b"
  },
  RenderMarkdownH3Bg = {
    bg = "#30354b"
  },
  RenderMarkdownH3Fg = {
    bold = true,
    fg = "#61ffca"
  },
  RenderMarkdownH4Bg = {
    bg = "#31344e"
  },
  RenderMarkdownH4Fg = {
    bold = true,
    fg = "#72f1e5"
  },
  RenderMarkdownH5Bg = {
    bg = "#3e2b50"
  },
  RenderMarkdownH5Fg = {
    bold = true,
    fg = "#f694ff"
  },
  RenderMarkdownH6Bg = {
    bg = "#362850"
  },
  RenderMarkdownH6Fg = {
    bold = true,
    fg = "#a277ff"
  },
  RenderMarkdownH7Bg = {
    bg = "#3f3044"
  },
  RenderMarkdownH7Fg = {
    bold = true,
    fg = "#ffca85"
  },
  RenderMarkdownH8Bg = {
    bg = "#3f2641"
  },
  RenderMarkdownH8Fg = {
    bold = true,
    fg = "#ff6767"
  },
  RenderMarkdownTableHead = {
    fg = "#ff6767"
  },
  RenderMarkdownTableRow = {
    fg = "#ffca85"
  },
  ScrollbarError = {
    bg = "NONE",
    fg = "#cc5252"
  },
  ScrollbarErrorHandle = {
    bg = "#211f2f",
    fg = "#cc5252"
  },
  ScrollbarHandle = {
    bg = "#211f2f",
    fg = "NONE"
  },
  ScrollbarHint = {
    bg = "NONE",
    fg = "#72f1e5"
  },
  ScrollbarHintHandle = {
    bg = "#211f2f",
    fg = "#72f1e5"
  },
  ScrollbarInfo = {
    bg = "NONE",
    fg = "#99e7ff"
  },
  ScrollbarInfoHandle = {
    bg = "#211f2f",
    fg = "#99e7ff"
  },
  ScrollbarMisc = {
    bg = "NONE",
    fg = "#a277ff"
  },
  ScrollbarMiscHandle = {
    bg = "#211f2f",
    fg = "#a277ff"
  },
  ScrollbarSearch = {
    bg = "NONE",
    fg = "#ffca85"
  },
  ScrollbarSearchHandle = {
    bg = "#211f2f",
    fg = "#ffca85"
  },
  ScrollbarWarn = {
    bg = "NONE",
    fg = "#ffd49b"
  },
  ScrollbarWarnHandle = {
    bg = "#211f2f",
    fg = "#ffd49b"
  },
  Search = {
    bg = "#2d414d",
    fg = "#edecee"
  },
  SidekickDiffAdd = "DiffAdd",
  SidekickDiffContext = "DiffChange",
  SidekickDiffDelete = "DiffDelete",
  SidekickSignAdd = {
    fg = "#357765"
  },
  SidekickSignChange = {
    fg = "#436b7b"
  },
  SidekickSignDelete = {
    fg = "#77373b"
  },
  SignColumn = {
    bg = "#2a1f3d",
    fg = "#3b2f4f"
  },
  SignColumnSB = {
    bg = "#23182f",
    fg = "#3b2f4f"
  },
  SnacksDashboardDesc = {
    fg = "#72f1e5"
  },
  SnacksDashboardDir = {
    fg = "#5a4d7a"
  },
  SnacksDashboardFooter = {
    fg = "#a5eaff"
  },
  SnacksDashboardHeader = {
    fg = "#82e2ff"
  },
  SnacksDashboardIcon = {
    fg = "#a5eaff"
  },
  SnacksDashboardKey = {
    fg = "#ffca85"
  },
  SnacksDashboardSpecial = {
    fg = "#a277ff"
  },
  SnacksFooterDesc = "SnacksProfilerBadgeInfo",
  SnacksFooterKey = "SnacksProfilerIconInfo",
  SnacksGhDiffHeader = {
    bg = "#363350",
    fg = "#a5eaff"
  },
  SnacksGhLabel = {
    bold = true,
    fg = "#a5eaff"
  },
  SnacksIndent = {
    fg = "#3b2f4f",
    nocombine = true
  },
  SnacksIndent1 = {
    fg = "#82e2ff",
    nocombine = true
  },
  SnacksIndent2 = {
    fg = "#ffd49b",
    nocombine = true
  },
  SnacksIndent3 = {
    fg = "#61ffca",
    nocombine = true
  },
  SnacksIndent4 = {
    fg = "#72f1e5",
    nocombine = true
  },
  SnacksIndent5 = {
    fg = "#f694ff",
    nocombine = true
  },
  SnacksIndent6 = {
    fg = "#a277ff",
    nocombine = true
  },
  SnacksIndent7 = {
    fg = "#ffca85",
    nocombine = true
  },
  SnacksIndent8 = {
    fg = "#ff6767",
    nocombine = true
  },
  SnacksIndentScope = {
    fg = "#a5eaff",
    nocombine = true
  },
  SnacksInputBorder = {
    fg = "#ffd49b"
  },
  SnacksInputIcon = {
    fg = "#a5eaff"
  },
  SnacksInputTitle = {
    fg = "#ffd49b"
  },
  SnacksNotifierBorderDebug = {
    bg = "#2a1f3d",
    fg = "#45395e"
  },
  SnacksNotifierBorderError = {
    bg = "#2a1f3d",
    fg = "#6b3345"
  },
  SnacksNotifierBorderInfo = {
    bg = "#2a1f3d",
    fg = "#566f8b"
  },
  SnacksNotifierBorderTrace = {
    bg = "#2a1f3d",
    fg = "#5a428b"
  },
  SnacksNotifierBorderWarn = {
    bg = "#2a1f3d",
    fg = "#7f6763"
  },
  SnacksNotifierDebug = {
    bg = "#2a1f3d",
    fg = "#edecee"
  },
  SnacksNotifierError = {
    bg = "#2a1f3d",
    fg = "#edecee"
  },
  SnacksNotifierIconDebug = {
    fg = "#6e5f8f"
  },
  SnacksNotifierIconError = {
    fg = "#cc5252"
  },
  SnacksNotifierIconInfo = {
    fg = "#99e7ff"
  },
  SnacksNotifierIconTrace = {
    fg = "#a277ff"
  },
  SnacksNotifierIconWarn = {
    fg = "#ffd49b"
  },
  SnacksNotifierInfo = {
    bg = "#2a1f3d",
    fg = "#edecee"
  },
  SnacksNotifierTitleDebug = {
    fg = "#6e5f8f"
  },
  SnacksNotifierTitleError = {
    fg = "#cc5252"
  },
  SnacksNotifierTitleInfo = {
    fg = "#99e7ff"
  },
  SnacksNotifierTitleTrace = {
    fg = "#a277ff"
  },
  SnacksNotifierTitleWarn = {
    fg = "#ffd49b"
  },
  SnacksNotifierTrace = {
    bg = "#2a1f3d",
    fg = "#edecee"
  },
  SnacksNotifierWarn = {
    bg = "#2a1f3d",
    fg = "#edecee"
  },
  SnacksPickerBoxTitle = {
    bg = "#23182f",
    fg = "#ffca85"
  },
  SnacksPickerInputBorder = {
    bg = "#23182f",
    fg = "#ffca85"
  },
  SnacksPickerInputTitle = {
    bg = "#23182f",
    fg = "#ffca85"
  },
  SnacksPickerPickWin = {
    bg = "#2d414d",
    bold = true,
    fg = "#edecee"
  },
  SnacksPickerPickWinCurrent = {
    bg = "#c884ff",
    bold = true,
    fg = "#edecee"
  },
  SnacksPickerSelected = {
    fg = "#c884ff"
  },
  SnacksPickerToggle = "SnacksProfilerBadgeInfo",
  SnacksProfilerBadgeInfo = {
    bg = "#363350",
    fg = "#a5eaff"
  },
  SnacksProfilerBadgeTrace = {
    bg = "#322c48",
    fg = "#5a4d7a"
  },
  SnacksProfilerIconInfo = {
    bg = "#4f5c77",
    fg = "#a5eaff"
  },
  SnacksProfilerIconTrace = {
    bg = "#41455d",
    fg = "#5a4d7a"
  },
  SnacksZenIcon = {
    fg = "#a277ff"
  },
  Sneak = {
    bg = "#f694ff",
    fg = "#211f2f"
  },
  SneakScope = {
    bg = "#2b2d43"
  },
  Special = {
    fg = "#a5eaff"
  },
  SpecialKey = {
    fg = "#5a4d7a"
  },
  SpellBad = {
    sp = "#cc5252",
    undercurl = true
  },
  SpellCap = {
    sp = "#ffd49b",
    undercurl = true
  },
  SpellLocal = {
    sp = "#99e7ff",
    undercurl = true
  },
  SpellRare = {
    sp = "#72f1e5",
    undercurl = true
  },
  Statement = {
    fg = "#f694ff"
  },
  StatusLine = {
    bg = "#2a1f3d",
    fg = "#c8bff2"
  },
  StatusLineNC = {
    bg = "#2a1f3d",
    fg = "#3b2f4f"
  },
  String = {
    fg = "#61ffca"
  },
  Substitute = {
    bg = "#ff6767",
    fg = "#221931"
  },
  SupermavenSuggestion = {
    fg = "#786395"
  },
  TabLine = {
    bg = "#2a1f3d",
    fg = "#3b2f4f"
  },
  TabLineFill = {
    bg = "#221931"
  },
  TabLineSel = {
    bg = "#82e2ff",
    fg = "#221931"
  },
  TargetWord = {
    fg = "#72f1e5"
  },
  TelescopeBorder = {
    bg = "#23182f",
    fg = "#8cc1d8"
  },
  TelescopeNormal = {
    bg = "#23182f",
    fg = "#edecee"
  },
  TelescopePromptBorder = {
    bg = "#23182f",
    fg = "#ffca85"
  },
  TelescopePromptTitle = {
    bg = "#23182f",
    fg = "#ffca85"
  },
  TelescopeResultsComment = {
    fg = "#5a4d7a"
  },
  Title = {
    bold = true,
    fg = "#82e2ff"
  },
  Todo = {
    bg = "#ffd49b",
    fg = "#2a1f3d"
  },
  TreesitterContext = {
    bg = "#382c4b"
  },
  TroubleCount = {
    bg = "#3b2f4f",
    fg = "#f694ff"
  },
  TroubleNormal = {
    bg = "#23182f",
    fg = "#edecee"
  },
  TroubleText = {
    fg = "#c8bff2"
  },
  Type = {
    fg = "#a5eaff"
  },
  Underlined = {
    underline = true
  },
  VertSplit = {
    fg = "#221931"
  },
  VimwikiHR = {
    bg = "NONE",
    fg = "#ffd49b"
  },
  VimwikiHeader1 = {
    bg = "NONE",
    bold = true,
    fg = "#82e2ff"
  },
  VimwikiHeader2 = {
    bg = "NONE",
    bold = true,
    fg = "#ffd49b"
  },
  VimwikiHeader3 = {
    bg = "NONE",
    bold = true,
    fg = "#61ffca"
  },
  VimwikiHeader4 = {
    bg = "NONE",
    bold = true,
    fg = "#72f1e5"
  },
  VimwikiHeader5 = {
    bg = "NONE",
    bold = true,
    fg = "#f694ff"
  },
  VimwikiHeader6 = {
    bg = "NONE",
    bold = true,
    fg = "#a277ff"
  },
  VimwikiHeader7 = {
    bg = "NONE",
    bold = true,
    fg = "#ffca85"
  },
  VimwikiHeader8 = {
    bg = "NONE",
    bold = true,
    fg = "#ff6767"
  },
  VimwikiHeaderChar = {
    bg = "NONE",
    fg = "#ffd49b"
  },
  VimwikiLink = {
    bg = "NONE",
    fg = "#82e2ff"
  },
  VimwikiList = {
    bg = "NONE",
    fg = "#ffca85"
  },
  VimwikiMarkers = {
    bg = "NONE",
    fg = "#82e2ff"
  },
  VimwikiTag = {
    bg = "NONE",
    fg = "#61ffca"
  },
  Visual = {
    bg = "#2b2d43"
  },
  VisualNOS = {
    bg = "#2b2d43"
  },
  WarningMsg = {
    fg = "#ffd49b"
  },
  WhichKey = {
    fg = "#72f1e5"
  },
  WhichKeyDesc = {
    fg = "#f694ff"
  },
  WhichKeyGroup = {
    fg = "#82e2ff"
  },
  WhichKeyNormal = {
    bg = "#23182f"
  },
  WhichKeySeparator = {
    fg = "#6e5f8f"
  },
  WhichKeyValue = {
    fg = "#7a6f9b"
  },
  Whitespace = {
    fg = "#3b2f4f"
  },
  WildMenu = {
    bg = "#2b2d43"
  },
  WinBar = "StatusLine",
  WinBarNC = "StatusLineNC",
  WinSeparator = {
    bold = true,
    fg = "#221931"
  },
  YankyPut = "Search",
  YankyYanked = "IncSearch",
  debugBreakpoint = {
    bg = "#353350",
    fg = "#99e7ff"
  },
  debugPC = {
    bg = "#23182f"
  },
  diffAdded = {
    bg = "#455765",
    fg = "#357765"
  },
  diffChanged = {
    bg = "#35324d",
    fg = "#436b7b"
  },
  diffFile = {
    fg = "#82e2ff"
  },
  diffIndexLine = {
    fg = "#f694ff"
  },
  diffLine = {
    fg = "#6e5f8f"
  },
  diffNewFile = {
    bg = "#455765",
    fg = "#a5eaff"
  },
  diffOldFile = {
    bg = "#532c42",
    fg = "#a5eaff"
  },
  diffRemoved = {
    bg = "#532c42",
    fg = "#77373b"
  },
  dosIniLabel = "@property",
  healthError = {
    fg = "#cc5252"
  },
  healthSuccess = {
    fg = "#7dffd4"
  },
  healthWarning = {
    fg = "#ffd49b"
  },
  helpCommand = {
    bg = "#786395",
    fg = "#82e2ff"
  },
  helpExample = {
    fg = "#6e5f8f"
  },
  htmlH1 = {
    bold = true,
    fg = "#f694ff"
  },
  htmlH2 = {
    bold = true,
    fg = "#82e2ff"
  },
  illuminatedCurWord = {
    bg = "#3b2f4f"
  },
  illuminatedWord = {
    bg = "#3b2f4f"
  },
  lCursor = {
    bg = "#edecee",
    fg = "#2a1f3d"
  },
  qfFileName = {
    fg = "#82e2ff"
  },
  qfLineNr = {
    fg = "#7a6f9b"
  }
}
