local theme = {}

-- ============================================================
-- Earth Spirit Theme - "The Stone Guardian"
-- ============================================================
-- Philosophy: An ancient jade statue awakened from a mountain
-- temple. The cold permanence of stone, the living warmth of
-- jade energy, the discipline of a monk who moves mountains
-- with a single touch. This theme is stone given consciousness.
--
-- Not a green theme. A stone theme with jade spirit running
-- through every vein, like emerald light through granite cracks.
-- ============================================================

theme.colors = {
    -- Base colors - Ancient mountain temple at dusk
    fg = "#A59B88",          -- Mountain dust (primary text)
    inverse_fg = "#151a14",  -- Deep temple shadow (float/surface bg)
    bg = "#0f1210",          -- Ancient stone (main background)
    accent_bg = "#181e17",   -- Worn temple floor (surface bg)
    link = "#5EB38A",        -- Geomagnetic grip (links/URLs)
    accent = "#5FA874",      -- Jade core (accent)
    border = "#4F574D",      -- Granite shadow (borders, punctuation)

    -- Syntax highlighting - Stone and jade palette
    red = "#B88A62",         -- Boulder smash (errors, deleted)
    orange = "#C19A5C",      -- Temple bronze (constants, numbers)
    yellow = "#A59B88",      -- Mountain dust (strings, warnings)
    green = "#62C09A",       -- Spirit jade (strings, additions)
    cyan = "#7CC9B5",        -- Enchant remnant (types, teal)
    blue = "#727A70",        -- Stone guardian (functions)
    purple = "#8a7a9c",      -- Twilight temple (keywords, statements)
    grey = "#6A725F",        -- Earth crack (comments)

    -- Earth Spirit-specific colors
    earth_jade = "#5EB38A",       -- Geomagnetic grip
    stone_guardian = "#727A70",   -- Animated stone body
    mountain_dust = "#A59B88",    -- Dust clouds
    temple_bronze = "#C19A5C",    -- Ancient artifact metal
    spirit_jade = "#62C09A",      -- Spirit energy
    granite_shadow = "#4F574D",   -- Deep rock
    jade_shard = "#74C489",       -- Remnant fragment
    weathered_rock = "#808579",   -- Old mountain stone
    jade_core = "#5FA874",        -- Living jade
    spirit_emerald = "#68D4A0",   -- Glowing minerals
    ancient_mineral = "#8AB89A",  -- Enchanted minerals
    boulder_smash = "#B88A62",    -- Sandstone impact
    rolling_boulder = "#7B8478",  -- Moving granite
    earth_crack = "#6A725F",      -- Fractured stone
    enchant_remnant = "#7CC9B5",  -- Spirit-infused jade
    magnetize = "#68D4A0",        -- Glowing minerals
    deep_earth = "#1a2018",       -- Underground cavern
    parchment_anc = "#c8c4b4",    -- Ancient scroll

    -- UI colors - Stone and jade readable
    folded_bg = "#161c15",
    cursor_fg = "#0f1210",
    cursor_bg = "#5EB38A",
    line_number_fg = "#4F574D",
    line_number_active_fg = "#A59B88",
    sign_add = "#62C09A",
    sign_change = "#C19A5C",
    sign_delete = "#B88A62",
    indent_guide = "#1e261c",
    indent_guide_active = "#4F574D",
    visual = "#1e2a1c",
    match_paren = "#2a3428",
    error_red = "#B88A62",
    quickfix_line = "#161c15",
    title = "#74C489",
    parameter = "#A59B88",
    dark_red = "#702820",
    white = "#A59B88",
    black = "#000000",

    -- Extended UI palette
    gray = "#1e261c",
    gray3 = "#2e362c",
    gray4 = "#4F574D",
    gray6 = "#6A725F",
    cyan2 = "#7CC9B5",
    purple3 = "#8a7a9c",
}

