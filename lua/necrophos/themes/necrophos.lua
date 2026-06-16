local theme = {}

-- ============================================================
-- Necrophos Theme - "The Plague Doctor"
-- ============================================================
-- Philosophy: The quiet menace of a plague doctor walking
-- through a corrupted forest. Toxic greens pulse through
-- veins of decay, while ghostly teal whispers of souls
-- already claimed. This theme is disease given elegance.
-- ============================================================

theme.colors = {
	-- Base colors - Plague doctor's domain
	fg = "#D7E5DD",          -- Ethereal white (primary text)
	inverse_fg = "#1a2620",  -- Dark corruption (float/surface bg)
	bg = "#0e1a20",          -- Deep plague (main background)
	accent_bg = "#1a2620",   -- Surface shadow (panels)
	link = "#6EE7A8",        -- Plague green (links/URLs)
	accent = "#54C892",      -- Spectral core (accent)
	border = "#39433D",      -- Reaper shadow (borders)

	-- Syntax highlighting - Disease and decay palette
	red = "#c25c5c",         -- Blood rot (errors, deleted)
	orange = "#AF8B43",      -- Death bronze (constants, numbers)
	yellow = "#C9A45A",      -- Harvest gold (strings, warnings)
	green = "#6EE7A8",       -- Plague green (strings, additions)
	cyan = "#69C7B5",        -- Cursed teal (types)
	blue = "#6E9440",        -- Withered green (functions)
	purple = "#8c7ac2",      -- Necromancy (keywords, statements)
	grey = "#66736D",        -- Death ash (comments)

	-- Necrophos-specific colors
	plague_green = "#6EE7A8",    -- Vibrant toxic energy
	ghostly_teal = "#7DD3C7",   -- Ethereal soul energy
	heartstopper = "#9ACB5B",   -- Heartstopper herb
	reaper_gold = "#D4B86A",    -- Reaper's scythe gold
	death_seeker = "#5FCF96",   -- Death seeker's path
	spectral_green = "#67D99F",  -- Spectral green glow
	plague_mist = "#8ABAA5",    -- Poison mist cloud
	cursed_teal = "#69C7B5",    -- Cursed teal energy
	death_bronze = "#AF8B43",   -- Ancient death bronze
	withered_green = "#6E9440", -- Withered plant life
	soul_wisp = "#A4E2D0",      -- Trapped soul wisps
	ghost_fog = "#B6D2C8",      -- Ghostly fog
	reaper_shadow = "#39433D",  -- Reaper's shadow
	death_ash = "#66736D",      -- Death and ash
	plague_vapor = "#4F7D6C",   -- Rising plague vapor
	harvest_gold = "#C9A45A",   -- Soul harvest gold
	soul_fragment = "#78D6AE",  -- Fragmented soul energy
	spectral_core = "#54C892",  -- Core spectral energy
	rot_green = "#5E8A45",      -- Rotting vegetation
	curse_green = "#7CB06A",    -- Cursed green magic
	ethereal_white = "#D7E5DD", -- Ethereal mist
	ancient_bone = "#CFC8A6",   -- Ancient bone color

	-- UI colors - Readable and atmospheric
	folded_bg = "#142630",
	cursor_fg = "#0e1a20",
	cursor_bg = "#6EE7A8",
	line_number_fg = "#4F7D6C",
	line_number_active_fg = "#A4E2D0",
	sign_add = "#6EE7A8",
	sign_change = "#C9A45A",
	sign_delete = "#c25c5c",
	indent_guide = "#1f4d4d",
	indent_guide_active = "#4F7D6C",
	visual = "#1d534d",
	match_paren = "#1e4a42",
	error_red = "#c25c5c",
	quickfix_line = "#0e3f2f",
	title = "#78D6AE",
	parameter = "#B6D2C8",
	dark_red = "#ab0300",
	white = "#D7E5DD",
	black = "#000000",

	-- Extended UI palette
	gray = "#26392a",
	gray3 = "#364a41",
	gray4 = "#4F7D6C",
	gray6 = "#66736D",
	cyan2 = "#69C7B5",
	purple3 = "#78D6AE",

	-- Hero-themed additions
	plague_cloud = "#1a4d3d",    -- Poison cloud areas
	forest_green = "#5E8A45",    -- Death pulse green
	bandage_tan = "#CFC8A6",     -- Bandages and wrappings
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
	Operator = { fg = theme.colors.plague_vapor },
	Keyword = { fg = theme.colors.purple, italic = true },
	Exception = { fg = theme.colors.heartstopper },

	PreProc = { fg = theme.colors.death_bronze },
	Include = { fg = theme.colors.purple },
	Define = { fg = theme.colors.death_bronze },
	Macro = { fg = theme.colors.death_bronze },
	PreCondit = { fg = theme.colors.death_bronze },

	Type = { fg = theme.colors.cyan },
	StorageClass = { fg = theme.colors.purple },
	Structure = { fg = theme.colors.death_bronze },
	Typedef = { fg = theme.colors.cyan },

	Special = { fg = theme.colors.plague_green },
	SpecialChar = { fg = theme.colors.heartstopper },
	Tag = { fg = theme.colors.blue },
	Delimiter = { fg = theme.colors.fg },
	SpecialComment = { fg = theme.colors.grey, bold = true },
	Debug = { fg = theme.colors.heartstopper },

	Underlined = { fg = theme.colors.link, underline = true },
	Bold = { bold = true },
	Italic = { italic = true },

	-- UI groups
	LineNr = { fg = theme.colors.line_number_fg },
	CursorLineNr = { fg = theme.colors.line_number_active_fg, bold = true },
	CursorLine = { bg = theme.colors.plague_cloud },
	CursorColumn = { bg = theme.colors.plague_cloud },
	ColorColumn = { bg = theme.colors.plague_cloud },

	SignColumn = { fg = theme.colors.grey, bg = theme.colors.bg },
	FoldColumn = { fg = theme.colors.grey, bg = theme.colors.bg },
	Folded = { fg = theme.colors.gray6, bg = theme.colors.folded_bg, italic = true },

	Pmenu = { fg = theme.colors.fg, bg = theme.colors.inverse_fg },
	PmenuSel = { fg = theme.colors.inverse_fg, bg = theme.colors.plague_green, bold = true },
	PmenuSbar = { bg = theme.colors.plague_cloud },
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
	DiagnosticError = { fg = theme.colors.heartstopper },
	DiagnosticWarn = { fg = theme.colors.harvest_gold },
	DiagnosticInfo = { fg = theme.colors.plague_green },
	DiagnosticHint = { fg = theme.colors.ghostly_teal },
	DiagnosticUnderlineError = { sp = theme.colors.heartstopper, undercurl = true },
	DiagnosticUnderlineWarn = { sp = theme.colors.harvest_gold, undercurl = true },
	DiagnosticUnderlineInfo = { sp = theme.colors.plague_green, undercurl = true },
	DiagnosticUnderlineHint = { sp = theme.colors.ghostly_teal, undercurl = true },

	-- Git groups
	DiffAdd = { fg = theme.colors.bg, bg = theme.colors.ghostly_teal },
	DiffChange = { fg = theme.colors.bg, bg = theme.colors.harvest_gold },
	DiffDelete = { fg = theme.colors.bg, bg = theme.colors.heartstopper },
	DiffText = { fg = theme.colors.bg, bg = theme.colors.plague_green },

	gitcommitSummary = { fg = theme.colors.green, bold = true },
	gitcommitBranch = { fg = theme.colors.plague_green },

	-- LSP groups
	LspReferenceText = { bg = theme.colors.plague_cloud },
	LspReferenceRead = { bg = theme.colors.plague_cloud },
	LspReferenceWrite = { bg = theme.colors.forest_green },
	LspSignatureActiveParameter = { fg = theme.colors.harvest_gold, bold = true },

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
	["@exception"] = { fg = theme.colors.heartstopper },

	["@type"] = { fg = theme.colors.cyan },
	["@type.builtin"] = { fg = theme.colors.cyan, italic = true },
	["@structure"] = { fg = theme.colors.death_bronze },
	["@namespace"] = { fg = theme.colors.death_bronze },

	["@variable"] = { fg = theme.colors.fg },
	["@variable.builtin"] = { fg = theme.colors.orange, italic = true },
	["@constant"] = { fg = theme.colors.orange },
	["@constant.builtin"] = { fg = theme.colors.orange, bold = true },
	["@property"] = { fg = theme.colors.cyan2 },

	["@operator"] = { fg = theme.colors.plague_vapor },
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
	["@markup.heading"] = { fg = theme.colors.title, bold = true },
	["@markup.heading.1"] = { fg = theme.colors.plague_green, bold = true },
	["@markup.heading.2"] = { fg = theme.colors.ghostly_teal, bold = true },
	["@markup.heading.3"] = { fg = theme.colors.cyan, bold = true },
	["@markup.heading.4"] = { fg = theme.colors.blue, bold = true },
	["@markup.heading.5"] = { fg = theme.colors.purple, bold = true },
	["@markup.heading.6"] = { fg = theme.colors.grey, bold = true },
	["@markup.link"] = { fg = theme.colors.link, underline = true },
	["@markup.link.label"] = { fg = theme.colors.cyan },
	["@markup.link.url"] = { fg = theme.colors.blue, underline = true },
	["@markup.list"] = { fg = theme.colors.plague_green },
	["@markup.list.checked"] = { fg = theme.colors.plague_green },
	["@markup.list.unchecked"] = { fg = theme.colors.grey },
	["@markup.raw"] = { fg = theme.colors.yellow },
	["@markup.raw.block"] = { fg = theme.colors.yellow },
	["@markup.quote"] = { fg = theme.colors.grey, italic = true },
	["@markup.math"] = { fg = theme.colors.harvest_gold },
	["@markup.environment"] = { fg = theme.colors.death_bronze },
	["@markup.environment.name"] = { fg = theme.colors.plague_green },
	["@text.literal"] = { fg = theme.colors.yellow },
	["@text.uri"] = { fg = theme.colors.link, underline = true },
	["@text.note"] = { fg = theme.colors.ghostly_teal },
	["@text.warning"] = { fg = theme.colors.harvest_gold },
	["@text.danger"] = { fg = theme.colors.heartstopper },

	-- Search and visual
	Search = { fg = theme.colors.bg, bg = theme.colors.harvest_gold },
	IncSearch = { fg = theme.colors.bg, bg = theme.colors.plague_green },
	CurSearch = { link = "IncSearch" },
	Substitute = { fg = theme.colors.bg, bg = theme.colors.ghostly_teal },

	Visual = { bg = theme.colors.visual },
	VisualNOS = { bg = theme.colors.visual, italic = true },
	MatchParen = { fg = theme.colors.harvest_gold, bg = theme.colors.match_paren, bold = true },

	-- Cursor
	Cursor = { fg = theme.colors.cursor_fg, bg = theme.colors.cursor_bg },
	lCursor = { link = "Cursor" },
	CursorIM = { link = "Cursor" },

	-- Spell
	SpellBad = { sp = theme.colors.heartstopper, undercurl = true },
	SpellCap = { sp = theme.colors.harvest_gold, undercurl = true },
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
	ErrorMsg = { fg = theme.colors.heartstopper, bold = true },
	WarningMsg = { fg = theme.colors.harvest_gold },
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
	diffOldFile = { fg = theme.colors.heartstopper },
	diffLine = { fg = theme.colors.purple },

	-- Neovim specific
	NvimInternalError = { fg = theme.colors.white, bg = theme.colors.dark_red },
	WinBar = { fg = theme.colors.plague_green, bold = true },
	WinBarNC = { fg = theme.colors.grey },

	-- Indent guides
	IndentBlanklineChar = { fg = theme.colors.indent_guide },
	IndentBlanklineContextChar = { fg = theme.colors.indent_guide_active },

	-- Notify highlights
	NotifyERRORBorder = { fg = theme.colors.heartstopper },
	NotifyWARNBorder = { fg = theme.colors.harvest_gold },
	NotifyINFOBorder = { fg = theme.colors.plague_green },
	NotifyDEBUGBorder = { fg = theme.colors.grey },
	NotifyTRACEBorder = { fg = theme.colors.purple },
	NotifyERRORIcon = { fg = theme.colors.heartstopper },
	NotifyWARNIcon = { fg = theme.colors.harvest_gold },
	NotifyINFOIcon = { fg = theme.colors.plague_green },
	NotifyDEBUGIcon = { fg = theme.colors.grey },
	NotifyTRACEIcon = { fg = theme.colors.purple },
	NotifyERRORTitle = { fg = theme.colors.heartstopper },
	NotifyWARNTitle = { fg = theme.colors.harvest_gold },
	NotifyINFOTitle = { fg = theme.colors.plague_green },
	NotifyDEBUGTitle = { fg = theme.colors.grey },
	NotifyTRACETitle = { fg = theme.colors.purple },

	-- Navic (LSP breadcrumbs)
	NavicIconsFile = { fg = theme.colors.plague_green },
	NavicIconsModule = { fg = theme.colors.purple },
	NavicIconsNamespace = { fg = theme.colors.death_bronze },
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
	NavicIconsArray = { fg = theme.colors.death_bronze },
	NavicIconsObject = { fg = theme.colors.death_bronze },
	NavicIconsKey = { fg = theme.colors.purple },
	NavicIconsNull = { fg = theme.colors.grey },
	NavicIconsEnumMember = { fg = theme.colors.cyan2 },
	NavicIconsStruct = { fg = theme.colors.death_bronze },
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
	TelescopeMatching = { fg = theme.colors.harvest_gold, bold = true },

	NoiceCursor = { link = "Cursor" },
	NoiceFormatProgressDone = { bg = theme.colors.plague_green },
	NoiceFormatProgressTodo = { bg = theme.colors.plague_cloud },

	-- DAP UI
	DapUIScope = { fg = theme.colors.plague_green },
	DapUIType = { fg = theme.colors.cyan },
	DapUIValue = { fg = theme.colors.orange },
	DapUIVariable = { fg = theme.colors.fg },
	DapUIBreakpointsPath = { fg = theme.colors.plague_green },
	DapUIBreakpointsInfo = { fg = theme.colors.ghostly_teal },
	DapUIBreakpointsCurrentLine = { fg = theme.colors.harvest_gold, bold = true },
}

theme.terminal_colors = {
	[0] = theme.colors.reaper_shadow,
	[1] = theme.colors.heartstopper,
	[2] = theme.colors.plague_green,
	[3] = theme.colors.harvest_gold,
	[4] = theme.colors.ghostly_teal,
	[5] = theme.colors.purple,
	[6] = theme.colors.cyan,
	[7] = theme.colors.ethereal_white,
	[8] = theme.colors.death_ash,
	[9] = theme.colors.heartstopper,
	[10] = theme.colors.death_seeker,
	[11] = theme.colors.reaper_gold,
	[12] = theme.colors.spectral_green,
	[13] = theme.colors.purple,
	[14] = theme.colors.cursed_teal,
	[15] = theme.colors.ethereal_white,
}

return theme
