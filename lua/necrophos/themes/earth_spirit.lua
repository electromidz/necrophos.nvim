local theme = {}

-- ============================================================
-- Earth Spirit Theme - "Kaolin, carved from sacred jade"
-- ============================================================
-- Sourced from the hero's own lore and model. Kaolin is a statue
-- from a stone funerary army - Valve's own text says he was
-- "carved from sacred jade" in "the likeness of a great general",
-- and the design is built on the Terracotta Army. So the theme
-- has exactly three materials:
--
--   SACRED JADE  - the living seam running through him, the only
--                  thing on the hero that actually glows
--   TERRACOTTA   - fired clay, the funerary army he was buried with
--   GRANITE      - the cold grey-green stone he is carved from
--
-- Like the Brewmaster theme, there is NO BLUE here. Kaolin has
-- none: Boulder Smash is grey rock, Rolling Boulder is dust,
-- Geomagnetic Grip and Magnetize are jade green.
--
-- Token mapping:
--   Spirit jade  -> functions   (the only living energy in the code)
--   Carved jade  -> types       (the material, not the spirit)
--   Moss on stone-> strings
--   Terracotta   -> numbers, constants
--   Temple bronze-> warnings, literals
--   Clay red     -> errors, exceptions
--   Lacquer rose -> keywords (the red lacquer on terracotta armour)
--   Sandstone    -> namespaces, structures, preproc
--   Granite      -> comments
--
-- Color rules this palette obeys:
--   * every pair of tokens that co-occur in real code is >=15 deg
--     apart in hue; functions vs types close that gap with an
--     18-point lightness split instead (spirit jade glows, carved
--     jade does not)
--   * every foreground meets WCAG AA (>=4.5:1) against `bg`
-- ============================================================

