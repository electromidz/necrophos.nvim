local theme = {}

-- Palette drawn from Kunkka, the Admiral (dota2.com/hero/kunkka):
-- night-ocean navy hull, Ghostship spectral teal, brass buttons and admiral
-- gold, weathered coat leather, cannon crimson, and Torrent sea foam.
theme.colors = {
	-- Base colors - moonlit ocean at night
	fg = "#cdd9e2", -- sea mist on deck
	inverse_fg = "#0e2436", -- float / statusline hull
	bg = "#061a2b", -- deep water
	accent_bg = "#0e2436",
	link = "#4db8cc",
	accent = "#5cc6c9", -- Ghostship glow
	border = "#2c7183",

	-- Syntax highlighting - lifted contrast, each hue clearly separated
	red = "#e2666c", -- cannon fire
	orange = "#e09a5f", -- rum amber
	yellow = "#e8c76e", -- doubloons
	green = "#63c79b", -- sea moss
	cyan = "#6fd3bd", -- Ghostship hull teal (types) - H167 - 9.9:1
	blue = "#6fa8d6", -- Tidebringer steel
	purple = "#a793e8", -- X marks the spot
	grey = "#70869c", -- comments - 4.7:1

	-- Kunkka-specific colors
	tide_blue = "#41b3c6", -- Torrent water
	ship_brown = "#c09a6d", -- ship timber
	ghost_green = "#7fd6c6", -- ghost ship hull
	cannon_red = "#d9615f", -- rusted cannon
	admiral_gold = "#e0b45c", -- epaulettes and braid
	storm_gray = "#455a6b", -- squall
	deep_navy = "#04121f", -- abyss
	torrent_foam = "#adc6d4", -- spray

	-- UI colors (no alpha - Neovim ignores it)
	folded_bg = "#0c2437",
	cursor_fg = "#04121f",
	cursor_bg = "#7fd6c6",
	line_number_fg = "#4f6a7e", -- was 2.3:1, now 3.1:1
	line_number_active_fg = "#a3dfe8",
	sign_add = "#63c79b",
	sign_change = "#e0b45c",
	sign_delete = "#d9615f",
	indent_guide = "#173044",
	indent_guide_active = "#3d7385",
	visual = "#173a4d",
	match_paren = "#1d4256",
	search_blue = "#0a3d52",
	incremental_search_blue = "#2a5468",
	error_red = "#e2666c",
	word_highlight = "#1b3546",
	word_highlight_write = "#254159",
	changed = "#a9c6dd",
	quickfix_line = "#0d2b3d",
	ui_border = "#4f7488",
	ui_border2 = "#1a3648",
	nvim_tree_file = "#9ab3c4",
	nvim_tree_indent_marker = "#37505f",
	tab_active_bg = "#0e2c40",
	tab_inactive_bg = "#03121e",
	title = "#6fc3e0",
	parameter = "#c8d4de",
	string_delimiter = "#efdca6",
	dark = "#03101c",
	dark2 = "#051624",
	dark3 = "#132a20",
	white = "#ffffff",
	white2 = "#eef4f8",
	dark_white = "#c7d2da",
	gray = "#1e2c38",
	gray2 = "#cad8e2",
	gray3 = "#31434f",
	gray4 = "#4d6072",
	gray5 = "#8d9daa",
	gray6 = "#748ea1",
	light_blue = "#74c6e8",
	blue2 = "#0b2436",
	blue3 = "#102b3e",
	blue4 = "#17384f",
	blue5 = "#204a63",
	blue6 = "#264f6a",
	blue7 = "#345a72",
	blue8 = "#57a3dd",
	blue9 = "#3a5f78",
	blue10 = "#5f7a95",
	blue11 = "#8bb4d8",
	blue12 = "#aec8d8",
	blue13 = "#07202f",
	blue14 = "#213645",
	blue15 = "#2aa3e0",
	green2 = "#63c79b",
	light_cyan = "#c2ece8",
	cyan2 = "#7fd6c6",
	cyan3 = "#57b3ab",
	cyan4 = "#79c9c2",
	cyan5 = "#b3e5de",
	dark_cyan = "#5a7d80",
	light_red = "#f08a90",
	red2 = "#e2666c",
	red3 = "#b8474f",
	dark_red = "#8c1f22",
	light_orange = "#e8bc8a",
	orange2 = "#eeae74",
	light_yellow = "#f2e3a4",
	yellow2 = "#a88f4f",
	yellow3 = "#e8c76e",
	yellow4 = "#efdca6",
	yellow5 = "#d4b45c",
	light_purple = "#b9a9ef",
	purple2 = "#6a72e0",
	purple3 = "#c07fd4",
	purple4 = "#8b8ce0",
	dark_purple = "#2a2a52",
	magenta = "#c08ee0",
	magenta2 = "#bb86cf",
	magenta3 = "#d0a8f0",
	magenta4 = "#e04a8c",
	magenta5 = "#3a2a4a",
	magenta6 = "#4a3557",

	-- Kunkka-themed additions
	tide_pool = "#123a4a", -- shallows (selection wash)
	ship_wake = "#3f5666", -- ghostly wake
	navy_blue = "#183a55", -- admiralty navy
	rope_tan = "#c4b087", -- rigging and canvas
	brass_fitting = "#d4a55e", -- fittings and hardware
	seaweed_green = "#4f9c86", -- kelp
	storm_cloud = "#36485a", -- squall front
	cannon_smoke = "#78909f", -- powder smoke
	treasure_chest = "#e0b45c", -- plunder
	ghly_cyan = "#347068", -- dim ghost hull
	deep_abyss = "#020c16", -- trench
	coral_pink = "#dd8296", -- reef life
	anchor_iron = "#54697a", -- iron and chain
	sail_white = "#ece6d6", -- sailcloth
	rum_amber = "#c2662f", -- the Admiral's drink

	black = "#000000",
	light_green = "#9adfb8",
}

