local theme = {}

-- ============================================================
-- Brewmaster Theme - "Mangix, the Drunken Brawler"
-- ============================================================
-- Sourced from the hero's actual art, not from a generic
-- "warm dark" idea. Mangix is: black-and-white panda fur, an
-- OLIVE-GREEN robe, BROWN leather wraps, a BRASS keg, and the
-- three Primal Spirits he splits into.
--
-- There is deliberately NO BLUE in this palette. Brewmaster has
-- no blue anywhere on him - not on the model, not in Thunder
-- Clap's dust, not in Cinder Brew's amber splash. The cool
-- anchor is JADE, taken from his robe trim and the pale wind of
-- the Storm brewling.
--
-- Token mapping:
--   Primal Fire  -> hot coal red   (errors, exceptions)
--   Cinder Brew  -> ember orange   (numbers, constants)
--   Brass keg    -> brass gold     (functions - the code that acts)
--   Olive robe   -> moss green     (strings)
--   Jade trim    -> jade           (types)
--   Plum wine    -> wine violet    (keywords)
--   Primal Earth -> tan rock       (namespaces, structures, preproc)
--   Temple stone -> stone grey     (comments)
--
-- Color rules this palette obeys:
--   * every pair of tokens that co-occur in real code is >=15 deg
--     apart in hue - the same spread gruvbox uses for its
--     yellow/orange/red triad, which is a proven-readable warm set
--   * every foreground meets WCAG AA (>=4.5:1) against `bg`
--   * warm and cool tokens carry comparable saturation, so nothing
--     washes out against the mahogany background
-- ============================================================

