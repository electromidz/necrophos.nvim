local theme = {}

theme.colors = {
	-- Base colors - Enhanced for Kunkka theme
	fg = "#c4c7ca",
	inverse_fg = "#13212d",
	bg = "#021727",
	accent_bg = "#13212d",
	link = "#3093A1",
	accent = "#54A0A7",
	border = "#2B7688",

	-- Syntax highlighting - Fixed for better contrast and theme
	red = "#d46c6c", -- Distinct red for errors (ship damage)
	orange = "#d49c6c", -- Distinct orange (aged rope/rust)
	yellow = "#e6d37a", -- Proper yellow (treasure gold)
	green = "#5dbe8c", -- Clear green (sea moss/success)
	cyan = "#54A0A7", -- Light teal as cyan
	blue = "#487A86", -- Steel blue as blue
	purple = "#7a86d4", -- Mystical purple (deep sea magic)
	grey = "#515A5A", -- Dark grey

	-- Kunkka-specific colors
	tide_blue = "#3093A1", -- Teal for tide effects
	ship_brown = "#a88c6c", -- Rich brown for ship wood
	ghost_green = "#6ab0a7", -- Ethereal green for ghost ship
	cannon_red = "#b85c5c", -- Rusty red for cannons
	admiral_gold = "#d4b45c", -- Gold accents on uniform
	storm_gray = "#4a5c6a", -- Stormy sea gray
	deep_navy = "#0a1a2a", -- Deep ocean color
	torrent_foam = "#8fa8b8", -- White foam/sea spray

	-- Existing UI colors (keeping your good work)
	folded_bg = "#092135",
	cursor_fg = "#805a3e",
	cursor_bg = "#80a4c2",
	line_number_fg = "#4b6479",
	line_number_active_fg = "#c5e4fc",
	sign_add = "#9ccc65",
	sign_change = "#e2b93d",
	sign_delete = "#ef5350",
	indent_guide = "#1f395d",
	indent_guide_active = "#7e97ac",
	visual = "#1d3b53",
	match_paren = "#1e364a",
	search_blue = "#063e5d",
	incremental_search_blue = "#2E485C",
	error_red = "#ef5350",
	word_highlight = "#33384d",
	word_highlight_write = "#2f3350",
	changed = "#a2bffc",
	quickfix_line = "#0e293f",
	ui_border = "#5f7e97",
	ui_border2 = "#20395d",
	nvim_tree_file = "#89a4bb",
	nvim_tree_indent_marker = "#585858",
	tab_active_bg = "#0b2942",
	tab_inactive_bg = "#01111d",
	title = "#82b1ff",
	parameter = "#d7dbe0",
	string_delimiter = "#d9f5dd",
	dark = "#010d18",
	dark2 = "#021320",
	dark3 = "#99b76d23",
	white = "#ffffff",
	white2 = "#eeefff",
	dark_white = "#cccccc",
	gray = "#262a39",
	gray2 = "#d2dee7",
	gray3 = "#36414a",
	gray4 = "#d6deeb80",
	gray5 = "#969696",
	gray6 = "#7e97ac",
	light_blue = "#78ccf0",
	blue = "#82aaff",
	blue2 = "#0b253a",
	blue3 = "#122d42",
	blue4 = "#1b90dd4d",
	blue5 = "#234d70",
	blue6 = "#234d708c",
	blue7 = "#395a75",
	blue8 = "#5ca7e4",
	blue9 = "#5f7e9779",
	blue10 = "#697098",
	blue11 = "#8eace3",
	blue12 = "#b2ccd6",
	blue13 = "#072232",
	blue14 = "#273845",
	blue15 = "#169fff",
	green = "#c5e478",
	green2 = "#6CC85E",
	light_cyan = "#caece6",
	cyan = "#6ae9f0",
	cyan2 = "#7fdbca",
	cyan3 = "#7fdbcaff",
	cyan4 = "#80cbc4",
	cyan5 = "#baebe2",
	dark_cyan = "#637777",
	light_red = "#ff869a",
	red = "#ff5874",
	red2 = "#ff6363",
	red3 = "#ef535090",
	dark_red = "#ab0300",
	light_orange = "#ecc48d",
	orange = "#f78c6c",
	orange2 = "#ffcb8b",
	light_yellow = "#faf39f",
	yellow = "#ffd602",
	yellow2 = "#b39554",
	yellow3 = "#fad430",
	yellow4 = "#ffeb95",
	yellow5 = "#ffeb95cc",
	light_purple = "#a599e9",
	purple = "#7e57c2",
	purple2 = "#5166F0",
	purple3 = "#da70d6",
	purple4 = "#7986e7",
	dark_purple = "#2E2D5E",
	magenta = "#c792ea",
	magenta2 = "#c789d6",
	magenta3 = "#d1aaff",
	magenta4 = "#ff2c83",
	magenta5 = "#e2a2f433",
	magenta6 = "#f6bbe533",

	-- New Kunkka-themed additions
	tide_pool = "#1a3b4d", -- Shallow water areas
	ship_wake = "#8fa8b840", -- Ghostly ship wake
	navy_blue = "#1e3a5c", -- Official navy color
	rope_tan = "#b8a47c", -- Rope and sail color
	brass_fitting = "#d4a85c", -- Ship fittings and hardware
	seaweed_green = "#4a8c7a", -- Underwater plant life
	storm_cloud = "#3a4a5a", -- Stormy weather
	cannon_smoke = "#7a8c9a", -- Battle effects
	treasure_chest = "#d4b45c", -- Gold and treasure
	ghly_cyan = "#6ab0a740", -- Ghost ship transparency
	deep_abyss = "#0a1420", -- Ocean depths
	coral_pink = "#d47a8c", -- Ocean life accents
	anchor_iron = "#5a6c7a", -- Metal and hardware
	sail_white = "#e8e6d4", -- Sail cloth color
	rum_amber = "#b85c2c", -- Admiral's drink

	-- Missing colors that were referenced but not defined
	black = "#000000",
	light_green = "#a8e6a8",
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
	DiffAdd = { fg = theme.colors.ghost_green, bg = theme.colors.ghost_green .. "20" },
	DiffChange = { fg = theme.colors.admiral_gold, bg = theme.colors.admiral_gold .. "20" },
	DiffDelete = { fg = theme.colors.cannon_red, bg = theme.colors.cannon_red .. "20" },
	DiffText = { fg = theme.colors.tide_blue, bg = theme.colors.tide_blue .. "20" },

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
	["@punctuation.delimiter"] = { fg = theme.colors.border },
	["@punctuation.bracket"] = { fg = theme.colors.fg },
	["@punctuation.special"] = { fg = theme.colors.tide_blue },

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

-- Helper function to setup the theme
function theme.setup()
	-- Set the global colors
	for group, settings in pairs(theme.groups) do
		vim.api.nvim_set_hl(0, group, settings)
	end
end

-- Optional: Add theme variants
theme.variants = {
	stormy = {
		bg = "#01111f",
		inverse_fg = "#0f1a25",
		tide_blue = "#2a7a8c",
		storm_gray = "#3a4655",
	},
	calm = {
		bg = "#031f2f",
		inverse_fg = "#1a2d3a",
		tide_blue = "#3ca8b8",
		ghost_green = "#7ac0b7",
	},
}

return theme
