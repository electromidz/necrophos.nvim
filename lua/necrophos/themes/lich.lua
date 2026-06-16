local theme = {}

-- ============================================================
-- Lich Theme - "The Frozen Sovereign"
-- ============================================================
-- Philosophy: An ancient frost lich channeling forbidden magic
-- from a frozen throne. The cold permanence of eternal ice,
-- the spectral glow of soul-fire, the silence of a kingdom
-- buried under glaciers. This theme is death given elegance.
--
-- Not a blue theme. A frozen theme where spectral energy
-- illuminates the darkness like ghost fire through arctic mist.
-- ============================================================

theme.colors = {
	-- Base colors - Frozen throne at midnight
	fg = "#c8ccd4", -- Glacial mist (primary text)
	inverse_fg = "#12161e", -- Deep frozen abyss (float/surface bg)
	bg = "#0c0f14", -- Frozen midnight (main background)
	accent_bg = "#141a22", -- Frost-covered stone (surface bg)
	link = "#68a0c4", -- Soul frost (links/URLs)
	accent = "#5890b4", -- Lich blue (accent)
	-- border = "#28323c",       -- Frozen granite (borders)
	border = "#b06068", -- Frozen granite (borders)

	-- Syntax highlighting - Frost and spectral palette
	red = "#b06068", -- Blood frost (errors, deleted)
	orange = "#b89068", -- Aged gold (constants, numbers)
	yellow = "#a8a070", -- Frozen amber (strings, warnings)
	green = "#68a0a0", -- Spectral teal (strings, additions)
	cyan = "#5890a4", -- Glacial cyan (types, teal)
	blue = "#6888a8", -- Frost blue (functions)
	purple = "#8878a0", -- Frozen lavender (keywords, statements)
	grey = "#505860", -- Frozen stone (comments)

	-- Lich-specific colors
	frost_blue = "#68a0c4", -- Core frost energy
	glacial_cyan = "#5898a8", -- Deep glacier ice
	ice_crystal = "#a0b0c0", -- Pure frozen crystal
	frozen_throne = "#1a2030", -- The seat of eternal rule
	spectral_frost = "#60a8b8", -- Ghostly ice spirit
	winter_mist = "#8898a8", -- Arctic haze
	ancient_ice = "#486878", -- Primordial glacier
	soul_frost = "#5898c0", -- Soul-bound ice magic
	lich_magic = "#4888a8", -- Forbidden frost spells
	frozen_stone = "#3a4858", -- Ice-covered ruins
	deathfrost = "#384858", -- Death's frozen touch
	arcane_blizzard = "#6088a8", -- Magical winter storm
	cold_flame = "#58a0c8", -- Blue spectral fire
	eternal_winter = "#283848", -- Endless frozen night
	spirit_ice = "#70a8b8", -- Ethereal ice spirit
	frozen_silver = "#a0a8b8", -- Ancient frozen metal
	frost_veil = "#384050", -- Translucent ice curtain
	glacier_deep = "#182028", -- Deep glacial crevasse
	tomb_frost = "#283040", -- Frozen crypt interior
	crown_ice = "#70a0c0", -- Ice crown brilliance
	bone_white = "#c0c4cc", -- Exposed ancient bone
	ghost_flame = "#58a8c8", -- Spectral blue fire
	rime_accent = "#80b0c8", -- Rime frost highlights
	winter_silver = "#b0b8c4", -- Frozen moonlight
	dark_frost = "#1a2430", -- Deepest frozen shadow

	-- UI colors - Cold and readable
	folded_bg = "#10141c",
	cursor_fg = "#0c0f14",
	cursor_bg = "#68a0c4",
	line_number_fg = "#303840",
	line_number_active_fg = "#a0b0c0",
	sign_add = "#68a0a0",
	sign_change = "#a8a070",
	sign_delete = "#b06068",
	indent_guide = "#1a2430",
	indent_guide_active = "#303840",
	visual = "#182838",
	match_paren = "#203040",
	search_blue = "#182838",
	incremental_search_blue = "#203040",
	error_red = "#b06068",
	word_highlight = "#182838",
	word_highlight_write = "#1a2838",
	changed = "#a8a070",
	quickfix_line = "#10141c",
	ui_border = "#303840",
	ui_border2 = "#1a2430",
	nvim_tree_file = "#a0b0c0",
	nvim_tree_indent_marker = "#303840",
	tab_active_bg = "#141a22",
	tab_inactive_bg = "#0c0f14",
	title = "#78b0d0",
	parameter = "#b4b8c0",
	string_delimiter = "#90a8b0",
	dark = "#080a0e",
	dark2 = "#0c0f14",
	dark3 = "#10141c",
	white = "#c8ccd4",
	white2 = "#d8dce4",
	dark_white = "#a0a8b8",
	gray = "#1a2430",
	gray2 = "#a0b0c0",
	gray3 = "#28323c",
	gray4 = "#3a4858",
	gray5 = "#687078",
	gray6 = "#505860",
	light_blue = "#78a8c0",
	blue2 = "#0e1420",
	blue3 = "#121a28",
	blue4 = "#161e30",
	blue5 = "#1a2438",
	blue6 = "#1e2a40",
	blue7 = "#243248",
	blue8 = "#4880a0",
	blue9 = "#304858",
	blue10 = "#406070",
	blue11 = "#6090a8",
	blue12 = "#90b0c0",
	blue13 = "#0a0e18",
	blue14 = "#182030",
	blue15 = "#50b0d0",
	green2 = "#60b0a8",
	light_cyan = "#a0c8d0",
	cyan2 = "#60a0b0",
	cyan3 = "#5890a4",
	cyan4 = "#60a0b0",
	cyan5 = "#98c0c8",
	dark_cyan = "#306070",
	light_red = "#c88088",
	red2 = "#c87078",
	red3 = "#904850",
	dark_red = "#602830",
	light_orange = "#c8a880",
	orange2 = "#c8a070",
	light_yellow = "#c8c090",
	yellow2 = "#989060",
	yellow3 = "#b8b070",
	yellow4 = "#c8c098",
	yellow5 = "#a8a070",
	light_purple = "#9890b0",
	purple2 = "#6058a0",
	purple3 = "#8880b0",
	purple4 = "#7068a0",
	dark_purple = "#181828",
	magenta = "#8878a0",
	magenta2 = "#7870a0",
	magenta3 = "#9890b8",
	magenta4 = "#a060a0",
	magenta5 = "#1a1020",
	magenta6 = "#241830",

	-- Lich-specific additions
	frozen_palace = "#182030", -- The eternal frozen kingdom
	throne_ice = "#284050", -- Ice throne structure
	spectral_breath = "#70a8c0", -- Visible cold breath
	soul_prison = "#1a2030", -- Trapped souls in ice
	frost_rune = "#5898b8", -- Carved frost inscriptions
	glacier_wall = "#304050", -- Massive ice barrier
	ancient_frost = "#406070", -- Primordial ice formation
	ice_shard = "#68a8c8", -- Sharp frozen fragment
	cold_iron = "#506070", -- Frost-touched metal
	winter_bone = "#b0b8c4", -- Frozen skeletal remains
	phantom_frost = "#4888a8", -- Ghostly ice manifestation
	permafrost = "#203040", -- Permanently frozen ground
	blizzard_edge = "#6898b0", -- Edge of a snowstorm
	frost_crown = "#78b0d0", -- Crown of eternal ice
	soul_bind = "#5090b0", -- Soul-binding magic
	ice_maiden = "#88b0c8", -- Spectral ice figure
	crypt_frost = "#283848", -- Frozen burial chamber
	rime_lord = "#6090a8", -- Lord of rime and frost
	glacial_tear = "#58a0b8", -- Frozen teardrop of ice
	bitter_cold = "#384858", -- The bite of endless winter
	ghost_light = "#68a8c0", -- Undead spectral glow
	frozen_memory = "#405868", -- Frozen thoughts of the past
	eternal_silence = "#101820", -- The silence of a frozen world

	-- Missing colors
	black = "#000000",
	light_green = "#90c8c0",
}

