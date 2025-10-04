local theme = {}

theme.colors = {
	-- Base colors - Necrophos plague doctor theme
	fg = "#c2c5c7",
	inverse_fg = "#1a2620",
	bg = "#0e1a20",
	accent_bg = "#1a2620",
	link = "#22CA5E",
	accent = "#169C5C",
	border = "#20565E",

	-- Syntax highlighting - Plague-themed colors
	red = "#c25c5c", -- Disease and decay red
	orange = "#c28c5c", -- Aged potions and toxins
	yellow = "#B3AA56", -- Sickness and pallor yellow
	green = "#22CA5E", -- Toxic green
	cyan = "#169C5C", -- Plague doctor's emerald
	blue = "#1E3749", -- Mystical blue
	purple = "#8c7ac2", -- Magical purple (necromancy)
	grey = "#5d6b72", -- Ash and decay grey

	-- Necrophos-specific colors
	plague_green = "#22CA5E", -- Vibrant toxic green
	doctor_brown = "#8c7a6c", -- Leather and cloth of plague doctor
	ghostly_teal = "#6ab09c", -- Ethereal soul energy
	poison_purple = "#9c5c8c", -- Poison and disease purple
	gold_accent = "#b3aa56", -- Gold accents on staff and armor
	decay_gray = "#5a6c6a", -- Death and decay gray
	deep_plague = "#0a141a", -- Deep plague color
	mist_white = "#9fa8a8", -- Ghostly mist/poison cloud

	-- Existing UI colors
	folded_bg = "#142630",
	cursor_fg = "#805a4e",
	cursor_bg = "#80a49c",
	line_number_fg = "#4b6972",
	line_number_active_fg = "#c5fcd4",
	sign_add = "#65cc8c",
	sign_change = "#e2d93d",
	sign_delete = "#ef5350",
	indent_guide = "#1f4d4d",
	indent_guide_active = "#7eac9c",
	visual = "#1d534d",
	match_paren = "#1e4a42",
	search_blue = "#063d3d",
	incremental_search_blue = "#2E5C54",
	error_red = "#ef5350",
	word_highlight = "#334d42",
	word_highlight_write = "#2f503a",
	changed = "#a2fccc",
	quickfix_line = "#0e3f2f",
	ui_border = "#5f9787",
	ui_border2 = "#205d4d",
	nvim_tree_file = "#89bbaa",
	nvim_tree_indent_marker = "#585858",
	tab_active_bg = "#0b4232",
	tab_inactive_bg = "#011d14",
	title = "#82ffb1",
	parameter = "#d7e0da",
	string_delimiter = "#d9f5e6",
	dark = "#011810",
	dark2 = "#012014",
	dark3 = "#1a291f",
	white = "#ffffff",
	white2 = "#eeffee",
	dark_white = "#cccccc",
	gray = "#26392a",
	gray2 = "#d2e7de",
	gray3 = "#364a41",
	gray4 = "#5a7767",
	gray5 = "#969696",
	gray6 = "#7eac9c",
	light_blue = "#78f0cc",
	blue2 = "#0b3a25",
	blue3 = "#12422d",
	blue4 = "#1a5a3a",
	blue5 = "#237045",
	blue6 = "#2a7045",
	blue7 = "#397555",
	blue8 = "#5ce4a7",
	blue9 = "#3a7a5a",
	blue10 = "#69987a",
	blue11 = "#8ee3ac",
	blue12 = "#b2d6c6",
	blue13 = "#073222",
	blue14 = "#274835",
	blue15 = "#16ff9f",
	green2 = "#6CC85E",
	light_cyan = "#caecdc",
	cyan2 = "#7fdbb8",
	cyan3 = "#5ab097",
	cyan4 = "#80cbb4",
	cyan5 = "#baebd2",
	dark_cyan = "#63776d",
	light_red = "#ff869a",
	red2 = "#ff6363",
	red3 = "#c53550",
	dark_red = "#ab0300",
	light_orange = "#ecc48d",
	orange2 = "#ffcb8b",
	light_yellow = "#faf39f",
	yellow2 = "#b39554",
	yellow3 = "#fad430",
	yellow4 = "#ffeb95",
	yellow5 = "#d4b45c",
	light_purple = "#a599e9",
	purple2 = "#51f06e",
	purple3 = "#70d67a",
	purple4 = "#79e786",
	dark_purple = "#2E5E2D",
	magenta = "#92eac7",
	magenta2 = "#89d6b8",
	magenta3 = "#aaffd1",
	magenta4 = "#2cff83",
	magenta5 = "#2a5a3a",
	magenta6 = "#3a6a4a",

	-- New Necrophos-themed additions
	plague_cloud = "#1a4d3d", -- Poison cloud areas
	ghost_wisp = "#5a6c6a", -- Ghostly spirit wisps
	forest_green = "#1e5c3a", -- Death pulse green
	bandage_tan = "#b8a47c", -- Bandages and wrappings
	brass_trim = "#d4a85c", -- Staff and armor trim
	moss_green = "#4a8c6a", -- Decaying plant life
	storm_green = "#3a5a4a", -- Plague storm
	poison_mist = "#7a9c8a", -- Battle effects
	scythe_metal = "#d4b45c", -- Reaper's Scythe gold
	spectral_green = "#3a6c5a", -- Ghost shroud transparency
	abyssal_plague = "#0a2014", -- Deep plague depths
	rose_thorn = "#d47a8c", -- Heartstopper accents
	iron_gray = "#5a7a6a", -- Metal and bones
	shroud_white = "#e8e6d4", -- Shroud cloth color
	potion_amber = "#b85c2c", -- Mysterious potions

	-- Missing colors that were referenced but not defined
	black = "#000000",
	light_green = "#a8e6a8",
}
theme.groups = {
	-- Base groups
	Normal = { fg = theme.colors.fg, bg = theme.colors.bg },
	NormalFloat = { fg = theme.colors.fg, bg = theme.colors.inverse_fg },
	FloatBorder = { fg = theme.colors.border, bg = theme.colors.inverse_fg },
	FloatTitle = { fg = theme.colors.plague_green, bg = theme.colors.inverse_fg, bold = true },

	-- Syntax groups
	Comment = { fg = theme.colors.grey, italic = true },
	Constant = { fg = theme.colors.orange },
	String = { fg = theme.colors.yellow },
	Character = { fg = theme.colors.yellow },
	Number = { fg = theme.colors.orange },
	Boolean = { fg = theme.colors.orange },
	Float = { fg = theme.colors.orange },

	Identifier = { fg = theme.colors.cyan },
	Function = { fg = theme.colors.plague_green, bold = true },

	Statement = { fg = theme.colors.purple },
	Conditional = { fg = theme.colors.purple },
	Repeat = { fg = theme.colors.purple },
	Label = { fg = theme.colors.purple },
	Operator = { fg = theme.colors.blue },
	Keyword = { fg = theme.colors.purple, italic = true },
	Exception = { fg = theme.colors.poison_purple },

	PreProc = { fg = theme.colors.doctor_brown },
	Include = { fg = theme.colors.purple },
	Define = { fg = theme.colors.doctor_brown },
	Macro = { fg = theme.colors.doctor_brown },
	PreCondit = { fg = theme.colors.doctor_brown },

	Type = { fg = theme.colors.cyan },
	StorageClass = { fg = theme.colors.purple },
	Structure = { fg = theme.colors.doctor_brown },
	Typedef = { fg = theme.colors.cyan },

	Special = { fg = theme.colors.plague_green },
	SpecialChar = { fg = theme.colors.poison_purple },
	Tag = { fg = theme.colors.blue },
	Delimiter = { fg = theme.colors.fg },
	SpecialComment = { fg = theme.colors.grey, bold = true },
	Debug = { fg = theme.colors.poison_purple },

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
	PmenuSel = { fg = theme.colors.inverse_fg, bg = theme.colors.plague_green, bold = true },
	PmenuSbar = { bg = theme.colors.decay_gray },
	PmenuThumb = { bg = theme.colors.border },

	StatusLine = { fg = theme.colors.fg, bg = theme.colors.inverse_fg },
	StatusLineNC = { fg = theme.colors.grey, bg = theme.colors.inverse_fg },
	WinSeparator = { fg = theme.colors.border },
	VertSplit = { fg = theme.colors.border },

	TabLine = { fg = theme.colors.grey, bg = theme.colors.inverse_fg },
	TabLineSel = { fg = theme.colors.plague_green, bg = theme.colors.bg, bold = true },
	TabLineFill = { bg = theme.colors.inverse_fg },

	Title = { fg = theme.colors.title, bold = true },
	Question = { fg = theme.colors.ghostly_teal },
	ModeMsg = { fg = theme.colors.plague_green },
	MoreMsg = { fg = theme.colors.plague_green },

	-- Diagnostic groups
	DiagnosticError = { fg = theme.colors.poison_purple },
	DiagnosticWarn = { fg = theme.colors.gold_accent },
	DiagnosticInfo = { fg = theme.colors.plague_green },
	DiagnosticHint = { fg = theme.colors.ghostly_teal },
	DiagnosticUnderlineError = { sp = theme.colors.poison_purple, undercurl = true },
	DiagnosticUnderlineWarn = { sp = theme.colors.gold_accent, undercurl = true },
	DiagnosticUnderlineInfo = { sp = theme.colors.plague_green, undercurl = true },
	DiagnosticUnderlineHint = { sp = theme.colors.ghostly_teal, undercurl = true },

	-- Git groups
	DiffAdd = { fg = theme.colors.ghostly_teal, bg = theme.colors.ghostly_teal },
	DiffChange = { fg = theme.colors.gold_accent, bg = theme.colors.gold_accent },
	DiffDelete = { fg = theme.colors.poison_purple, bg = theme.colors.poison_purple },
	DiffText = { fg = theme.colors.plague_green, bg = theme.colors.plague_green },

	gitcommitSummary = { fg = theme.colors.green, bold = true },
	gitcommitBranch = { fg = theme.colors.plague_green },

	-- LSP groups
	LspReferenceText = { bg = theme.colors.plague_cloud },
	LspReferenceRead = { bg = theme.colors.plague_cloud },
	LspReferenceWrite = { bg = theme.colors.forest_green },
	LspSignatureActiveParameter = { fg = theme.colors.gold_accent, bold = true },

	-- Tree-sitter groups
	["@comment"] = { link = "Comment" },
	["@string"] = { link = "String" },
	["@string.special"] = { fg = theme.colors.bandage_tan },
	["@character"] = { link = "Character" },
	["@number"] = { link = "Number" },
	["@boolean"] = { link = "Boolean" },
	["@float"] = { link = "Float" },

	["@function"] = { fg = theme.colors.plague_green, bold = true },
	["@function.call"] = { fg = theme.colors.plague_green },
	["@method"] = { fg = theme.colors.plague_green },
	["@method.call"] = { fg = theme.colors.plague_green },
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
	["@exception"] = { fg = theme.colors.poison_purple },

	["@type"] = { fg = theme.colors.cyan },
	["@type.builtin"] = { fg = theme.colors.cyan, italic = true },
	["@structure"] = { fg = theme.colors.doctor_brown },
	["@namespace"] = { fg = theme.colors.doctor_brown },

	["@variable"] = { fg = theme.colors.fg },
	["@variable.builtin"] = { fg = theme.colors.orange, italic = true },
	["@constant"] = { fg = theme.colors.orange },
	["@constant.builtin"] = { fg = theme.colors.orange, bold = true },
	["@property"] = { fg = theme.colors.cyan2 },

	["@operator"] = { fg = theme.colors.blue },
	["@punctuation.delimiter"] = { fg = theme.colors.border },
	["@punctuation.bracket"] = { fg = theme.colors.fg },
	["@punctuation.special"] = { fg = theme.colors.plague_green },

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
	["@text.note"] = { fg = theme.colors.ghostly_teal },
	["@text.warning"] = { fg = theme.colors.gold_accent },
	["@text.danger"] = { fg = theme.colors.poison_purple },

	-- Search and visual
	Search = { fg = theme.colors.bg, bg = theme.colors.gold_accent },
	IncSearch = { fg = theme.colors.bg, bg = theme.colors.plague_green },
	CurSearch = { link = "IncSearch" },
	Substitute = { fg = theme.colors.bg, bg = theme.colors.ghostly_teal },

	Visual = { bg = theme.colors.visual },
	VisualNOS = { bg = theme.colors.visual, italic = true },
	MatchParen = { fg = theme.colors.gold_accent, bg = theme.colors.match_paren, bold = true },

	-- Cursor
	Cursor = { fg = theme.colors.cursor_fg, bg = theme.colors.cursor_bg },
	lCursor = { link = "Cursor" },
	CursorIM = { link = "Cursor" },

	-- Spell
	SpellBad = { sp = theme.colors.poison_purple, undercurl = true },
	SpellCap = { sp = theme.colors.gold_accent, undercurl = true },
	SpellLocal = { sp = theme.colors.plague_green, undercurl = true },
	SpellRare = { sp = theme.colors.ghostly_teal, undercurl = true },

	-- Special syntax
	Whitespace = { fg = theme.colors.gray4 },
	NonText = { fg = theme.colors.gray4 },
	Conceal = { fg = theme.colors.grey },
	SpecialKey = { fg = theme.colors.grey },

	-- Quickfix
	QuickFixLine = { bg = theme.colors.quickfix_line },
	qfLineNr = { fg = theme.colors.plague_green },

	-- Wild menu
	WildMenu = { fg = theme.colors.inverse_fg, bg = theme.colors.plague_green },

	-- Directory
	Directory = { fg = theme.colors.plague_green },

	-- Msg area
	ErrorMsg = { fg = theme.colors.poison_purple, bold = true },
	WarningMsg = { fg = theme.colors.gold_accent },
	InfoMsg = { fg = theme.colors.plague_green },
	HintMsg = { fg = theme.colors.ghostly_teal },

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
	diffFile = { fg = theme.colors.plague_green },
	diffNewFile = { fg = theme.colors.ghostly_teal },
	diffOldFile = { fg = theme.colors.poison_purple },
	diffLine = { fg = theme.colors.purple },

	-- Neovim specific
	NvimInternalError = { fg = theme.colors.white, bg = theme.colors.dark_red },
	WinBar = { fg = theme.colors.plague_green, bold = true },
	WinBarNC = { fg = theme.colors.grey },

	-- Indent guides
	IndentBlanklineChar = { fg = theme.colors.indent_guide },
	IndentBlanklineContextChar = { fg = theme.colors.indent_guide_active },

	-- Notify highlights
	NotifyERRORBorder = { fg = theme.colors.poison_purple },
	NotifyWARNBorder = { fg = theme.colors.gold_accent },
	NotifyINFOBorder = { fg = theme.colors.plague_green },
	NotifyDEBUGBorder = { fg = theme.colors.grey },
	NotifyTRACEBorder = { fg = theme.colors.purple },
	NotifyERRORIcon = { fg = theme.colors.poison_purple },
	NotifyWARNIcon = { fg = theme.colors.gold_accent },
	NotifyINFOIcon = { fg = theme.colors.plague_green },
	NotifyDEBUGIcon = { fg = theme.colors.grey },
	NotifyTRACEIcon = { fg = theme.colors.purple },
	NotifyERRORTitle = { fg = theme.colors.poison_purple },
	NotifyWARNTitle = { fg = theme.colors.gold_accent },
	NotifyINFOTitle = { fg = theme.colors.plague_green },
	NotifyDEBUGTitle = { fg = theme.colors.grey },
	NotifyTRACETitle = { fg = theme.colors.purple },

	-- Navic (LSP breadcrumbs)
	NavicIconsFile = { fg = theme.colors.plague_green },
	NavicIconsModule = { fg = theme.colors.purple },
	NavicIconsNamespace = { fg = theme.colors.doctor_brown },
	NavicIconsPackage = { fg = theme.colors.orange },
	NavicIconsClass = { fg = theme.colors.cyan },
	NavicIconsMethod = { fg = theme.colors.plague_green },
	NavicIconsProperty = { fg = theme.colors.cyan2 },
	NavicIconsField = { fg = theme.colors.cyan2 },
	NavicIconsConstructor = { fg = theme.colors.cyan },
	NavicIconsEnum = { fg = theme.colors.cyan },
	NavicIconsInterface = { fg = theme.colors.cyan },
	NavicIconsFunction = { fg = theme.colors.plague_green },
	NavicIconsVariable = { fg = theme.colors.fg },
	NavicIconsConstant = { fg = theme.colors.orange },
	NavicIconsString = { fg = theme.colors.yellow },
	NavicIconsNumber = { fg = theme.colors.orange },
	NavicIconsBoolean = { fg = theme.colors.orange },
	NavicIconsArray = { fg = theme.colors.doctor_brown },
	NavicIconsObject = { fg = theme.colors.doctor_brown },
	NavicIconsKey = { fg = theme.colors.purple },
	NavicIconsNull = { fg = theme.colors.grey },
	NavicIconsEnumMember = { fg = theme.colors.cyan2 },
	NavicIconsStruct = { fg = theme.colors.doctor_brown },
	NavicIconsEvent = { fg = theme.colors.purple3 },
	NavicIconsOperator = { fg = theme.colors.blue },
	NavicIconsTypeParameter = { fg = theme.colors.cyan },
	NavicText = { fg = theme.colors.fg },
	NavicSeparator = { fg = theme.colors.border },

	-- Additional plugin support
	WhichKey = { fg = theme.colors.plague_green },
	WhichKeyGroup = { fg = theme.colors.purple },
	WhichKeyDesc = { fg = theme.colors.fg },
	WhichKeySeperator = { fg = theme.colors.grey },
	WhichKeyFloat = { bg = theme.colors.inverse_fg },

	TelescopePromptBorder = { fg = theme.colors.border },
	TelescopeResultsBorder = { fg = theme.colors.border },
	TelescopePreviewBorder = { fg = theme.colors.border },
	TelescopeSelection = { bg = theme.colors.plague_cloud },
	TelescopeMatching = { fg = theme.colors.gold_accent, bold = true },

	NoiceCursor = { link = "Cursor" },
	NoiceFormatProgressDone = { bg = theme.colors.plague_green },
	NoiceFormatProgressTodo = { bg = theme.colors.decay_gray },

	-- DAP UI
	DapUIScope = { fg = theme.colors.plague_green },
	DapUIType = { fg = theme.colors.cyan },
	DapUIValue = { fg = theme.colors.orange },
	DapUIVariable = { fg = theme.colors.fg },
	DapUIBreakpointsPath = { fg = theme.colors.plague_green },
	DapUIBreakpointsInfo = { fg = theme.colors.ghostly_teal },
	DapUIBreakpointsCurrentLine = { fg = theme.colors.gold_accent, bold = true },
}

theme.terminal_colors =
	{
		[0] = theme.colors.deep_plague, -- black
		[1] = theme.colors.poison_purple, -- red
		[2] = theme.colors.plague_green, -- green
		[3] = theme.colors.gold_accent, -- yellow
		[4] = theme.colors.ghostly_teal, -- blue
		[5] = theme.colors.purple, -- magenta
		[6] = theme.colors.cyan, -- cyan
		[7] = theme.colors.mist_white, -- white
		[8] = theme.colors.decay_gray, -- bright black
		[9] = theme.colors.poison_purple, -- bright red
		[10] = theme.colors.plague_green, -- bright green
		[11] = theme.colors.gold_accent, -- bright yellow
		[12] = theme.colors.ghostly_teal, -- bright blue
		[13] = theme.colors.purple, -- bright magenta
		[14] = theme.colors.cyan, -- bright cyan
		[15] = theme.colors.white, -- bright white
	},
	-- ADD THIS SECTION RIGHT HERE:
	-- Clear existing highlights and set colorscheme name
	vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
	vim.cmd("syntax reset")
end

vim.g.colors_name = "necrophos"

-- Apply all highlight groups
for group, settings in pairs(theme.groups) do
	vim.api.nvim_set_hl(0, group, settings)
end

return theme