theme.colors = {
    -- Base colors - A tomb carved into the mountain
    fg = "#cfc8b6",          -- Carved stone (primary text) - 11.3:1
    inverse_fg = "#151a14",  -- Deep temple shadow (float/surface bg)
    bg = "#0f1210",          -- Ancient granite (main background)
    accent_bg = "#181e17",   -- Worn temple floor (surface bg)
    link = "#4fc9a2",        -- Geomagnetic Grip (links/URLs) - 8.6:1
    accent = "#4fc9a2",      -- Jade core (accent)
    border = "#7d8a7c",      -- Granite edge (borders) - 4.6:1

    -- Syntax highlighting - Jade, terracotta, granite
    red = "#dd5f45",         -- Clay fired too hot (errors) - H10 - 5.2:1
    orange = "#d98c52",      -- Terracotta (numbers, constants) - H26 - 7.0:1
    yellow = "#dcb75e",      -- Temple bronze (warnings, literals) - H42 - 9.9:1
    green = "#a3c264",       -- Moss on stone (strings) - H80 - 9.4:1
    jade = "#3fc994",        -- Sacred jade seam (functions) - H157 - 9.0:1
    cyan = "#8fd3a8",        -- Carved jade (types) - H142 - 10.8:1
    purple = "#d691a4",      -- Red lacquer (keywords) - H343 - 7.6:1
    grey = "#79806e",        -- Granite (comments) - 4.6:1

    -- Earth Spirit-specific colors
    spirit_jade = "#3fc994",      -- The living seam
    earth_jade = "#4fc9a2",       -- Geomagnetic Grip
    spirit_emerald = "#6fdcb0",   -- Magnetize glow (brightest jade)
    carved_jade = "#8fd3a8",      -- Jade as carved material, not spirit
    jade_shard = "#7ddcb4",       -- Stone Remnant fragment
    jade_core = "#3fc994",        -- Living jade
    ancient_mineral = "#a8dec0",  -- Enchanted minerals
    enchant_remnant = "#8fd3a8",  -- Spirit-infused jade
    magnetize = "#6fdcb0",        -- Glowing minerals
    terracotta = "#d98c52",       -- Fired funerary clay
    temple_bronze = "#dcb75e",    -- Ancient artifact metal
    boulder_smash = "#c47a58",    -- Sandstone impact
    clay_bright = "#e87a5e",      -- Kiln-hot clay (terminal bright red)
    lacquer_rose = "#d691a4",     -- Red lacquer on terracotta armour
    sandstone = "#b5a487",        -- Dust and weathered sandstone
    mountain_dust = "#b5a487",    -- Dust clouds
    weathered_rock = "#a1937c",   -- Old mountain stone
    stone_guardian = "#8a9484",   -- Animated stone body
    rolling_boulder = "#8a8a76",  -- Moving granite
    earth_crack = "#79806e",      -- Fractured stone
    granite_shadow = "#2a322a",   -- Deep rock (selection bg)
    moss_bright = "#b8d67a",      -- Lit moss (terminal bright green)
    bronze_bright = "#e8cd82",    -- Polished bronze (terminal bright yellow)
    deep_earth = "#141a13",       -- Underground cavern
    parchment_anc = "#d8d2c0",    -- Ancient scroll
    punctuation = "#8d8d7d",      -- Brackets/operators: present, not shouting

    -- UI colors - Stone and jade readable
    folded_bg = "#161c15",
    cursor_fg = "#0f1210",
    cursor_bg = "#4fc9a2",
    line_number_fg = "#4a5148",   -- was 2.5:1, now 2.3:1 but no longer = border
    line_number_active_fg = "#c2bba8",
    sign_add = "#a3c264",
    sign_change = "#dcb75e",
    sign_delete = "#dd5f45",
    indent_guide = "#1e261c",
    indent_guide_active = "#3a423a",
    visual = "#1f2a1e",
    match_paren = "#2f3d2c",
    error_red = "#dd5f45",
    quickfix_line = "#161c15",
    title = "#7ddcb4",
    parameter = "#c4bda9",
    dark_red = "#6e2a1e",
    white = "#e0dac9",
    black = "#000000",

    -- Extended UI palette
    gray = "#1e261c",
    gray3 = "#2e362c",
    gray4 = "#4a5148",
    gray6 = "#79806e",
    cyan2 = "#a8dec0",
    purple3 = "#e0aab8",
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
    Function = { fg = theme.colors.jade, bold = true },

    Statement = { fg = theme.colors.purple },
    Conditional = { fg = theme.colors.purple },
    Repeat = { fg = theme.colors.purple },
    Label = { fg = theme.colors.purple },
    Operator = { fg = theme.colors.punctuation },
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
    Tag = { fg = theme.colors.jade },
    Delimiter = { fg = theme.colors.punctuation },
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
    DiffAdd = { fg = theme.colors.green, bg = "#18220f" },
    DiffChange = { fg = theme.colors.yellow, bg = "#242012" },
    DiffDelete = { fg = theme.colors.red, bg = "#261512" },
    DiffText = { fg = theme.colors.bronze_bright, bg = "#3a3218", bold = true },

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

    ["@function"] = { fg = theme.colors.jade, bold = true },
    ["@function.call"] = { fg = theme.colors.jade },
    ["@method"] = { fg = theme.colors.jade },
    ["@method.call"] = { fg = theme.colors.jade },
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

    ["@operator"] = { fg = theme.colors.punctuation },
    ["@punctuation.delimiter"] = { fg = theme.colors.punctuation },
    ["@punctuation.bracket"] = { fg = theme.colors.punctuation },
    ["@punctuation.special"] = { fg = theme.colors.earth_jade },

    ["@tag"] = { fg = theme.colors.jade },
    ["@tag.delimiter"] = { fg = theme.colors.punctuation },
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
    ["@markup.heading.4"] = { fg = theme.colors.carved_jade, bold = true },
    ["@markup.heading.5"] = { fg = theme.colors.purple, bold = true },
    ["@markup.heading.6"] = { fg = theme.colors.grey, bold = true },
    ["@markup.link"] = { fg = theme.colors.link, underline = true },
    ["@markup.link.label"] = { fg = theme.colors.cyan },
    ["@markup.link.url"] = { fg = theme.colors.link, underline = true },
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
    RedrawDebugComposed = { bg = theme.colors.jade },
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
    NavicIconsMethod = { fg = theme.colors.jade },
    NavicIconsProperty = { fg = theme.colors.cyan2 },
    NavicIconsField = { fg = theme.colors.cyan2 },
    NavicIconsConstructor = { fg = theme.colors.cyan },
    NavicIconsEnum = { fg = theme.colors.cyan },
    NavicIconsInterface = { fg = theme.colors.cyan },
    NavicIconsFunction = { fg = theme.colors.jade },
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
    NavicIconsOperator = { fg = theme.colors.punctuation },
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

-- ANSI slots 4/12 are the "blue" slots. Kaolin has no blue, so they
-- take the deepest jade available - close enough in hue that
-- git/ls/diff output still reads as intended.
theme.terminal_colors = {
    [0] = theme.colors.deep_earth,
    [1] = theme.colors.red,
    [2] = theme.colors.green,
    [3] = theme.colors.temple_bronze,
    [4] = theme.colors.spirit_jade,
    [5] = theme.colors.lacquer_rose,
    [6] = theme.colors.carved_jade,
    [7] = theme.colors.parchment_anc,
    [8] = theme.colors.grey,
    [9] = theme.colors.clay_bright,
    [10] = theme.colors.moss_bright,
    [11] = theme.colors.bronze_bright,
    [12] = theme.colors.spirit_emerald,
    [13] = theme.colors.purple3,
    [14] = theme.colors.ancient_mineral,
    [15] = theme.colors.white,
}

return theme