theme.groups = {
	-- Base groups
	Normal = { fg = theme.colors.fg, bg = theme.colors.bg },
	NormalFloat = { fg = theme.colors.fg, bg = theme.colors.inverse_fg },
	FloatBorder = { fg = theme.colors.border, bg = theme.colors.inverse_fg },
	FloatTitle = { fg = theme.colors.cold_flame, bg = theme.colors.inverse_fg, bold = true },

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

	PreProc = { fg = theme.colors.frozen_stone },
	Include = { fg = theme.colors.purple },
	Define = { fg = theme.colors.frozen_stone },
	Macro = { fg = theme.colors.frozen_stone },
	PreCondit = { fg = theme.colors.frozen_stone },

	Type = { fg = theme.colors.cyan },
	StorageClass = { fg = theme.colors.purple },
	Structure = { fg = theme.colors.frozen_stone },
	Typedef = { fg = theme.colors.cyan },

	Special = { fg = theme.colors.frost_blue },
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
	PmenuSel = { fg = theme.colors.inverse_fg, bg = theme.colors.cold_flame, bold = true },
	PmenuSbar = { bg = theme.colors.gray3 },
	PmenuThumb = { bg = theme.colors.border },

	StatusLine = { fg = theme.colors.fg, bg = theme.colors.accent_bg },
	StatusLineNC = { fg = theme.colors.grey, bg = theme.colors.accent_bg },
	WinSeparator = { fg = theme.colors.border },
	VertSplit = { fg = theme.colors.border },

	TabLine = { fg = theme.colors.grey, bg = theme.colors.accent_bg },
	TabLineSel = { fg = theme.colors.cold_flame, bg = theme.colors.bg, bold = true },
	TabLineFill = { bg = theme.colors.accent_bg },

	Title = { fg = theme.colors.title, bold = true },
	Question = { fg = theme.colors.winter_mist },
	ModeMsg = { fg = theme.colors.cold_flame },
	MoreMsg = { fg = theme.colors.cold_flame },

	-- Diagnostic groups
	DiagnosticError = { fg = theme.colors.red },
	DiagnosticWarn = { fg = theme.colors.yellow },
	DiagnosticInfo = { fg = theme.colors.cold_flame },
	DiagnosticHint = { fg = theme.colors.winter_mist },
	DiagnosticUnderlineError = { sp = theme.colors.red, undercurl = true },
	DiagnosticUnderlineWarn = { sp = theme.colors.yellow, undercurl = true },
	DiagnosticUnderlineInfo = { sp = theme.colors.cold_flame, undercurl = true },
	DiagnosticUnderlineHint = { sp = theme.colors.winter_mist, undercurl = true },

	-- Git groups
	DiffAdd = { fg = theme.colors.green, bg = "#141e1e" },
	DiffChange = { fg = theme.colors.yellow, bg = "#1e1e18" },
	DiffDelete = { fg = theme.colors.red, bg = "#1e1418" },
	DiffText = { fg = theme.colors.fg, bg = "#1e1e18" },

	gitcommitSummary = { fg = theme.colors.green, bold = true },
	gitcommitBranch = { fg = theme.colors.cold_flame },

	-- LSP groups
	LspReferenceText = { bg = theme.colors.visual },
	LspReferenceRead = { bg = theme.colors.visual },
	LspReferenceWrite = { bg = theme.colors.match_paren, bold = true },
	LspSignatureActiveParameter = { fg = theme.colors.cold_flame, bold = true },

	-- Tree-sitter groups
	["@comment"] = { link = "Comment" },
	["@string"] = { link = "String" },
	["@string.special"] = { fg = theme.colors.frozen_silver },
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
	["@structure"] = { fg = theme.colors.frozen_stone },
	["@namespace"] = { fg = theme.colors.frozen_stone },

	["@variable"] = { fg = theme.colors.fg },
	["@variable.builtin"] = { fg = theme.colors.orange, italic = true },
	["@constant"] = { fg = theme.colors.orange },
	["@constant.builtin"] = { fg = theme.colors.orange, bold = true },
	["@property"] = { fg = theme.colors.cyan2 },

	["@operator"] = { fg = theme.colors.fg },
	["@punctuation.delimiter"] = { fg = theme.colors.border },
	["@punctuation.bracket"] = { fg = theme.colors.fg },
	["@punctuation.special"] = { fg = theme.colors.frost_blue },

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
	["@text.note"] = { fg = theme.colors.winter_mist },
	["@text.warning"] = { fg = theme.colors.yellow },
	["@text.danger"] = { fg = theme.colors.red },

	-- Markdown / markup groups
	["@markup.heading"] = { fg = theme.colors.title, bold = true },
	["@markup.heading.1"] = { fg = theme.colors.cold_flame, bold = true },
	["@markup.heading.2"] = { fg = theme.colors.frost_blue, bold = true },
	["@markup.heading.3"] = { fg = theme.colors.winter_mist, bold = true },
	["@markup.heading.4"] = { fg = theme.colors.blue, bold = true },
	["@markup.heading.5"] = { fg = theme.colors.purple, bold = true },
	["@markup.heading.6"] = { fg = theme.colors.grey, bold = true },
	["@markup.link"] = { fg = theme.colors.link, underline = true },
	["@markup.link.label"] = { fg = theme.colors.cyan },
	["@markup.link.url"] = { fg = theme.colors.blue, underline = true },
	["@markup.list"] = { fg = theme.colors.cold_flame },
	["@markup.list.checked"] = { fg = theme.colors.green },
	["@markup.list.unchecked"] = { fg = theme.colors.grey },
	["@markup.raw"] = { fg = theme.colors.yellow },
	["@markup.raw.block"] = { fg = theme.colors.yellow },
	["@markup.quote"] = { fg = theme.colors.grey, italic = true },
	["@markup.math"] = { fg = theme.colors.frost_blue },
	["@markup.environment"] = { fg = theme.colors.frozen_stone },
	["@markup.environment.name"] = { fg = theme.colors.cold_flame },

	-- Search and visual
	Search = { fg = theme.colors.bg, bg = theme.colors.frost_blue },
	IncSearch = { fg = theme.colors.bg, bg = theme.colors.cold_flame },
	CurSearch = { link = "IncSearch" },
	Substitute = { fg = theme.colors.bg, bg = theme.colors.winter_mist },

	Visual = { bg = theme.colors.visual },
	VisualNOS = { bg = theme.colors.visual, italic = true },
	MatchParen = { fg = theme.colors.cold_flame, bg = theme.colors.match_paren, bold = true },

	-- Cursor
	Cursor = { fg = theme.colors.cursor_fg, bg = theme.colors.cursor_bg },
	lCursor = { link = "Cursor" },
	CursorIM = { link = "Cursor" },

	-- Spell
	SpellBad = { sp = theme.colors.red, undercurl = true },
	SpellCap = { sp = theme.colors.frost_blue, undercurl = true },
	SpellLocal = { sp = theme.colors.cold_flame, undercurl = true },
	SpellRare = { sp = theme.colors.winter_mist, undercurl = true },

	-- Special syntax
	Whitespace = { fg = theme.colors.gray4 },
	NonText = { fg = theme.colors.gray4 },
	Conceal = { fg = theme.colors.grey },
	SpecialKey = { fg = theme.colors.grey },

	-- Quickfix
	QuickFixLine = { bg = theme.colors.quickfix_line },
	qfLineNr = { fg = theme.colors.cold_flame },

	-- Wild menu
	WildMenu = { fg = theme.colors.inverse_fg, bg = theme.colors.cold_flame },

	-- Directory
	Directory = { fg = theme.colors.cold_flame },

	-- Msg area
	ErrorMsg = { fg = theme.colors.red, bold = true },
	WarningMsg = { fg = theme.colors.yellow },
	InfoMsg = { fg = theme.colors.cold_flame },
	HintMsg = { fg = theme.colors.winter_mist },

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
	diffFile = { fg = theme.colors.cold_flame },
	diffNewFile = { fg = theme.colors.green },
	diffOldFile = { fg = theme.colors.red },
	diffLine = { fg = theme.colors.purple },

	-- Neovim specific
	NvimInternalError = { fg = theme.colors.white, bg = theme.colors.dark_red },
	WinBar = { fg = theme.colors.cold_flame, bold = true },
	WinBarNC = { fg = theme.colors.grey },

	-- Indent guides
	IndentBlanklineChar = { fg = theme.colors.indent_guide },
	IndentBlanklineContextChar = { fg = theme.colors.indent_guide_active },

	-- Notify highlights
	NotifyERRORBorder = { fg = theme.colors.red },
	NotifyWARNBorder = { fg = theme.colors.yellow },
	NotifyINFOBorder = { fg = theme.colors.cold_flame },
	NotifyDEBUGBorder = { fg = theme.colors.grey },
	NotifyTRACEBorder = { fg = theme.colors.purple },
	NotifyERRORIcon = { fg = theme.colors.red },
	NotifyWARNIcon = { fg = theme.colors.yellow },
	NotifyINFOIcon = { fg = theme.colors.cold_flame },
	NotifyDEBUGIcon = { fg = theme.colors.grey },
	NotifyTRACEIcon = { fg = theme.colors.purple },
	NotifyERRORTitle = { fg = theme.colors.red },
	NotifyWARNTitle = { fg = theme.colors.yellow },
	NotifyINFOTitle = { fg = theme.colors.cold_flame },
	NotifyDEBUGTitle = { fg = theme.colors.grey },
	NotifyTRACETitle = { fg = theme.colors.purple },

	-- Navic (LSP breadcrumbs)
	NavicIconsFile = { fg = theme.colors.cold_flame },
	NavicIconsModule = { fg = theme.colors.purple },
	NavicIconsNamespace = { fg = theme.colors.frozen_stone },
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
	NavicIconsArray = { fg = theme.colors.frozen_stone },
	NavicIconsObject = { fg = theme.colors.frozen_stone },
	NavicIconsKey = { fg = theme.colors.purple },
	NavicIconsNull = { fg = theme.colors.grey },
	NavicIconsEnumMember = { fg = theme.colors.cyan2 },
	NavicIconsStruct = { fg = theme.colors.frozen_stone },
	NavicIconsEvent = { fg = theme.colors.purple3 },
	NavicIconsOperator = { fg = theme.colors.fg },
	NavicIconsTypeParameter = { fg = theme.colors.cyan },
	NavicText = { fg = theme.colors.fg },
	NavicSeparator = { fg = theme.colors.border },

	-- Additional plugin support
	WhichKey = { fg = theme.colors.cold_flame },
	WhichKeyGroup = { fg = theme.colors.purple },
	WhichKeyDesc = { fg = theme.colors.fg },
	WhichKeySeperator = { fg = theme.colors.grey },
	WhichKeyFloat = { bg = theme.colors.inverse_fg },

	TelescopePromptBorder = { fg = theme.colors.border },
	TelescopeResultsBorder = { fg = theme.colors.border },
	TelescopePreviewBorder = { fg = theme.colors.border },
	TelescopeSelection = { bg = theme.colors.frozen_palace },
	TelescopeMatching = { fg = theme.colors.cold_flame, bold = true },

	NoiceCursor = { link = "Cursor" },
	NoiceFormatProgressDone = { bg = theme.colors.cold_flame },
	NoiceFormatProgressTodo = { bg = theme.colors.gray3 },

	-- DAP UI
	DapUIScope = { fg = theme.colors.cold_flame },
	DapUIType = { fg = theme.colors.cyan },
	DapUIValue = { fg = theme.colors.orange },
	DapUIVariable = { fg = theme.colors.fg },
	DapUIBreakpointsPath = { fg = theme.colors.cold_flame },
	DapUIBreakpointsInfo = { fg = theme.colors.winter_mist },
	DapUIBreakpointsCurrentLine = { fg = theme.colors.frost_blue, bold = true },
}

theme.terminal_colors = {
	[0] = theme.colors.glacier_deep,
	[1] = theme.colors.red,
	[2] = theme.colors.green,
	[3] = theme.colors.orange,
	[4] = theme.colors.cold_flame,
	[5] = theme.colors.purple,
	[6] = theme.colors.cyan,
	[7] = theme.colors.bone_white,
	[8] = theme.colors.grey,
	[9] = theme.colors.red,
	[10] = theme.colors.spectral_frost,
	[11] = theme.colors.yellow,
	[12] = theme.colors.ghost_flame,
	[13] = theme.colors.purple3,
	[14] = theme.colors.glacial_cyan,
	[15] = theme.colors.white,
}

return theme
