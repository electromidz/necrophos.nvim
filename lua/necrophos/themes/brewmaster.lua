local theme = {}

-- ============================================================
-- Brewmaster Theme - "The Pandaren Brew"
-- ============================================================
-- Philosophy: The warmth of a candlelit tavern, the calm mastery
-- of a monk who has found balance between fire, earth, and storm.
-- Every color evokes aged wood, amber brew, bamboo groves,
-- and the soft glow of a lantern on a quiet evening.
-- ============================================================

theme.colors = {
	-- Base colors - Warm tavern aesthetic
	fg = "#e8ddd0", -- Warm parchment (main text)
	inverse_fg = "#1c1714", -- Dark aged wood (float bg)
	bg = "#14100d", -- Deep mahogany (main background)
	accent_bg = "#1c1714", -- Surface color (panels)
	link = "#c49a5c", -- Amber brew (links/URLs)
	accent = "#b8874c", -- Polished copper (accent)
	border = "#3d3228", -- Worn barrel wood (borders)

	-- Syntax highlighting - Warm elemental palette
	red = "#c47060", -- Primal Fire (errors, deleted)
	orange = "#c89060", -- Ember glow (constants, numbers)
	yellow = "#c4a860", -- Golden brew (strings, warnings)
	green = "#7aa870", -- Bamboo grove (strings, additions)
	cyan = "#6a9a88", -- Cool spring water (types, teal)
	blue = "#7a90a0", -- Storm spirit mist (functions)
	purple = "#a088b0", -- Monk's robe (keywords, statements)
	grey = "#6a6058", -- Aged stone (comments)

	-- Brewmaster-specific colors
	brew_amber = "#c49a5c", -- Freshly poured ale
	fire_spirit = "#c47060", -- Primal Fire element
	earth_spirit = "#a08060", -- Primal Earth element
	storm_spirit = "#6a9a88", -- Primal Storm element
	bamboo_green = "#7aa870", -- Pandaren bamboo groves
	panda_fur = "#c8b8a0", -- Panda's warm fur
	monk_robe = "#a088b0", -- Meditative purple
	tavern_wood = "#5a4a3c", -- Polished tavern wood
	aged_leather = "#8a7060", -- Weathered leather wraps
	stone_floor = "#3d3228", -- Temple stone
	lantern_gold = "#d4b070", -- Warm lantern light
	jade_accent = "#6a9a70", -- Pandaren jade
	ferment_glow = "#b89850", -- Fermenting brew
	parchment = "#e8ddd0", -- Ancient scroll text
	deep_cask = "#0e0b09", -- Bottom of the barrel
	hot_iron = "#b86848", -- Blacksmith's forge

	-- UI colors - Warm and readable
	folded_bg = "#1a150f",
	cursor_fg = "#14100d",
	cursor_bg = "#c49a5c",
	line_number_fg = "#4a4038",
	line_number_active_fg = "#c8b8a0",
	sign_add = "#7aa870",
	sign_change = "#c4a860",
	sign_delete = "#c47060",
	indent_guide = "#2a221a",
	indent_guide_active = "#4a4038",
	visual = "#2a2018",
	match_paren = "#3a3020",
	search_blue = "#2a2018",
	incremental_search_blue = "#3a3020",
	error_red = "#c47060",
	word_highlight = "#2a2018",
	word_highlight_write = "#2a2518",
	changed = "#c4a860",
	quickfix_line = "#1e1a14",
	ui_border = "#4a4038",
	ui_border2 = "#2a221a",
	nvim_tree_file = "#c8b8a0",
	nvim_tree_indent_marker = "#4a4038",
	tab_active_bg = "#1e1a14",
	tab_inactive_bg = "#0e0b09",
	title = "#d4b070",
	parameter = "#d0c8b8",
	string_delimiter = "#b8a880",
	dark = "#0a0806",
	dark2 = "#0e0b09",
	dark3 = "#1a150f",
	white = "#e8ddd0",
	white2 = "#f0e8dc",
	dark_white = "#b8a890",
	gray = "#2a221a",
	gray2 = "#c8b8a0",
	gray3 = "#3a3228",
	gray4 = "#5a5048",
	gray5 = "#8a8078",
	gray6 = "#6a6058",
	light_blue = "#8ab0c0",
	blue2 = "#141518",
	blue3 = "#181a1c",
	blue4 = "#1c2224",
	blue5 = "#20282a",
	blue6 = "#242c2e",
	blue7 = "#2a3234",
	blue8 = "#4a8090",
	blue9 = "#3a4848",
	blue10 = "#5a7070",
	blue11 = "#7aa0a8",
	blue12 = "#a0c0c0",
	blue13 = "#0c1010",
	blue14 = "#1a2020",
	blue15 = "#60c0a0",
	green2 = "#7aa870",
	light_cyan = "#b0d8c8",
	cyan2 = "#80b8a0",
	cyan3 = "#6a9a88",
	cyan4 = "#80b0a0",
	cyan5 = "#b0d0c0",
	dark_cyan = "#4a6860",
	light_red = "#d89080",
	red2 = "#d87060",
	red3 = "#b05040",
	dark_red = "#803020",
	light_orange = "#d8b080",
	orange2 = "#d8a870",
	light_yellow = "#e0d0a0",
	yellow2 = "#b8a060",
	yellow3 = "#d4c070",
	yellow4 = "#e0d090",
	yellow5 = "#c4a860",
	light_purple = "#b8a0c0",
	purple2 = "#8070a0",
	purple3 = "#a890c0",
	purple4 = "#9080b0",
	dark_purple = "#2a2030",
	magenta = "#a088b0",
	magenta2 = "#9878a8",
	magenta3 = "#b8a0c8",
	magenta4 = "#c070a0",
	magenta5 = "#2a1828",
	magenta6 = "#3a2838",

	-- Brewmaster-themed additions
	brewing_vat = "#2a2018", -- Fermentation barrel interior
	barrel_stave = "#5a4a3c", -- Wooden barrel planks
	panda_belly = "#d8c8a8", -- Warm panda underbelly
	temple_bell = "#c8a860", -- Bronze temple bell
	earthquake_brown = "#705848", -- Shattered earth
	flame_dance = "#d08060", -- Dancing fire spirits
	rain_drops = "#6898a8", -- Storm rain
	bamboo_forest = "#587850", -- Deep bamboo thicket
	parchment_old = "#c8b898", -- Aged scroll
	monk_beads = "#8a7058", -- Meditation beads
	sake_cup = "#b89060", -- Ceramic sake vessel
	wind_gust = "#7a8898", -- Storm wind effect
	hot_spring = "#589888", -- Mountain hot spring
	frost_mug = "#88b0a8", -- Frosted ale mug
	mushroom_cap = "#a08868", -- Forest mushroom
	tea_leaf = "#688860", -- Pandaren tea leaves
	wok_flame = "#c87858", -- Wok cooking fire
	silk_thread = "#c0a888", -- Robe silk thread
	iron_cask = "#5a5048", -- Iron-bound cask
	mountain_stone = "#484038", -- Mountain temple stone
	drum_skin = "#b8a078", -- War drum surface
	water_bucket = "#588890", -- Cold well water

	-- Missing colors
	black = "#000000",
	light_green = "#a0c898",
}