theme.groups = {
    -- Base groups
    Normal = { fg = theme.colors.fg, bg = theme.colors.bg },
    NormalFloat = { fg = theme.colors.fg, bg = theme.colors.inverse_fg },
    FloatBorder = { fg = theme.colors.border, bg = theme.colors.inverse_fg },
    FloatTitle = { fg = theme.colors.spirit_emerald, bg = theme.colors.inverse_fg, bold = true },

    -- Syntax groups
    Comment = { fg = theme.colors.grey, italic = true },
    Constant = { fg = theme.colors.orange },
    String = { fg = theme.colors.green },
    Character = { fg = theme.colors.green },
    Number = { fg = theme.colors.orange },
    Boolean = { fg = theme.colors.orange },
    Float = { fg = theme.colors.orange },

    Identifier = { fg = theme.colors.cyan },
    Function = { fg = theme.colors.blue, bold = true },

    Statement = { fg = theme.colors.purple },
    Conditional = { fg = theme.colors.purple },
    Repeat = { fg = theme.colors.purple },
    Label = { fg = theme.colors.purple },
    Operator = { fg = theme.colors.fg },
    Keyword = { fg = theme.colors.purple, italic = true },
    Exception = { fg = theme.colors.red },

    PreProc = { fg = theme.colors.weathered_rock },
    Include = { fg = theme.colors.purple },
    Define = { fg = theme.colors.weathered_rock },
    Macro = { fg = theme.colors.weathered_rock },
    PreCondit = { fg = theme.colors.weathered_rock },

    Type = { fg = theme.colors.cyan },
    StorageClass = { fg = theme.colors.purple },
    Structure = { fg = theme.colors.weathered_rock },
    Typedef = { fg = theme.colors.cyan },

    Special = { fg = theme.colors.earth_jade },
    SpecialChar = { fg = theme.colors.red },
    Tag = { fg = theme.colors.blue },
    Delimiter = { fg = theme.colors.fg },
    SpecialComment = { fg = theme.colors.grey, bold = true },
    Debug = { fg = theme.colors.red },

    Underlined = { fg = theme.colors.link, underline = true },
    Bold = { bold = true },
    Italic = { italic = true },

    -- UI groups
    LineNr = { fg = theme.colors.line_number_fg },
    CursorLineNr = { fg = theme.colors.line_number_active_fg, bold = true },
    CursorLine = { bg = theme.colors.visual },
    CursorColumn = { bg = theme.colors.visual },
    ColorColumn = { bg = theme.colors.visual },

    SignColumn = { fg = theme.colors.grey, bg = theme.colors.bg },
    FoldColumn = { fg = theme.colors.grey, bg = theme.colors.bg },
    Folded = { fg = theme.colors.grey, bg = theme.colors.folded_bg, italic = true },

    Pmenu = { fg = theme.colors.fg, bg = theme.colors.inverse_fg },
    PmenuSel = { fg = theme.colors.inverse_fg, bg = theme.colors.spirit_emerald, bold = true },
    PmenuSbar = { bg = theme.colors.gray3 },
    PmenuThumb = { bg = theme.colors.border },

    StatusLine = { fg = theme.colors.fg, bg = theme.colors.accent_bg },
    StatusLineNC = { fg = theme.colors.grey, bg = theme.colors.accent_bg },
    WinSeparator = { fg = theme.colors.border },
    VertSplit = { fg = theme.colors.border },

    TabLine = { fg = theme.colors.grey, bg = theme.colors.accent_bg },
    TabLineSel = { fg = theme.colors.spirit_emerald, bg = theme.colors.bg, bold = true },
    TabLineFill = { bg = theme.colors.accent_bg },

    Title = { fg = theme.colors.title, bold = true },
    Question = { fg = theme.colors.mountain_dust },
    ModeMsg = { fg = theme.colors.spirit_emerald },
    MoreMsg = { fg = theme.colors.spirit_emerald },

    -- Diagnostic groups
    DiagnosticError = { fg = theme.colors.red },
    DiagnosticWarn = { fg = theme.colors.yellow },
    DiagnosticInfo = { fg = theme.colors.spirit_emerald },
    DiagnosticHint = { fg = theme.colors.mountain_dust },
    DiagnosticUnderlineError = { sp = theme.colors.red, undercurl = true },
    DiagnosticUnderlineWarn = { sp = theme.colors.yellow, undercurl = true },
    DiagnosticUnderlineInfo = { sp = theme.colors.spirit_emerald, undercurl = true },
    DiagnosticUnderlineHint = { sp = theme.colors.mountain_dust, undercurl = true },

    -- Git groups
    DiffAdd = { fg = theme.colors.green, bg = "#161e14" },
    DiffChange = { fg = theme.colors.yellow, bg = "#1e1e14" },
    DiffDelete = { fg = theme.colors.red, bg = "#1e1414" },
    DiffText = { fg = theme.colors.fg, bg = "#1e1e14" },

    gitcommitSummary = { fg = theme.colors.green, bold = true },
    gitcommitBranch = { fg = theme.colors.spirit_emerald },

    -- LSP groups
    LspReferenceText = { bg = theme.colors.visual },
    LspReferenceRead = { bg = theme.colors.visual },
    LspReferenceWrite = { bg = theme.colors.match_paren, bold = true },
    LspSignatureActiveParameter = { fg = theme.colors.spirit_emerald, bold = true },

    -- Tree-sitter groups
    ["@comment"] = { link = "Comment" },
    ["@string"] = { link = "String" },
    ["@string.special"] = { fg = theme.colors.jade_shard },
    ["@character"] = { link = "Character" },
    ["@number"] = { link = "Number" },
    ["@boolean"] = { link = "Boolean" },
    ["@float"] = { link = "Float" },

    ["@function"] = { fg = theme.colors.blue, bold = true },
    ["@function.call"] = { fg = theme.colors.blue },
    ["@method"] = { fg = theme.colors.blue },
    ["@method.call"] = { fg = theme.colors.blue },
    ["@constructor"] = { fg = theme.colors.cyan },
    ["@parameter"] = { fg = theme.colors.parameter },

    ["@keyword"] = { fg = theme.colors.purple, italic = true },
    ["@keyword.function"] = { fg = theme.colors.purple, italic = true },
    ["@keyword.return"] = { fg = theme.colors.purple, italic = true },
    ["@conditional"] = { link = "Conditional" },
    ["@repeat"] = { link = "Repeat" },
    ["@debug"] = { link = "Debug" },
    ["@label"] = { link = "Label" },
    ["@include"] = { link = "Include" },
    ["@exception"] = { fg = theme.colors.red },

    ["@type"] = { fg = theme.colors.cyan },
    ["@type.builtin"] = { fg = theme.colors.cyan, italic = true },
    ["@structure"] = { fg = theme.colors.weathered_rock },
    ["@namespace"] = { fg = theme.colors.weathered_rock },

    ["@variable"] = { fg = theme.colors.fg },
    ["@variable.builtin"] = { fg = theme.colors.orange, italic = true },
    ["@constant"] = { fg = theme.colors.orange },
    ["@constant.builtin"] = { fg = theme.colors.orange, bold = true },
    ["@property"] = { fg = theme.colors.cyan2 },

    ["@operator"] = { fg = theme.colors.fg },
    ["@punctuation.delimiter"] = { fg = theme.colors.border },
    ["@punctuation.bracket"] = { fg = theme.colors.fg },
    ["@punctuation.special"] = { fg = theme.colors.earth_jade },

    ["@tag"] = { fg = theme.colors.blue },
    ["@tag.delimiter"] = { fg = theme.colors.border },
    ["@tag.attribute"] = { fg = theme.colors.cyan },

    ["@text"] = { fg = theme.colors.fg },
    ["@text.strong"] = { bold = true },
    ["@text.emphasis"] = { italic = true },
    ["@text.underline"] = { underline = true },
    ["@text.strike"] = { strikethrough = true },
    ["@text.title"] = { fg = theme.colors.title, bold = true },
    ["@text.literal"] = { fg = theme.colors.yellow },
    ["@text.uri"] = { fg = theme.colors.link, underline = true },
    ["@text.note"] = { fg = theme.colors.mountain_dust },
    ["@text.warning"] = { fg = theme.colors.yellow },
    ["@text.danger"] = { fg = theme.colors.red },

    -- Markdown / markup groups
    ["@markup.heading"] = { fg = theme.colors.title, bold = true },
    ["@markup.heading.1"] = { fg = theme.colors.spirit_emerald, bold = true },
    ["@markup.heading.2"] = { fg = theme.colors.earth_jade, bold = true },
    ["@markup.heading.3"] = { fg = theme.colors.mountain_dust, bold = true },
    ["@markup.heading.4"] = { fg = theme.colors.blue, bold = true },
    ["@markup.heading.5"] = { fg = theme.colors.purple, bold = true },
    ["@markup.heading.6"] = { fg = theme.colors.grey, bold = true },
    ["@markup.link"] = { fg = theme.colors.link, underline = true },
    ["@markup.link.label"] = { fg = theme.colors.cyan },
    ["@markup.link.url"] = { fg = theme.colors.blue, underline = true },
    ["@markup.list"] = { fg = theme.colors.spirit_emerald },
    ["@markup.list.checked"] = { fg = theme.colors.green },
    ["@markup.list.unchecked"] = { fg = theme.colors.grey },
    ["@markup.raw"] = { fg = theme.colors.yellow },
    ["@markup.raw.block"] = { fg = theme.colors.yellow },
    ["@markup.quote"] = { fg = theme.colors.grey, italic = true },
    ["@markup.math"] = { fg = theme.colors.earth_jade },
    ["@markup.environment"] = { fg = theme.colors.weathered_rock },
    ["@markup.environment.name"] = { fg = theme.colors.spirit_emerald },

    -- Search and visual
    Search = { fg = theme.colors.bg, bg = theme.colors.earth_jade },
    IncSearch = { fg = theme.colors.bg, bg = theme.colors.spirit_emerald },
    CurSearch = { link = "IncSearch" },
    Substitute = { fg = theme.colors.bg, bg = theme.colors.mountain_dust },

    Visual = { bg = theme.colors.visual },
    VisualNOS = { bg = theme.colors.visual, italic = true },
    MatchParen = { fg = theme.colors.spirit_emerald, bg = theme.colors.match_paren, bold = true },

    -- Cursor
    Cursor = { fg = theme.colors.cursor_fg, bg = theme.colors.cursor_bg },
    lCursor = { link = "Cursor" },
    CursorIM = { link = "Cursor" },

    -- Spell
    SpellBad = { sp = theme.colors.red, undercurl = true },
    SpellCap = { sp = theme.colors.earth_jade, undercurl = true },
    SpellLocal = { sp = theme.colors.spirit_emerald, undercurl = true },
    SpellRare = { sp = theme.colors.mountain_dust, undercurl = true },

    -- Special syntax
    Whitespace = { fg = theme.colors.gray4 },
    NonText = { fg = theme.colors.gray4 },
    Conceal = { fg = theme.colors.grey },
    SpecialKey = { fg = theme.colors.grey },

    -- Quickfix
    QuickFixLine = { bg = theme.colors.quickfix_line },
    qfLineNr = { fg = theme.colors.spirit_emerald },

    -- Wild menu
    WildMenu = { fg = theme.colors.inverse_fg, bg = theme.colors.spirit_emerald },

    -- Directory
    Directory = { fg = theme.colors.spirit_emerald },

    -- Msg area
    ErrorMsg = { fg = theme.colors.red, bold = true },
    WarningMsg = { fg = theme.colors.yellow },
    InfoMsg = { fg = theme.colors.spirit_emerald },
    HintMsg = { fg = theme.colors.mountain_dust },

    -- Terminal
    Terminal = { fg = theme.colors.fg, bg = theme.colors.bg },
    TermCursor = { fg = theme.colors.cursor_fg, bg = theme.colors.cursor_bg },

    -- Popup menu
    PMenu = { link = "Pmenu" },
    PMenuSel = { link = "PmenuSel" },
    PMenuSbar = { link = "PmenuSbar" },
    PMenuThumb = { link = "PmenuThumb" },

    -- Sign column
    SignColumnSB = { link = "SignColumn" },

    -- Float shadow
    FloatShadow = { bg = theme.colors.black, blend = 80 },
    FloatShadowThrough = { bg = theme.colors.black, blend = 100 },

    -- Redraw debug
    RedrawDebugNormal = { bg = theme.colors.green },
    RedrawDebugClear = { bg = theme.colors.yellow },
    RedrawDebugComposed = { bg = theme.colors.blue },
    RedrawDebugRecompose = { bg = theme.colors.red },

    -- Diff
    diffAdded = { link = "DiffAdd" },
    diffChanged = { link = "DiffChange" },
    diffRemoved = { link = "DiffDelete" },
    diffFile = { fg = theme.colors.spirit_emerald },
    diffNewFile = { fg = theme.colors.green },
    diffOldFile = { fg = theme.colors.red },
    diffLine = { fg = theme.colors.purple },

    -- Neovim specific
    NvimInternalError = { fg = theme.colors.white, bg = theme.colors.dark_red },
    WinBar = { fg = theme.colors.spirit_emerald, bold = true },
    WinBarNC = { fg = theme.colors.grey },

    -- Indent guides
    IndentBlanklineChar = { fg = theme.colors.indent_guide },
    IndentBlanklineContextChar = { fg = theme.colors.indent_guide_active },

    -- Notify highlights
    NotifyERRORBorder = { fg = theme.colors.red },
    NotifyWARNBorder = { fg = theme.colors.yellow },
    NotifyINFOBorder = { fg = theme.colors.spirit_emerald },
    NotifyDEBUGBorder = { fg = theme.colors.grey },
    NotifyTRACEBorder = { fg = theme.colors.purple },
    NotifyERRORIcon = { fg = theme.colors.red },
    NotifyWARNIcon = { fg = theme.colors.yellow },
    NotifyINFOIcon = { fg = theme.colors.spirit_emerald },
    NotifyDEBUGIcon = { fg = theme.colors.grey },
    NotifyTRACEIcon = { fg = theme.colors.purple },
    NotifyERRORTitle = { fg = theme.colors.red },
    NotifyWARNTitle = { fg = theme.colors.yellow },
    NotifyINFOTitle = { fg = theme.colors.spirit_emerald },
    NotifyDEBUGTitle = { fg = theme.colors.grey },
    NotifyTRACETitle = { fg = theme.colors.purple },

    -- Navic (LSP breadcrumbs)
    NavicIconsFile = { fg = theme.colors.spirit_emerald },
    NavicIconsModule = { fg = theme.colors.purple },
    NavicIconsNamespace = { fg = theme.colors.weathered_rock },
    NavicIconsPackage = { fg = theme.colors.orange },
    NavicIconsClass = { fg = theme.colors.cyan },
    NavicIconsMethod = { fg = theme.colors.blue },
    NavicIconsProperty = { fg = theme.colors.cyan2 },
    NavicIconsField = { fg = theme.colors.cyan2 },
    NavicIconsConstructor = { fg = theme.colors.cyan },
    NavicIconsEnum = { fg = theme.colors.cyan },
    NavicIconsInterface = { fg = theme.colors.cyan },
    NavicIconsFunction = { fg = theme.colors.blue },
    NavicIconsVariable = { fg = theme.colors.fg },
    NavicIconsConstant = { fg = theme.colors.orange },
    NavicIconsString = { fg = theme.colors.green },
    NavicIconsNumber = { fg = theme.colors.orange },
    NavicIconsBoolean = { fg = theme.colors.orange },
    NavicIconsArray = { fg = theme.colors.weathered_rock },
    NavicIconsObject = { fg = theme.colors.weathered_rock },
    NavicIconsKey = { fg = theme.colors.purple },
    NavicIconsNull = { fg = theme.colors.grey },
    NavicIconsEnumMember = { fg = theme.colors.cyan2 },
    NavicIconsStruct = { fg = theme.colors.weathered_rock },
    NavicIconsEvent = { fg = theme.colors.purple3 },
    NavicIconsOperator = { fg = theme.colors.fg },
    NavicIconsTypeParameter = { fg = theme.colors.cyan },
    NavicText = { fg = theme.colors.fg },
    NavicSeparator = { fg = theme.colors.border },

    -- Additional plugin support
    WhichKey = { fg = theme.colors.spirit_emerald },
    WhichKeyGroup = { fg = theme.colors.purple },
    WhichKeyDesc = { fg = theme.colors.fg },
    WhichKeySeperator = { fg = theme.colors.grey },
    WhichKeyFloat = { bg = theme.colors.inverse_fg },

    TelescopePromptBorder = { fg = theme.colors.border },
    TelescopeResultsBorder = { fg = theme.colors.border },
    TelescopePreviewBorder = { fg = theme.colors.border },
    TelescopeSelection = { bg = theme.colors.granite_shadow },
    TelescopeMatching = { fg = theme.colors.spirit_emerald, bold = true },

    NoiceCursor = { link = "Cursor" },
    NoiceFormatProgressDone = { bg = theme.colors.spirit_emerald },
    NoiceFormatProgressTodo = { bg = theme.colors.gray3 },

    -- DAP UI
    DapUIScope = { fg = theme.colors.spirit_emerald },
    DapUIType = { fg = theme.colors.cyan },
    DapUIValue = { fg = theme.colors.orange },
    DapUIVariable = { fg = theme.colors.fg },
    DapUIBreakpointsPath = { fg = theme.colors.spirit_emerald },
    DapUIBreakpointsInfo = { fg = theme.colors.mountain_dust },
    DapUIBreakpointsCurrentLine = { fg = theme.colors.earth_jade, bold = true },
}

theme.terminal_colors = {
    [0] = theme.colors.deep_earth,
    [1] = theme.colors.red,
    [2] = theme.colors.green,
    [3] = theme.colors.temple_bronze,
    [4] = theme.colors.spirit_emerald,
    [5] = theme.colors.purple,
    [6] = theme.colors.cyan,
    [7] = theme.colors.parchment_anc,
    [8] = theme.colors.grey,
    [9] = theme.colors.red,
    [10] = theme.colors.jade_shard,
    [11] = theme.colors.yellow,
    [12] = theme.colors.magnetize,
    [13] = theme.colors.purple3,
    [14] = theme.colors.enchant_remnant,
    [15] = theme.colors.white,
}

return theme