theme.groups = {
	-- Base groups
	Normal = { fg = theme.colors.fg, bg = theme.colors.bg },
	NormalFloat = { fg = theme.colors.fg, bg = theme.colors.inverse_fg },
	FloatBorder = { fg = theme.colors.border, bg = theme.colors.inverse_fg },
	FloatTitle = { fg = theme.colors.tide_blue, bg = theme.colors.inverse_fg, bold = true },

	-- Syntax groups
	Comment = { fg = theme.colors.grey, italic = true },
	Constant = { fg = theme.colors.orange },
	String = { fg = theme.colors.yellow },
	Character = { fg = theme.colors.yellow },
	Number = { fg = theme.colors.orange },
	Boolean = { fg = theme.colors.orange },
	Float = { fg = theme.colors.orange },

	Identifier = { fg = theme.colors.cyan },
	Function = { fg = theme.colors.tide_blue, bold = true },

	Statement = { fg = theme.colors.purple },
	Conditional = { fg = theme.colors.purple },
	Repeat = { fg = theme.colors.purple },
	Label = { fg = theme.colors.purple },
	Operator = { fg = theme.colors.blue },
	Keyword = { fg = theme.colors.purple, italic = true },
	Exception = { fg = theme.colors.cannon_red },

	PreProc = { fg = theme.colors.ship_brown },
	Include = { fg = theme.colors.purple },
	Define = { fg = theme.colors.ship_brown },
	Macro = { fg = theme.colors.ship_brown },
	PreCondit = { fg = theme.colors.ship_brown },

	Type = { fg = theme.colors.cyan },
	StorageClass = { fg = theme.colors.purple },
	Structure = { fg = theme.colors.ship_brown },
	Typedef = { fg = theme.colors.cyan },

	Special = { fg = theme.colors.tide_blue },
	SpecialChar = { fg = theme.colors.cannon_red },
	Tag = { fg = theme.colors.blue },
	Delimiter = { fg = theme.colors.fg },
	SpecialComment = { fg = theme.colors.grey, bold = true },
	Debug = { fg = theme.colors.cannon_red },

	Underlined = { fg = theme.colors.link, underline = true },
	Bold = { bold = true },
	Italic = { italic = true },

	-- UI groups
	LineNr = { fg = theme.colors.line_number_fg },
	CursorLineNr = { fg = theme.colors.line_number_active_fg, bold = true },
	CursorLine = { bg = theme.colors.blue2 },
	CursorColumn = { bg = theme.colors.blue2 },
	ColorColumn = { bg = theme.colors.blue2 },

	SignColumn = { fg = theme.colors.grey, bg = theme.colors.bg },
	FoldColumn = { fg = theme.colors.grey, bg = theme.colors.bg },
	Folded = { fg = theme.colors.gray6, bg = theme.colors.folded_bg, italic = true },

	Pmenu = { fg = theme.colors.fg, bg = theme.colors.inverse_fg },
	PmenuSel = { fg = theme.colors.inverse_fg, bg = theme.colors.tide_blue, bold = true },
	PmenuSbar = { bg = theme.colors.storm_gray },
	PmenuThumb = { bg = theme.colors.border },

	StatusLine = { fg = theme.colors.fg, bg = theme.colors.inverse_fg },
	StatusLineNC = { fg = theme.colors.grey, bg = theme.colors.inverse_fg },
	WinSeparator = { fg = theme.colors.border },
	VertSplit = { fg = theme.colors.border },

	TabLine = { fg = theme.colors.grey, bg = theme.colors.inverse_fg },
	TabLineSel = { fg = theme.colors.tide_blue, bg = theme.colors.bg, bold = true },
	TabLineFill = { bg = theme.colors.inverse_fg },

	Title = { fg = theme.colors.title, bold = true },
	Question = { fg = theme.colors.ghost_green },
	ModeMsg = { fg = theme.colors.tide_blue },
	MoreMsg = { fg = theme.colors.tide_blue },

	-- Diagnostic groups
	DiagnosticError = { fg = theme.colors.cannon_red },
	DiagnosticWarn = { fg = theme.colors.admiral_gold },
	DiagnosticInfo = { fg = theme.colors.tide_blue },
	DiagnosticHint = { fg = theme.colors.ghost_green },
	DiagnosticUnderlineError = { sp = theme.colors.cannon_red, undercurl = true },
	DiagnosticUnderlineWarn = { sp = theme.colors.admiral_gold, undercurl = true },
	DiagnosticUnderlineInfo = { sp = theme.colors.tide_blue, undercurl = true },
	DiagnosticUnderlineHint = { sp = theme.colors.ghost_green, undercurl = true },

	-- Git groups
	DiffAdd = { fg = theme.colors.bg, bg = theme.colors.ghost_green },
	DiffChange = { fg = theme.colors.bg, bg = theme.colors.admiral_gold },
	DiffDelete = { fg = theme.colors.bg, bg = theme.colors.cannon_red },
	DiffText = { fg = theme.colors.bg, bg = theme.colors.tide_blue },

	gitcommitSummary = { fg = theme.colors.green, bold = true },
	gitcommitBranch = { fg = theme.colors.tide_blue },

	-- LSP groups
	LspReferenceText = { bg = theme.colors.tide_pool },
	LspReferenceRead = { bg = theme.colors.tide_pool },
	LspReferenceWrite = { bg = theme.colors.navy_blue },
	LspSignatureActiveParameter = { fg = theme.colors.admiral_gold, bold = true },

	-- Tree-sitter groups
	["@comment"] = { link = "Comment" },
	["@string"] = { link = "String" },
	["@string.special"] = { fg = theme.colors.rope_tan },
	["@character"] = { link = "Character" },
	["@number"] = { link = "Number" },
	["@boolean"] = { link = "Boolean" },
	["@float"] = { link = "Float" },

	["@function"] = { fg = theme.colors.tide_blue, bold = true },
	["@function.call"] = { fg = theme.colors.tide_blue },
	["@method"] = { fg = theme.colors.tide_blue },
	["@method.call"] = { fg = theme.colors.tide_blue },
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
	["@exception"] = { fg = theme.colors.cannon_red },

	["@type"] = { fg = theme.colors.cyan },
	["@type.builtin"] = { fg = theme.colors.cyan, italic = true },
	["@structure"] = { fg = theme.colors.ship_brown },
	["@namespace"] = { fg = theme.colors.ship_brown },

	["@variable"] = { fg = theme.colors.fg },
	["@variable.builtin"] = { fg = theme.colors.orange, italic = true },
	["@constant"] = { fg = theme.colors.orange },
	["@constant.builtin"] = { fg = theme.colors.orange, bold = true },
	["@property"] = { fg = theme.colors.cyan2 },

	["@operator"] = { fg = theme.colors.blue },
	["@punctuation.delimiter"] = { fg = theme.colors.gray6 },
	["@punctuation.bracket"] = { fg = theme.colors.fg },
	["@punctuation.special"] = { fg = theme.colors.tide_blue },

	["@tag"] = { fg = theme.colors.blue },
	["@tag.delimiter"] = { fg = theme.colors.gray6 },
	["@tag.attribute"] = { fg = theme.colors.cyan },

	["@text"] = { fg = theme.colors.fg },
	["@text.strong"] = { bold = true },
	["@text.emphasis"] = { italic = true },
	["@text.underline"] = { underline = true },
	["@text.strike"] = { strikethrough = true },
	["@text.title"] = { fg = theme.colors.title, bold = true },
	["@markup.heading"] = { fg = theme.colors.title, bold = true },
	["@markup.heading.1"] = { fg = theme.colors.tide_blue, bold = true },
	["@markup.heading.2"] = { fg = theme.colors.ghost_green, bold = true },
	["@markup.heading.3"] = { fg = theme.colors.cyan, bold = true },
	["@markup.heading.4"] = { fg = theme.colors.blue, bold = true },
	["@markup.heading.5"] = { fg = theme.colors.purple, bold = true },
	["@markup.heading.6"] = { fg = theme.colors.grey, bold = true },
	["@markup.link"] = { fg = theme.colors.link, underline = true },
	["@markup.link.label"] = { fg = theme.colors.cyan },
	["@markup.link.url"] = { fg = theme.colors.blue, underline = true },
	["@markup.list"] = { fg = theme.colors.tide_blue },
	["@markup.list.checked"] = { fg = theme.colors.tide_blue },
	["@markup.list.unchecked"] = { fg = theme.colors.grey },
	["@markup.raw"] = { fg = theme.colors.yellow },
	["@markup.raw.block"] = { fg = theme.colors.yellow },
	["@markup.quote"] = { fg = theme.colors.grey, italic = true },
	["@markup.math"] = { fg = theme.colors.admiral_gold },
	["@markup.environment"] = { fg = theme.colors.ship_brown },
	["@markup.environment.name"] = { fg = theme.colors.tide_blue },
	["@text.literal"] = { fg = theme.colors.yellow },
	["@text.uri"] = { fg = theme.colors.link, underline = true },
	["@text.note"] = { fg = theme.colors.ghost_green },
	["@text.warning"] = { fg = theme.colors.admiral_gold },
	["@text.danger"] = { fg = theme.colors.cannon_red },

	-- Search and visual
	Search = { fg = theme.colors.bg, bg = theme.colors.admiral_gold },
	IncSearch = { fg = theme.colors.bg, bg = theme.colors.tide_blue },
	CurSearch = { link = "IncSearch" },
	Substitute = { fg = theme.colors.bg, bg = theme.colors.ghost_green },

	Visual = { bg = theme.colors.visual },
	VisualNOS = { bg = theme.colors.visual, italic = true },
	MatchParen = { fg = theme.colors.admiral_gold, bg = theme.colors.match_paren, bold = true },

	-- Cursor
	Cursor = { fg = theme.colors.cursor_fg, bg = theme.colors.cursor_bg },
	lCursor = { link = "Cursor" },
	CursorIM = { link = "Cursor" },

	-- Spell
	SpellBad = { sp = theme.colors.cannon_red, undercurl = true },
	SpellCap = { sp = theme.colors.admiral_gold, undercurl = true },
	SpellLocal = { sp = theme.colors.tide_blue, undercurl = true },
	SpellRare = { sp = theme.colors.ghost_green, undercurl = true },

	-- Special syntax
	Whitespace = { fg = theme.colors.gray4 },
	NonText = { fg = theme.colors.gray4 },
	Conceal = { fg = theme.colors.grey },
	SpecialKey = { fg = theme.colors.grey },

	-- Quickfix
	QuickFixLine = { bg = theme.colors.quickfix_line },
	qfLineNr = { fg = theme.colors.tide_blue },

	-- Wild menu
	WildMenu = { fg = theme.colors.inverse_fg, bg = theme.colors.tide_blue },

	-- Directory
	Directory = { fg = theme.colors.tide_blue },

	-- Msg area
	ErrorMsg = { fg = theme.colors.cannon_red, bold = true },
	WarningMsg = { fg = theme.colors.admiral_gold },
	InfoMsg = { fg = theme.colors.tide_blue },
	HintMsg = { fg = theme.colors.ghost_green },

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
	diffFile = { fg = theme.colors.tide_blue },
	diffNewFile = { fg = theme.colors.ghost_green },
	diffOldFile = { fg = theme.colors.cannon_red },
	diffLine = { fg = theme.colors.purple },

	-- Neovim specific
	NvimInternalError = { fg = theme.colors.white, bg = theme.colors.dark_red },
	WinBar = { fg = theme.colors.tide_blue, bold = true },
	WinBarNC = { fg = theme.colors.grey },

	-- Indent guides
	IndentBlanklineChar = { fg = theme.colors.indent_guide },
	IndentBlanklineContextChar = { fg = theme.colors.indent_guide_active },

	-- Notify highlights
	NotifyERRORBorder = { fg = theme.colors.cannon_red },
	NotifyWARNBorder = { fg = theme.colors.admiral_gold },
	NotifyINFOBorder = { fg = theme.colors.tide_blue },
	NotifyDEBUGBorder = { fg = theme.colors.grey },
	NotifyTRACEBorder = { fg = theme.colors.purple },
	NotifyERRORIcon = { fg = theme.colors.cannon_red },
	NotifyWARNIcon = { fg = theme.colors.admiral_gold },
	NotifyINFOIcon = { fg = theme.colors.tide_blue },
	NotifyDEBUGIcon = { fg = theme.colors.grey },
	NotifyTRACEIcon = { fg = theme.colors.purple },
	NotifyERRORTitle = { fg = theme.colors.cannon_red },
	NotifyWARNTitle = { fg = theme.colors.admiral_gold },
	NotifyINFOTitle = { fg = theme.colors.tide_blue },
	NotifyDEBUGTitle = { fg = theme.colors.grey },
	NotifyTRACETitle = { fg = theme.colors.purple },

	-- Navic (LSP breadcrumbs)
	NavicIconsFile = { fg = theme.colors.tide_blue },
	NavicIconsModule = { fg = theme.colors.purple },
	NavicIconsNamespace = { fg = theme.colors.ship_brown },
	NavicIconsPackage = { fg = theme.colors.orange },
	NavicIconsClass = { fg = theme.colors.cyan },
	NavicIconsMethod = { fg = theme.colors.tide_blue },
	NavicIconsProperty = { fg = theme.colors.cyan2 },
	NavicIconsField = { fg = theme.colors.cyan2 },
	NavicIconsConstructor = { fg = theme.colors.cyan },
	NavicIconsEnum = { fg = theme.colors.cyan },
	NavicIconsInterface = { fg = theme.colors.cyan },
	NavicIconsFunction = { fg = theme.colors.tide_blue },
	NavicIconsVariable = { fg = theme.colors.fg },
	NavicIconsConstant = { fg = theme.colors.orange },
	NavicIconsString = { fg = theme.colors.yellow },
	NavicIconsNumber = { fg = theme.colors.orange },
	NavicIconsBoolean = { fg = theme.colors.orange },
	NavicIconsArray = { fg = theme.colors.ship_brown },
	NavicIconsObject = { fg = theme.colors.ship_brown },
	NavicIconsKey = { fg = theme.colors.purple },
	NavicIconsNull = { fg = theme.colors.grey },
	NavicIconsEnumMember = { fg = theme.colors.cyan2 },
	NavicIconsStruct = { fg = theme.colors.ship_brown },
	NavicIconsEvent = { fg = theme.colors.purple3 },
	NavicIconsOperator = { fg = theme.colors.blue },
	NavicIconsTypeParameter = { fg = theme.colors.cyan },
	NavicText = { fg = theme.colors.fg },
	NavicSeparator = { fg = theme.colors.border },

	-- Additional plugin support
	WhichKey = { fg = theme.colors.tide_blue },
	WhichKeyGroup = { fg = theme.colors.purple },
	WhichKeyDesc = { fg = theme.colors.fg },
	WhichKeySeperator = { fg = theme.colors.grey },
	WhichKeyFloat = { bg = theme.colors.inverse_fg },

	TelescopePromptBorder = { fg = theme.colors.border },
	TelescopeResultsBorder = { fg = theme.colors.border },
	TelescopePreviewBorder = { fg = theme.colors.border },
	TelescopeSelection = { bg = theme.colors.tide_pool },
	TelescopeMatching = { fg = theme.colors.admiral_gold, bold = true },

	NoiceCursor = { link = "Cursor" },
	NoiceFormatProgressDone = { bg = theme.colors.tide_blue },
	NoiceFormatProgressTodo = { bg = theme.colors.storm_gray },

	-- DAP UI
	DapUIScope = { fg = theme.colors.tide_blue },
	DapUIType = { fg = theme.colors.cyan },
	DapUIValue = { fg = theme.colors.orange },
	DapUIVariable = { fg = theme.colors.fg },
	DapUIBreakpointsPath = { fg = theme.colors.tide_blue },
	DapUIBreakpointsInfo = { fg = theme.colors.ghost_green },
	DapUIBreakpointsCurrentLine = { fg = theme.colors.admiral_gold, bold = true },
}

theme.terminal_colors = {
	[0] = theme.colors.deep_navy,
	[1] = theme.colors.cannon_red,
	[2] = theme.colors.seaweed_green,
	[3] = theme.colors.admiral_gold,
	[4] = theme.colors.tide_blue,
	[5] = theme.colors.purple,
	[6] = theme.colors.cyan,
	[7] = theme.colors.torrent_foam,
	[8] = theme.colors.storm_gray,
	[9] = theme.colors.cannon_red,
	[10] = theme.colors.green,
	[11] = theme.colors.admiral_gold,
	[12] = theme.colors.tide_blue,
	[13] = theme.colors.purple,
	[14] = theme.colors.cyan,
	[15] = theme.colors.sail_white,
}

return theme