theme.groups = {
	-- Base groups
	Normal = { fg = theme.colors.fg, bg = theme.colors.bg },
	NormalFloat = { fg = theme.colors.fg, bg = theme.colors.inverse_fg },
	FloatBorder = { fg = theme.colors.border, bg = theme.colors.inverse_fg },
	FloatTitle = { fg = theme.colors.brew_amber, bg = theme.colors.inverse_fg, bold = true },

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

	PreProc = { fg = theme.colors.aged_leather },
	Include = { fg = theme.colors.purple },
	Define = { fg = theme.colors.aged_leather },
	Macro = { fg = theme.colors.aged_leather },
	PreCondit = { fg = theme.colors.aged_leather },

	Type = { fg = theme.colors.cyan },
	StorageClass = { fg = theme.colors.purple },
	Structure = { fg = theme.colors.aged_leather },
	Typedef = { fg = theme.colors.cyan },

	Special = { fg = theme.colors.brew_amber },
	SpecialChar = { fg = theme.colors.fire_spirit },
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
	PmenuSel = { fg = theme.colors.inverse_fg, bg = theme.colors.brew_amber, bold = true },
	PmenuSbar = { bg = theme.colors.gray3 },
	PmenuThumb = { bg = theme.colors.border },

	StatusLine = { fg = theme.colors.fg, bg = theme.colors.accent_bg },
	StatusLineNC = { fg = theme.colors.grey, bg = theme.colors.accent_bg },
	WinSeparator = { fg = theme.colors.border },
	VertSplit = { fg = theme.colors.border },

	TabLine = { fg = theme.colors.grey, bg = theme.colors.accent_bg },
	TabLineSel = { fg = theme.colors.brew_amber, bg = theme.colors.bg, bold = true },
	TabLineFill = { bg = theme.colors.accent_bg },

	Title = { fg = theme.colors.title, bold = true },
	Question = { fg = theme.colors.storm_spirit },
	ModeMsg = { fg = theme.colors.brew_amber },
	MoreMsg = { fg = theme.colors.brew_amber },

	-- Diagnostic groups
	DiagnosticError = { fg = theme.colors.fire_spirit },
	DiagnosticWarn = { fg = theme.colors.yellow },
	DiagnosticInfo = { fg = theme.colors.brew_amber },
	DiagnosticHint = { fg = theme.colors.storm_spirit },
	DiagnosticUnderlineError = { sp = theme.colors.fire_spirit, undercurl = true },
	DiagnosticUnderlineWarn = { sp = theme.colors.yellow, undercurl = true },
	DiagnosticUnderlineInfo = { sp = theme.colors.brew_amber, undercurl = true },
	DiagnosticUnderlineHint = { sp = theme.colors.storm_spirit, undercurl = true },

	-- Git groups
	DiffAdd = { fg = theme.colors.green, bg = "#1a2818" },
	DiffChange = { fg = theme.colors.yellow, bg = "#282218" },
	DiffDelete = { fg = theme.colors.red, bg = "#281818" },
	DiffText = { fg = theme.colors.fg, bg = "#282218" },

	gitcommitSummary = { fg = theme.colors.green, bold = true },
	gitcommitBranch = { fg = theme.colors.brew_amber },

	-- LSP groups
	LspReferenceText = { bg = theme.colors.visual },
	LspReferenceRead = { bg = theme.colors.visual },
	LspReferenceWrite = { bg = theme.colors.match_paren, bold = true },
	LspSignatureActiveParameter = { fg = theme.colors.brew_amber, bold = true },

	-- Tree-sitter groups
	["@comment"] = { link = "Comment" },
	["@string"] = { link = "String" },
	["@string.special"] = { fg = theme.colors.sake_cup },
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
	["@structure"] = { fg = theme.colors.aged_leather },
	["@namespace"] = { fg = theme.colors.aged_leather },

	["@variable"] = { fg = theme.colors.fg },
	["@variable.builtin"] = { fg = theme.colors.orange, italic = true },
	["@constant"] = { fg = theme.colors.orange },
	["@constant.builtin"] = { fg = theme.colors.orange, bold = true },
	["@property"] = { fg = theme.colors.cyan2 },

	["@operator"] = { fg = theme.colors.fg },
	["@punctuation.delimiter"] = { fg = theme.colors.grey },
	["@punctuation.bracket"] = { fg = theme.colors.fg },
	["@punctuation.special"] = { fg = theme.colors.brew_amber },

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
	["@text.note"] = { fg = theme.colors.storm_spirit },
	["@text.warning"] = { fg = theme.colors.yellow },
	["@text.danger"] = { fg = theme.colors.fire_spirit },

	-- Markdown / markup groups
	["@markup.heading"] = { fg = theme.colors.title, bold = true },
	["@markup.heading.1"] = { fg = theme.colors.brew_amber, bold = true },
	["@markup.heading.2"] = { fg = theme.colors.lantern_gold, bold = true },
	["@markup.heading.3"] = { fg = theme.colors.storm_spirit, bold = true },
	["@markup.heading.4"] = { fg = theme.colors.blue, bold = true },
	["@markup.heading.5"] = { fg = theme.colors.monk_robe, bold = true },
	["@markup.heading.6"] = { fg = theme.colors.grey, bold = true },
	["@markup.link"] = { fg = theme.colors.link, underline = true },
	["@markup.link.label"] = { fg = theme.colors.cyan },
	["@markup.link.url"] = { fg = theme.colors.blue, underline = true },
	["@markup.list"] = { fg = theme.colors.brew_amber },
	["@markup.list.checked"] = { fg = theme.colors.green },
	["@markup.list.unchecked"] = { fg = theme.colors.grey },
	["@markup.raw"] = { fg = theme.colors.yellow },
	["@markup.raw.block"] = { fg = theme.colors.yellow },
	["@markup.quote"] = { fg = theme.colors.grey, italic = true },
	["@markup.math"] = { fg = theme.colors.lantern_gold },
	["@markup.environment"] = { fg = theme.colors.aged_leather },
	["@markup.environment.name"] = { fg = theme.colors.brew_amber },

	-- Search and visual
	Search = { fg = theme.colors.bg, bg = theme.colors.lantern_gold },
	IncSearch = { fg = theme.colors.bg, bg = theme.colors.brew_amber },
	CurSearch = { link = "IncSearch" },
	Substitute = { fg = theme.colors.bg, bg = theme.colors.storm_spirit },

	Visual = { bg = theme.colors.visual },
	VisualNOS = { bg = theme.colors.visual, italic = true },
	MatchParen = { fg = theme.colors.lantern_gold, bg = theme.colors.match_paren, bold = true },

	-- Cursor
	Cursor = { fg = theme.colors.cursor_fg, bg = theme.colors.cursor_bg },
	lCursor = { link = "Cursor" },
	CursorIM = { link = "Cursor" },

	-- Spell
	SpellBad = { sp = theme.colors.fire_spirit, undercurl = true },
	SpellCap = { sp = theme.colors.lantern_gold, undercurl = true },
	SpellLocal = { sp = theme.colors.brew_amber, undercurl = true },
	SpellRare = { sp = theme.colors.storm_spirit, undercurl = true },

	-- Special syntax
	Whitespace = { fg = theme.colors.gray4 },
	NonText = { fg = theme.colors.gray4 },
	Conceal = { fg = theme.colors.grey },
	SpecialKey = { fg = theme.colors.grey },

	-- Quickfix
	QuickFixLine = { bg = theme.colors.quickfix_line },
	qfLineNr = { fg = theme.colors.brew_amber },

	-- Wild menu
	WildMenu = { fg = theme.colors.inverse_fg, bg = theme.colors.brew_amber },

	-- Directory
	Directory = { fg = theme.colors.brew_amber },

	-- Msg area
	ErrorMsg = { fg = theme.colors.fire_spirit, bold = true },
	WarningMsg = { fg = theme.colors.yellow },
	InfoMsg = { fg = theme.colors.brew_amber },
	HintMsg = { fg = theme.colors.storm_spirit },

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
	diffFile = { fg = theme.colors.brew_amber },
	diffNewFile = { fg = theme.colors.green },
	diffOldFile = { fg = theme.colors.red },
	diffLine = { fg = theme.colors.purple },

	-- Neovim specific
	NvimInternalError = { fg = theme.colors.white, bg = theme.colors.dark_red },
	WinBar = { fg = theme.colors.brew_amber, bold = true },
	WinBarNC = { fg = theme.colors.grey },

	-- Indent guides
	IndentBlanklineChar = { fg = theme.colors.indent_guide },
	IndentBlanklineContextChar = { fg = theme.colors.indent_guide_active },

	-- Notify highlights
	NotifyERRORBorder = { fg = theme.colors.fire_spirit },
	NotifyWARNBorder = { fg = theme.colors.yellow },
	NotifyINFOBorder = { fg = theme.colors.brew_amber },
	NotifyDEBUGBorder = { fg = theme.colors.grey },
	NotifyTRACEBorder = { fg = theme.colors.monk_robe },
	NotifyERRORIcon = { fg = theme.colors.fire_spirit },
	NotifyWARNIcon = { fg = theme.colors.yellow },
	NotifyINFOIcon = { fg = theme.colors.brew_amber },
	NotifyDEBUGIcon = { fg = theme.colors.grey },
	NotifyTRACEIcon = { fg = theme.colors.monk_robe },
	NotifyERRORTitle = { fg = theme.colors.fire_spirit },
	NotifyWARNTitle = { fg = theme.colors.yellow },
	NotifyINFOTitle = { fg = theme.colors.brew_amber },
	NotifyDEBUGTitle = { fg = theme.colors.grey },
	NotifyTRACETitle = { fg = theme.colors.monk_robe },

	-- Navic (LSP breadcrumbs)
	NavicIconsFile = { fg = theme.colors.brew_amber },
	NavicIconsModule = { fg = theme.colors.purple },
	NavicIconsNamespace = { fg = theme.colors.aged_leather },
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
	NavicIconsArray = { fg = theme.colors.aged_leather },
	NavicIconsObject = { fg = theme.colors.aged_leather },
	NavicIconsKey = { fg = theme.colors.purple },
	NavicIconsNull = { fg = theme.colors.grey },
	NavicIconsEnumMember = { fg = theme.colors.cyan2 },
	NavicIconsStruct = { fg = theme.colors.aged_leather },
	NavicIconsEvent = { fg = theme.colors.purple3 },
	NavicIconsOperator = { fg = theme.colors.fg },
	NavicIconsTypeParameter = { fg = theme.colors.cyan },
	NavicText = { fg = theme.colors.fg },
	NavicSeparator = { fg = theme.colors.border },

	-- Additional plugin support
	WhichKey = { fg = theme.colors.brew_amber },
	WhichKeyGroup = { fg = theme.colors.purple },
	WhichKeyDesc = { fg = theme.colors.fg },
	WhichKeySeperator = { fg = theme.colors.grey },
	WhichKeyFloat = { bg = theme.colors.inverse_fg },

	TelescopePromptBorder = { fg = theme.colors.border },
	TelescopeResultsBorder = { fg = theme.colors.border },
	TelescopePreviewBorder = { fg = theme.colors.border },
	TelescopeSelection = { bg = theme.colors.brewing_vat },
	TelescopeMatching = { fg = theme.colors.lantern_gold, bold = true },

	NoiceCursor = { link = "Cursor" },
	NoiceFormatProgressDone = { bg = theme.colors.brew_amber },
	NoiceFormatProgressTodo = { bg = theme.colors.gray3 },

	-- DAP UI
	DapUIScope = { fg = theme.colors.brew_amber },
	DapUIType = { fg = theme.colors.cyan },
	DapUIValue = { fg = theme.colors.orange },
	DapUIVariable = { fg = theme.colors.fg },
	DapUIBreakpointsPath = { fg = theme.colors.brew_amber },
	DapUIBreakpointsInfo = { fg = theme.colors.storm_spirit },
	DapUIBreakpointsCurrentLine = { fg = theme.colors.lantern_gold, bold = true },
}

theme.terminal_colors = {
	[0] = theme.colors.deep_cask,
	[1] = theme.colors.fire_spirit,
	[2] = theme.colors.bamboo_green,
	[3] = theme.colors.lantern_gold,
	[4] = theme.colors.storm_spirit,
	[5] = theme.colors.monk_robe,
	[6] = theme.colors.cyan,
	[7] = theme.colors.parchment,
	[8] = theme.colors.grey,
	[9] = theme.colors.hot_iron,
	[10] = theme.colors.jade_accent,
	[11] = theme.colors.ferment_glow,
	[12] = theme.colors.frost_mug,
	[13] = theme.colors.purple3,
	[14] = theme.colors.hot_spring,
	[15] = theme.colors.white,
}

return theme