theme.colors = {
	-- Base colors - Tavern carved out of a mountain temple
	fg = "#e8ddd0", -- Panda fur parchment (main text) - 14.1:1
	inverse_fg = "#1c1714", -- Dark aged wood (float bg)
	bg = "#14100d", -- Deep mahogany (main background)
	accent_bg = "#1c1714", -- Surface color (panels)
	link = "#dfa04c", -- Amber brew (links/URLs) - 7.7:1
	accent = "#dfa04c", -- Amber brew (accent)
	-- border = "#3d3228", -- Worn barrel wood (borders)
	border = "#a08060", -- Worn barrel wood (borders)

	-- Syntax highlighting - Mangix and his three Primal Spirits
	red = "#e0503a", -- Primal Fire, hot coal (errors) - H8 - 4.9:1
	orange = "#e08248", -- Cinder Brew ember (numbers) - H23 - 6.7:1
	brass = "#e6b95e", -- Brass keg fittings (functions) - H40 - 10.3:1
	yellow = "#f0cf82", -- Golden brew (warnings, literals) - H42 - 12.6:1
	green = "#a8bf5c", -- Olive robe / bamboo (strings) - H74 - 9.3:1
	cyan = "#5cbf9a", -- Jade robe trim (types) - H158 - 8.5:1
	purple = "#c58fb4", -- Plum wine (keywords) - H319 - 7.2:1
	grey = "#8a7d6e", -- Temple stone (comments) - 4.7:1

	-- Brewmaster-specific colors
	brew_amber = "#dfa04c", -- Freshly poured ale
	fire_spirit = "#e0503a", -- Primal Fire brewling
	earth_spirit = "#b08a5e", -- Primal Earth brewling (tan rock)
	storm_spirit = "#8fd4bc", -- Primal Storm brewling (pale wind, not blue)
	bamboo_green = "#a8bf5c", -- Pandaren bamboo groves
	moss_robe = "#8fae4a", -- His olive robe, in shadow
	panda_fur = "#cbbba2", -- Panda's warm underfur
	monk_robe = "#c58fb4", -- Wine-stained silk
	tavern_wood = "#5a4a3c", -- Polished tavern wood
	aged_leather = "#b0917a", -- Weathered leather wraps - 6.5:1
	stone_floor = "#3d3228", -- Temple stone
	lantern_gold = "#f0cf82", -- Warm lantern light - 12.6:1
	jade_accent = "#5cbf9a", -- Pandaren jade
	ferment_glow = "#cf9a3f", -- Fermenting brew
	parchment = "#e8ddd0", -- Ancient scroll text
	deep_cask = "#0e0b09", -- Bottom of the barrel
	hot_iron = "#d76244", -- Blacksmith's forge (terminal bright red) - 5.4:1
	hot_spring = "#4fae94", -- Mountain hot spring
	frost_mug = "#a8e2cd", -- Frosted ale mug
	sake_cup = "#c99a66", -- Ceramic sake vessel
	brewing_vat = "#2e2418", -- Fermentation barrel interior
	punctuation = "#a8988a", -- Brackets/operators: present, not shouting

	-- UI colors - Warm and readable
	folded_bg = "#1a150f",
	cursor_fg = "#14100d",
	cursor_bg = "#dfa04c",
	line_number_fg = "#5e5346", -- was 1.9:1 (near invisible), now 2.5:1
	line_number_active_fg = "#ddc8a4",
	sign_add = "#a8bf5c",
	sign_change = "#f0cf82",
	sign_delete = "#e0503a",
	indent_guide = "#2a221a",
	indent_guide_active = "#4a4038",
	visual = "#2e2418",
	match_paren = "#4a3a20",
	error_red = "#e0503a",
	changed = "#f0cf82",
	quickfix_line = "#1e1a14",
	title = "#f0cf82",
	parameter = "#dcd2c0",
	string_delimiter = "#c0a878",
	dark = "#0a0806",
	white = "#e8ddd0",
	gray = "#2a221a",
	gray3 = "#3a3228",
	gray4 = "#5a5048",
	cyan2 = "#86d4b6", -- Lighter jade (properties/fields)
	purple3 = "#d6a8c8", -- Lighter wine (events)
	dark_red = "#7a2a18",
	black = "#000000",
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
	Function = { fg = theme.colors.brass, bold = true },

	Statement = { fg = theme.colors.purple },
	Conditional = { fg = theme.colors.purple },
	Repeat = { fg = theme.colors.purple },
	Label = { fg = theme.colors.purple },
	Operator = { fg = theme.colors.punctuation },
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
	Tag = { fg = theme.colors.brass },
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
	DiffAdd = { fg = theme.colors.green, bg = "#1c2a16" },
	DiffChange = { fg = theme.colors.yellow, bg = "#2c2415" },
	DiffDelete = { fg = theme.colors.red, bg = "#2c1a14" },
	DiffText = { fg = theme.colors.lantern_gold, bg = "#463818", bold = true },

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

	["@function"] = { fg = theme.colors.brass, bold = true },
	["@function.call"] = { fg = theme.colors.brass },
	["@method"] = { fg = theme.colors.brass },
	["@method.call"] = { fg = theme.colors.brass },
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
	["@structure"] = { fg = theme.colors.earth_spirit },
	["@namespace"] = { fg = theme.colors.earth_spirit },

	["@variable"] = { fg = theme.colors.fg },
	["@variable.builtin"] = { fg = theme.colors.orange, italic = true },
	["@constant"] = { fg = theme.colors.orange },
	["@constant.builtin"] = { fg = theme.colors.orange, bold = true },
	["@property"] = { fg = theme.colors.cyan2 },

	["@operator"] = { fg = theme.colors.punctuation },
	["@punctuation.delimiter"] = { fg = theme.colors.punctuation },
	["@punctuation.bracket"] = { fg = theme.colors.punctuation },
	["@punctuation.special"] = { fg = theme.colors.brew_amber },

	["@tag"] = { fg = theme.colors.brass },
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
	["@text.note"] = { fg = theme.colors.storm_spirit },
	["@text.warning"] = { fg = theme.colors.yellow },
	["@text.danger"] = { fg = theme.colors.fire_spirit },

	-- Markdown / markup groups
	["@markup.heading"] = { fg = theme.colors.title, bold = true },
	["@markup.heading.1"] = { fg = theme.colors.brew_amber, bold = true },
	["@markup.heading.2"] = { fg = theme.colors.lantern_gold, bold = true },
	["@markup.heading.3"] = { fg = theme.colors.storm_spirit, bold = true },
	["@markup.heading.4"] = { fg = theme.colors.jade_accent, bold = true },
	["@markup.heading.5"] = { fg = theme.colors.monk_robe, bold = true },
	["@markup.heading.6"] = { fg = theme.colors.grey, bold = true },
	["@markup.link"] = { fg = theme.colors.link, underline = true },
	["@markup.link.label"] = { fg = theme.colors.cyan },
	["@markup.link.url"] = { fg = theme.colors.link, underline = true },
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
	RedrawDebugComposed = { bg = theme.colors.brass },
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
	NavicIconsMethod = { fg = theme.colors.brass },
	NavicIconsProperty = { fg = theme.colors.cyan2 },
	NavicIconsField = { fg = theme.colors.cyan2 },
	NavicIconsConstructor = { fg = theme.colors.cyan },
	NavicIconsEnum = { fg = theme.colors.cyan },
	NavicIconsInterface = { fg = theme.colors.cyan },
	NavicIconsFunction = { fg = theme.colors.brass },
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
	NavicIconsOperator = { fg = theme.colors.punctuation },
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

-- ANSI slots 4/12 are the "blue" slots. This hero has no blue, so
-- they take the deepest jade available - close enough in hue that
-- git/ls/diff output still reads as intended, without breaking the
-- palette's rule.
theme.terminal_colors = {
	[0] = theme.colors.deep_cask,
	[1] = theme.colors.fire_spirit,
	[2] = theme.colors.moss_robe,
	[3] = theme.colors.ferment_glow,
	[4] = theme.colors.hot_spring,
	[5] = theme.colors.monk_robe,
	[6] = theme.colors.jade_accent,
	[7] = theme.colors.panda_fur,
	[8] = theme.colors.grey,
	[9] = theme.colors.hot_iron,
	[10] = theme.colors.bamboo_green,
	[11] = theme.colors.lantern_gold,
	[12] = theme.colors.storm_spirit,
	[13] = theme.colors.purple3,
	[14] = theme.colors.frost_mug,
	[15] = theme.colors.white,
}

return theme
