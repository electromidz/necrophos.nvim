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
	fg = "#d4d0c4",          -- Mountain mist (primary text)
	inverse_fg = "#151a14",   -- Deep temple shadow (float/surface bg)
	bg = "#0f1210",           -- Ancient stone (main background)
	accent_bg = "#181e17",    -- Worn temple floor (surface bg)
	link = "#6aaa6c",         -- Jade spirit (links/URLs)
	accent = "#5a9a64",       -- Polished jade (accent)
	border = "#2e362c",       -- Weathered granite (borders)

	-- Syntax highlighting - Stone and jade palette
	red = "#b86a5c",          -- Cracked clay (errors, deleted)
	orange = "#c09060",       -- Temple bronze (constants, numbers)
	yellow = "#b8a860",       -- Aged brass (strings, warnings)
	green = "#6aaa6c",        -- Jade spirit (strings, additions)
	cyan = "#5a9490",         -- Mountain spring (types, teal)
	blue = "#6a8a90",         -- Distant peak (functions)
	purple = "#8a7a9c",       -- Twilight temple (keywords, statements)
	grey = "#5a6258",         -- Weathered stone (comments)

	-- Earth Spirit-specific colors
	earth_jade = "#6aaa6c",       -- Core jade energy
	stone_guardian = "#7a8478",   -- Animated stone body
	mountain_mist = "#a0a89c",    -- High-altitude haze
	temple_bronze = "#b09060",    -- Ancient bronze fixtures
	spirit_emerald = "#58a868",   -- Spiritual jade glow
	ancient_granite = "#5a6258",  -- Primordial rock
	jade_shard = "#68b470",       -- Broken jade fragment
	weathered_stone = "#6a7268",  -- Wind-eroded rock
	remnant_green = "#4a8a58",    -- Ancient jade remnant
	monk_cloth = "#8a8a78",       -- Meditation robes
	carved_rock = "#4a5248",      -- Temple carvings
	moss_cover = "#5a7a50",       -- Living moss on stone
	temple_gate = "#3a4438",      -- Temple entrance shadow
	jade_vein = "#58a060",        -- Energy through stone
	stone_dust = "#8a9088",       -- Powdered granite
	wind_erosion = "#6a7468",     -- Wind-shaped stone
	root_cling = "#5a6a48",       -- Mountain tree roots
	deep_earth = "#1a2018",       -- Underground cavern
	parchment_anc = "#c8c4b4",    -- Ancient scroll
	spirit_flame = "#68b470",     -- Jade fire

	-- UI colors - Stone and jade readable
	folded_bg = "#161c15",
	cursor_fg = "#0f1210",
	cursor_bg = "#6aaa6c",
	line_number_fg = "#3a4438",
	line_number_active_fg = "#a0a89c",
	sign_add = "#6aaa6c",
	sign_change = "#b8a860",
	sign_delete = "#b86a5c",
	indent_guide = "#1e261c",
	indent_guide_active = "#3a4438",
	visual = "#1e2a1c",
	match_paren = "#2a3428",
	search_blue = "#1e2a1c",
	incremental_search_blue = "#2a3428",
	error_red = "#b86a5c",
	word_highlight = "#1e2a1c",
	word_highlight_write = "#202e1c",
	changed = "#b8a860",
	quickfix_line = "#161c15",
	ui_border = "#3a4438",
	ui_border2 = "#1e261c",
	nvim_tree_file = "#a0a89c",
	nvim_tree_indent_marker = "#3a4438",
	tab_active_bg = "#181e17",
	tab_inactive_bg = "#0f1210",
	title = "#7ab87c",
	parameter = "#c4c0b4",
	string_delimiter = "#a8b898",
	dark = "#0a0d09",
	dark2 = "#0f1210",
	dark3 = "#161c15",
	white = "#d4d0c4",
	white2 = "#e0dcd0",
	dark_white = "#a0a89c",
	gray = "#1e261c",
	gray2 = "#a0a89c",
	gray3 = "#2e362c",
	gray4 = "#4a5448",
	gray5 = "#7a8278",
	gray6 = "#5a6258",
	light_blue = "#7a9aa0",
	blue2 = "#121814",
	blue3 = "#161e18",
	blue4 = "#1a241c",
	blue5 = "#1e2a20",
	blue6 = "#223024",
	blue7 = "#2a382c",
	blue8 = "#4a8a78",
	blue9 = "#3a5848",
	blue10 = "#4a6a58",
	blue11 = "#6a9a80",
	blue12 = "#98b8a0",
	blue13 = "#0c120c",
	blue14 = "#1a261a",
	blue15 = "#58c878",
	green2 = "#68b470",
	light_cyan = "#a8d0c4",
	cyan2 = "#68a898",
	cyan3 = "#5a9490",
	cyan4 = "#6aaa98",
	cyan5 = "#a0ccc0",
	dark_cyan = "#3a6860",
	light_red = "#d08878",
	red2 = "#d07060",
	red3 = "#a04840",
	dark_red = "#702820",
	light_orange = "#d0a878",
	orange2 = "#d0a068",
	light_yellow = "#d8d0a0",
	yellow2 = "#a89858",
	yellow3 = "#c8b868",
	yellow4 = "#d8cc90",
	yellow5 = "#b8a860",
	light_purple = "#a898b0",
	purple2 = "#7068a0",
	purple3 = "#9888b0",
	purple4 = "#8078a0",
	dark_purple = "#1a1e28",
	magenta = "#8a7a9c",
	magenta2 = "#8070a0",
	magenta3 = "#a898b8",
	magenta4 = "#b068a0",
	magenta5 = "#1e1420",
	magenta6 = "#2a1e30",

	-- Earth Spirit-themed additions
	stone_pillar = "#4a5448",    -- Temple support column
	carved_script = "#5a6a50",   -- Ancient jade inscriptions
	jade_lantern = "#58a860",    -- Glowing jade light source
	monk_meditation = "#4a5a50", -- Deep focus color
	earthquake_crack = "#3a4238", -- Fractured stone
	spirit_trail = "#68b470",    -- Rolling boulder path
	temple_moss = "#4a7048",     -- Ancient living moss
	stone_carving = "#6a7260",   -- Relief sculpture
	jade_amulet = "#58b068",     -- Spiritual artifact
	wind_sculpt = "#5a6a60",     -- Wind-carved formations
	root_strangle = "#4a6040",   -- Mountain tree roots
	dust_cloud = "#8a9080",      -- Stone dust rising
	temple_bell_bronze = "#a08850", -- Resonant bronze
	cave_mouth = "#1a2018",      -- Mountain cave entrance
	spring_water = "#489890",    -- Mountain spring
	moss_bed = "#3a6038",        -- Dense moss carpet
	granite_slab = "#4a5250",    -- Flat carved stone
	spirit_emerald_glow = "#50b868", -- Bright jade pulse
	jade_meditation = "#488a50", -- Deep jade contemplation
	warrior_stone = "#5a6458",   -- Battle-hardened rock
	crumbling_wall = "#6a7060",  -- Ancient structure
	mountain_path = "#3a4a38",   -- Stone walkway

	-- Missing colors
	black = "#000000",
	light_green = "#90c890",
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

	PreProc = { fg = theme.colors.weathered_stone },
	Include = { fg = theme.colors.purple },
	Define = { fg = theme.colors.weathered_stone },
	Macro = { fg = theme.colors.weathered_stone },
	PreCondit = { fg = theme.colors.weathered_stone },

	Type = { fg = theme.colors.cyan },
	StorageClass = { fg = theme.colors.purple },
	Structure = { fg = theme.colors.weathered_stone },
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
	Question = { fg = theme.colors.mountain_mist },
	ModeMsg = { fg = theme.colors.spirit_emerald },
	MoreMsg = { fg = theme.colors.spirit_emerald },

	-- Diagnostic groups
	DiagnosticError = { fg = theme.colors.red },
	DiagnosticWarn = { fg = theme.colors.yellow },
	DiagnosticInfo = { fg = theme.colors.spirit_emerald },
	DiagnosticHint = { fg = theme.colors.mountain_mist },
	DiagnosticUnderlineError = { sp = theme.colors.red, undercurl = true },
	DiagnosticUnderlineWarn = { sp = theme.colors.yellow, undercurl = true },
	DiagnosticUnderlineInfo = { sp = theme.colors.spirit_emerald, undercurl = true },
	DiagnosticUnderlineHint = { sp = theme.colors.mountain_mist, undercurl = true },

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
	["@string.special"] = { fg = theme.colors.carved_script },
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
	["@structure"] = { fg = theme.colors.weathered_stone },
	["@namespace"] = { fg = theme.colors.weathered_stone },

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
	["@text.note"] = { fg = theme.colors.mountain_mist },
	["@text.warning"] = { fg = theme.colors.yellow },
	["@text.danger"] = { fg = theme.colors.red },

	-- Markdown / markup groups
	["@markup.heading"] = { fg = theme.colors.title, bold = true },
	["@markup.heading.1"] = { fg = theme.colors.spirit_emerald, bold = true },
	["@markup.heading.2"] = { fg = theme.colors.earth_jade, bold = true },
	["@markup.heading.3"] = { fg = theme.colors.mountain_mist, bold = true },
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
	["@markup.environment"] = { fg = theme.colors.weathered_stone },
	["@markup.environment.name"] = { fg = theme.colors.spirit_emerald },

	-- Search and visual
	Search = { fg = theme.colors.bg, bg = theme.colors.earth_jade },
	IncSearch = { fg = theme.colors.bg, bg = theme.colors.spirit_emerald },
	CurSearch = { link = "IncSearch" },
	Substitute = { fg = theme.colors.bg, bg = theme.colors.mountain_mist },

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
	SpellRare = { sp = theme.colors.mountain_mist, undercurl = true },

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
	HintMsg = { fg = theme.colors.mountain_mist },

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
	NavicIconsNamespace = { fg = theme.colors.weathered_stone },
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
	NavicIconsArray = { fg = theme.colors.weathered_stone },
	NavicIconsObject = { fg = theme.colors.weathered_stone },
	NavicIconsKey = { fg = theme.colors.purple },
	NavicIconsNull = { fg = theme.colors.grey },
	NavicIconsEnumMember = { fg = theme.colors.cyan2 },
	NavicIconsStruct = { fg = theme.colors.weathered_stone },
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
	TelescopeSelection = { bg = theme.colors.temple_gate },
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
	DapUIBreakpointsInfo = { fg = theme.colors.mountain_mist },
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
	[12] = theme.colors.spirit_emerald_glow,
	[13] = theme.colors.purple3,
	[14] = theme.colors.spring_water,
	[15] = theme.colors.white,
}

return theme
