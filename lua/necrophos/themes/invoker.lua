local theme = {}

theme.colors = {
	-- Base colors - Invoker arcane mage theme
	fg = "#E8E6E3", -- Ivory parchment
	inverse_fg = "#131B2E", -- Deep cosmic blue
	bg = "#0A0C1A", -- Cosmic night
	accent_bg = "#131B2E", -- Richer blue for surfaces
	link = "#48C4D4", -- Bright vibrant teal
	accent = "#54A0A7", -- Light teal accent
	border = "#2B7688", -- Medium blue border

	-- Syntax highlighting - Arcane-themed colors
	red = "#FF6B7A", -- Vibrant red (Exort's fire)
	orange = "#FF9D5C", -- Distinct orange (forge spirits)
	yellow = "#FFE073", -- Proper yellow (invoke energy)
	green = "#5AC18D", -- Fresh green (success/balance)
	cyan = "#54A0A7", -- Light teal as cyan
	blue = "#487A86", -- Steel blue as blue
	purple = "#A68EE3", -- Mystical purple (arcane magic)
	grey = "#626E78", -- Muted steel for comments

	-- Invoker-specific colors
	quas_blue = "#00E5FF", -- Icy blue for Quas
	wex_purple = "#B967FF", -- Electric purple for Wex
	exort_orange = "#FF6B35", -- Fiery orange for Exort
	invoke_gold = "#FFD700", -- Golden invoke glow
	forge_spirit = "#FFAA00", -- Spirit orange
	arcane_teal = "#48C4D4", -- Arcane energy teal
	cosmic_night = "#0A0C1A", -- Deep cosmic background
	mystic_blue = "#131B2E", -- Mystical blue surfaces
	spell_border = "#2B7688", -- Spell effect border
	parchment = "#E8E6E3", -- Ancient parchment text

	-- Existing UI colors
	folded_bg = "#0F1A2A",
	cursor_fg = "#806A4E",
	cursor_bg = "#80B4C2",
	line_number_fg = "#4B5E79",
	line_number_active_fg = "#C5E4FC",
	sign_add = "#65CC9C",
	sign_change = "#E2C93D",
	sign_delete = "#EF5350",
	indent_guide = "#1F2E4D",
	indent_guide_active = "#7E9CAC",
	visual = "#1D2E53",
	match_paren = "#1E2A4A",
	search_blue = "#063E5D",
	incremental_search_blue = "#2E455C",
	error_red = "#EF5350",
	word_highlight = "#33344D",
	word_highlight_write = "#2F3350",
	changed = "#A2CCFC",
	quickfix_line = "#0E1F3F",
	ui_border = "#5F7E97",
	ui_border2 = "#20355D",
	nvim_tree_file = "#89A4BB",
	nvim_tree_indent_marker = "#585858",
	tab_active_bg = "#0B1F42",
	tab_inactive_bg = "#050A1D",
	title = "#82B1FF",
	parameter = "#D7DBE0",
	string_delimiter = "#D9F5FD",
	dark = "#050810",
	dark2 = "#070C18",
	dark3 = "#1A1F29",
	white = "#FFFFFF",
	white2 = "#EEEFFF",
	dark_white = "#CCCCCC",
	gray = "#262639",
	gray2 = "#D2DEE7",
	gray3 = "#36414A",
	gray4 = "#5A6777",
	gray5 = "#969696",
	gray6 = "#7E97AC",
	light_blue = "#78CCF0",
	blue2 = "#0B1F3A",
	blue3 = "#122542",
	blue4 = "#1A2F5A",
	blue5 = "#234570",
	blue6 = "#2A4570",
	blue7 = "#395575",
	blue8 = "#5CA7E4",
	blue9 = "#3A557A",
	blue10 = "#697098",
	blue11 = "#8EACE3",
	blue12 = "#B2CCD6",
	blue13 = "#071A32",
	blue14 = "#273845",
	blue15 = "#169FFF",
	green2 = "#6CC85E",
	light_cyan = "#CAECE6",
	cyan2 = "#7FDBCA",
	cyan3 = "#5AB0A7",
	cyan4 = "#80CBC4",
	cyan5 = "#BAEBE2",
	dark_cyan = "#637777",
	light_red = "#FF869A",
	red2 = "#FF6363",
	red3 = "#C53550",
	dark_red = "#AB0300",
	light_orange = "#ECC48D",
	orange2 = "#FFCB8B",
	light_yellow = "#FAF39F",
	yellow2 = "#B39554",
	yellow3 = "#FAD430",
	yellow4 = "#FFEB95",
	yellow5 = "#D4B45C",
	light_purple = "#A599E9",
	purple2 = "#5166F0",
	purple3 = "#DA70D6",
	purple4 = "#7986E7",
	dark_purple = "#2E2D5E",
	magenta = "#C792EA",
	magenta2 = "#C789D6",
	magenta3 = "#D1AAFF",
	magenta4 = "#FF2C83",
	magenta5 = "#4A2A5A",
	magenta6 = "#5A3A6A",

	-- New Invoker-themed additions
	spell_effect = "#1A2B4D", -- Spell casting areas
	arcane_wisp = "#5A6C7A", -- Arcane energy wisps
	cosmic_void = "#1E1F3C", -- Void and cosmic energy
	robe_fabric = "#B8A47C", -- Mage robe cloth
	staff_trim = "#D4A85C", -- Staff and orb metal trim
	crystal_blue = "#4A7C8C", -- Magical crystals
	storm_energy = "#3A4A6A", -- Electrical storm energy
	spell_smoke = "#7A8CAA", -- Spell casting effects
	orb_gold = "#D4B45C", -- Orb and magical artifacts
	ethereal_blue = "#3A5C6A", -- Ethereal/ghostly transparency
	abyssal_void = "#0A1020", -- Deep void depths
	rune_pink = "#D47A8C", -- Magical rune accents
	iron_gray = "#5A6C7A", -- Metal and ancient artifacts
	scroll_white = "#E8E6D4", -- Ancient scroll parchment
	potion_blue = "#5C8CB8", -- Magical potions

	-- Missing colors that were referenced but not defined
	black = "#000000",
	light_green = "#A8E6A8",
}

theme.groups = {
	-- Base groups
	Normal = { fg = theme.colors.fg, bg = theme.colors.bg },
	NormalFloat = { fg = theme.colors.fg, bg = theme.colors.inverse_fg },
	FloatBorder = { fg = theme.colors.border, bg = theme.colors.inverse_fg },
	FloatTitle = { fg = theme.colors.quas_blue, bg = theme.colors.inverse_fg, bold = true },

	-- Syntax groups
	Comment = { fg = theme.colors.grey, italic = true },
	Constant = { fg = theme.colors.orange },
	String = { fg = theme.colors.yellow },
	Character = { fg = theme.colors.yellow },
	Number = { fg = theme.colors.orange },
	Boolean = { fg = theme.colors.orange },
	Float = { fg = theme.colors.orange },

	Identifier = { fg = theme.colors.cyan },
	Function = { fg = theme.colors.quas_blue, bold = true },

	Statement = { fg = theme.colors.wex_purple },
	Conditional = { fg = theme.colors.wex_purple },
	Repeat = { fg = theme.colors.wex_purple },
	Label = { fg = theme.colors.wex_purple },
	Operator = { fg = theme.colors.blue },
	Keyword = { fg = theme.colors.wex_purple, italic = true },
	Exception = { fg = theme.colors.exort_orange },

	PreProc = { fg = theme.colors.robe_fabric },
	Include = { fg = theme.colors.wex_purple },
	Define = { fg = theme.colors.robe_fabric },
	Macro = { fg = theme.colors.robe_fabric },
	PreCondit = { fg = theme.colors.robe_fabric },

	Type = { fg = theme.colors.cyan },
	StorageClass = { fg = theme.colors.wex_purple },
	Structure = { fg = theme.colors.robe_fabric },
	Typedef = { fg = theme.colors.cyan },

	Special = { fg = theme.colors.quas_blue },
	SpecialChar = { fg = theme.colors.exort_orange },
	Tag = { fg = theme.colors.blue },
	Delimiter = { fg = theme.colors.fg },
	SpecialComment = { fg = theme.colors.grey, bold = true },
	Debug = { fg = theme.colors.exort_orange },

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
	PmenuSel = { fg = theme.colors.inverse_fg, bg = theme.colors.quas_blue, bold = true },
	PmenuSbar = { bg = theme.colors.storm_energy },
	PmenuThumb = { bg = theme.colors.border },

	StatusLine = { fg = theme.colors.fg, bg = theme.colors.inverse_fg },
	StatusLineNC = { fg = theme.colors.grey, bg = theme.colors.inverse_fg },
	WinSeparator = { fg = theme.colors.border },
	VertSplit = { fg = theme.colors.border },

	TabLine = { fg = theme.colors.grey, bg = theme.colors.inverse_fg },
	TabLineSel = { fg = theme.colors.quas_blue, bg = theme.colors.bg, bold = true },
	TabLineFill = { bg = theme.colors.inverse_fg },

	Title = { fg = theme.colors.title, bold = true },
	Question = { fg = theme.colors.arcane_teal },
	ModeMsg = { fg = theme.colors.quas_blue },
	MoreMsg = { fg = theme.colors.quas_blue },

	-- Diagnostic groups
	DiagnosticError = { fg = theme.colors.exort_orange },
	DiagnosticWarn = { fg = theme.colors.invoke_gold },
	DiagnosticInfo = { fg = theme.colors.quas_blue },
	DiagnosticHint = { fg = theme.colors.arcane_teal },
	DiagnosticUnderlineError = { sp = theme.colors.exort_orange, undercurl = true },
	DiagnosticUnderlineWarn = { sp = theme.colors.invoke_gold, undercurl = true },
	DiagnosticUnderlineInfo = { sp = theme.colors.quas_blue, undercurl = true },
	DiagnosticUnderlineHint = { sp = theme.colors.arcane_teal, undercurl = true },

	-- Git groups
	DiffAdd = { fg = theme.colors.arcane_teal, bg = theme.colors.arcane_teal },
	DiffChange = { fg = theme.colors.invoke_gold, bg = theme.colors.invoke_gold },
	DiffDelete = { fg = theme.colors.exort_orange, bg = theme.colors.exort_orange },
	DiffText = { fg = theme.colors.quas_blue, bg = theme.colors.quas_blue },

	gitcommitSummary = { fg = theme.colors.green, bold = true },
	gitcommitBranch = { fg = theme.colors.quas_blue },

	-- LSP groups
	LspReferenceText = { bg = theme.colors.spell_effect },
	LspReferenceRead = { bg = theme.colors.spell_effect },
	LspReferenceWrite = { bg = theme.colors.cosmic_void },
	LspSignatureActiveParameter = { fg = theme.colors.invoke_gold, bold = true },

	-- Tree-sitter groups
	["@comment"] = { link = "Comment" },
	["@string"] = { link = "String" },
	["@string.special"] = { fg = theme.colors.robe_fabric },
	["@character"] = { link = "Character" },
	["@number"] = { link = "Number" },
	["@boolean"] = { link = "Boolean" },
	["@float"] = { link = "Float" },

	["@function"] = { fg = theme.colors.quas_blue, bold = true },
	["@function.call"] = { fg = theme.colors.quas_blue },
	["@method"] = { fg = theme.colors.quas_blue },
	["@method.call"] = { fg = theme.colors.quas_blue },
	["@constructor"] = { fg = theme.colors.cyan },
	["@parameter"] = { fg = theme.colors.parameter },

	["@keyword"] = { fg = theme.colors.wex_purple, italic = true },
	["@keyword.function"] = { fg = theme.colors.wex_purple, italic = true },
	["@keyword.return"] = { fg = theme.colors.wex_purple, italic = true },
	["@conditional"] = { link = "Conditional" },
	["@repeat"] = { link = "Repeat" },
	["@debug"] = { link = "Debug" },
	["@label"] = { link = "Label" },
	["@include"] = { link = "Include" },
	["@exception"] = { fg = theme.colors.exort_orange },

	["@type"] = { fg = theme.colors.cyan },
	["@type.builtin"] = { fg = theme.colors.cyan, italic = true },
	["@structure"] = { fg = theme.colors.robe_fabric },
	["@namespace"] = { fg = theme.colors.robe_fabric },

	["@variable"] = { fg = theme.colors.fg },
	["@variable.builtin"] = { fg = theme.colors.orange, italic = true },
	["@constant"] = { fg = theme.colors.orange },
	["@constant.builtin"] = { fg = theme.colors.orange, bold = true },
	["@property"] = { fg = theme.colors.cyan2 },

	["@operator"] = { fg = theme.colors.blue },
	["@punctuation.delimiter"] = { fg = theme.colors.border },
	["@punctuation.bracket"] = { fg = theme.colors.fg },
	["@punctuation.special"] = { fg = theme.colors.quas_blue },

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
	["@text.note"] = { fg = theme.colors.arcane_teal },
	["@text.warning"] = { fg = theme.colors.invoke_gold },
	["@text.danger"] = { fg = theme.colors.exort_orange },

	-- Search and visual
	Search = { fg = theme.colors.bg, bg = theme.colors.invoke_gold },
	IncSearch = { fg = theme.colors.bg, bg = theme.colors.quas_blue },
	CurSearch = { link = "IncSearch" },
	Substitute = { fg = theme.colors.bg, bg = theme.colors.arcane_teal },

	Visual = { bg = theme.colors.visual },
	VisualNOS = { bg = theme.colors.visual, italic = true },
	MatchParen = { fg = theme.colors.invoke_gold, bg = theme.colors.match_paren, bold = true },

	-- Cursor
	Cursor = { fg = theme.colors.cursor_fg, bg = theme.colors.cursor_bg },
	lCursor = { link = "Cursor" },
	CursorIM = { link = "Cursor" },

	-- Spell
	SpellBad = { sp = theme.colors.exort_orange, undercurl = true },
	SpellCap = { sp = theme.colors.invoke_gold, undercurl = true },
	SpellLocal = { sp = theme.colors.quas_blue, undercurl = true },
	SpellRare = { sp = theme.colors.arcane_teal, undercurl = true },

	-- Special syntax
	Whitespace = { fg = theme.colors.gray4 },
	NonText = { fg = theme.colors.gray4 },
	Conceal = { fg = theme.colors.grey },
	SpecialKey = { fg = theme.colors.grey },

	-- Quickfix
	QuickFixLine = { bg = theme.colors.quickfix_line },
	qfLineNr = { fg = theme.colors.quas_blue },

	-- Wild menu
	WildMenu = { fg = theme.colors.inverse_fg, bg = theme.colors.quas_blue },

	-- Directory
	Directory = { fg = theme.colors.quas_blue },

	-- Msg area
	ErrorMsg = { fg = theme.colors.exort_orange, bold = true },
	WarningMsg = { fg = theme.colors.invoke_gold },
	InfoMsg = { fg = theme.colors.quas_blue },
	HintMsg = { fg = theme.colors.arcane_teal },

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
	diffFile = { fg = theme.colors.quas_blue },
	diffNewFile = { fg = theme.colors.arcane_teal },
	diffOldFile = { fg = theme.colors.exort_orange },
	diffLine = { fg = theme.colors.wex_purple },

	-- Neovim specific
	NvimInternalError = { fg = theme.colors.white, bg = theme.colors.dark_red },
	WinBar = { fg = theme.colors.quas_blue, bold = true },
	WinBarNC = { fg = theme.colors.grey },

	-- Indent guides
	IndentBlanklineChar = { fg = theme.colors.indent_guide },
	IndentBlanklineContextChar = { fg = theme.colors.indent_guide_active },

	-- Notify highlights
	NotifyERRORBorder = { fg = theme.colors.exort_orange },
	NotifyWARNBorder = { fg = theme.colors.invoke_gold },
	NotifyINFOBorder = { fg = theme.colors.quas_blue },
	NotifyDEBUGBorder = { fg = theme.colors.grey },
	NotifyTRACEBorder = { fg = theme.colors.wex_purple },
	NotifyERRORIcon = { fg = theme.colors.exort_orange },
	NotifyWARNIcon = { fg = theme.colors.invoke_gold },
	NotifyINFOIcon = { fg = theme.colors.quas_blue },
	NotifyDEBUGIcon = { fg = theme.colors.grey },
	NotifyTRACEIcon = { fg = theme.colors.wex_purple },
	NotifyERRORTitle = { fg = theme.colors.exort_orange },
	NotifyWARNTitle = { fg = theme.colors.invoke_gold },
	NotifyINFOTitle = { fg = theme.colors.quas_blue },
	NotifyDEBUGTitle = { fg = theme.colors.grey },
	NotifyTRACETitle = { fg = theme.colors.wex_purple },

	-- Navic (LSP breadcrumbs)
	NavicIconsFile = { fg = theme.colors.quas_blue },
	NavicIconsModule = { fg = theme.colors.wex_purple },
	NavicIconsNamespace = { fg = theme.colors.robe_fabric },
	NavicIconsPackage = { fg = theme.colors.orange },
	NavicIconsClass = { fg = theme.colors.cyan },
	NavicIconsMethod = { fg = theme.colors.quas_blue },
	NavicIconsProperty = { fg = theme.colors.cyan2 },
	NavicIconsField = { fg = theme.colors.cyan2 },
	NavicIconsConstructor = { fg = theme.colors.cyan },
	NavicIconsEnum = { fg = theme.colors.cyan },
	NavicIconsInterface = { fg = theme.colors.cyan },
	NavicIconsFunction = { fg = theme.colors.quas_blue },
	NavicIconsVariable = { fg = theme.colors.fg },
	NavicIconsConstant = { fg = theme.colors.orange },
	NavicIconsString = { fg = theme.colors.yellow },
	NavicIconsNumber = { fg = theme.colors.orange },
	NavicIconsBoolean = { fg = theme.colors.orange },
	NavicIconsArray = { fg = theme.colors.robe_fabric },
	NavicIconsObject = { fg = theme.colors.robe_fabric },
	NavicIconsKey = { fg = theme.colors.wex_purple },
	NavicIconsNull = { fg = theme.colors.grey },
	NavicIconsEnumMember = { fg = theme.colors.cyan2 },
	NavicIconsStruct = { fg = theme.colors.robe_fabric },
	NavicIconsEvent = { fg = theme.colors.purple3 },
	NavicIconsOperator = { fg = theme.colors.blue },
	NavicIconsTypeParameter = { fg = theme.colors.cyan },
	NavicText = { fg = theme.colors.fg },
	NavicSeparator = { fg = theme.colors.border },

	-- Additional plugin support
	WhichKey = { fg = theme.colors.quas_blue },
	WhichKeyGroup = { fg = theme.colors.wex_purple },
	WhichKeyDesc = { fg = theme.colors.fg },
	WhichKeySeperator = { fg = theme.colors.grey },
	WhichKeyFloat = { bg = theme.colors.inverse_fg },

	TelescopePromptBorder = { fg = theme.colors.border },
	TelescopeResultsBorder = { fg = theme.colors.border },
	TelescopePreviewBorder = { fg = theme.colors.border },
	TelescopeSelection = { bg = theme.colors.spell_effect },
	TelescopeMatching = { fg = theme.colors.invoke_gold, bold = true },

	NoiceCursor = { link = "Cursor" },
	NoiceFormatProgressDone = { bg = theme.colors.quas_blue },
	NoiceFormatProgressTodo = { bg = theme.colors.storm_energy },

	-- DAP UI
	DapUIScope = { fg = theme.colors.quas_blue },
	DapUIType = { fg = theme.colors.cyan },
	DapUIValue = { fg = theme.colors.orange },
	DapUIVariable = { fg = theme.colors.fg },
	DapUIBreakpointsPath = { fg = theme.colors.quas_blue },
	DapUIBreakpointsInfo = { fg = theme.colors.arcane_teal },
	DapUIBreakpointsCurrentLine = { fg = theme.colors.invoke_gold, bold = true },
}

theme.terminal_colors = {
	[0] = theme.colors.cosmic_night, -- black (cosmic void)
	[1] = theme.colors.exort_orange, -- red (exort fire)
	[2] = theme.colors.green, -- green (balance/magic)
	[3] = theme.colors.invoke_gold, -- yellow (invoke energy)
	[4] = theme.colors.quas_blue, -- blue (quas ice)
	[5] = theme.colors.wex_purple, -- magenta (wex lightning)
	[6] = theme.colors.arcane_teal, -- cyan (arcane energy)
	[7] = theme.colors.parchment, -- white (ancient parchment)
	[8] = theme.colors.storm_energy, -- bright black (storm clouds)
	[9] = theme.colors.exort_orange, -- bright red (intense fire)
	[10] = theme.colors.green, -- bright green (vibrant magic)
	[11] = theme.colors.invoke_gold, -- bright yellow (golden glow)
	[12] = theme.colors.quas_blue, -- bright blue (bright ice)
	[13] = theme.colors.wex_purple, -- bright magenta (electric purple)
	[14] = theme.colors.arcane_teal, -- bright cyan (brilliant arcane)
	[15] = theme.colors.scroll_white, -- bright white (pure scrolls)
}

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

-- Apply the colorscheme
local function apply()
	for group, settings in pairs(theme.groups) do
		vim.api.nvim_set_hl(0, group, settings)
	end

	-- Set terminal colors
	for name, color in pairs(theme.terminal_colors) do
		vim.g["terminal_color_" .. name] = color
	end
end

-- Apply based on variant
if vim.g.necrophos_theme == "necrophos" then
	apply()
end

return theme
