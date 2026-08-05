local theme = {}

-- ============================================================
-- Dragon Knight Theme - "Davion, and the four dragons in him"
-- ============================================================
-- Every other hero in this plugin forced a compromise: they only
-- carry three or four colors, so the sixth syntax slot had to be
-- invented. Dragon Knight does not have that problem. Elder
-- Dragon Form is canonically FOUR separate dragons, and Valve
-- picked them from opposite ends of the wheel:
--
--   Level 1 -> GREEN DRAGON  - Corrosive Breath
--   Level 2 -> RED DRAGON    - splash fire
--   Level 3 -> BLUE DRAGON   - frost, slows
--   Level 4 -> BLACK DRAGON  - Aghanim's Scepter only
--
-- Plus Davion himself, who is steel plate and gold trim.
--
-- This is the one theme in the set where blue is not a liberty.
-- Brewmaster and Earth Spirit had blue stripped out because the
-- heroes have none; the Blue Dragon is a real form, so functions
-- get to be frost here.
--
-- Token mapping:
--   Blue Dragon    -> functions   (frost, the code that acts)
--   Frost breath   -> types
--   Green Dragon   -> strings     (Corrosive Breath)
--   Dragon Blood   -> numbers, constants
--   Knight's gold  -> warnings, literals, UI accent
--   Red Dragon     -> errors, exceptions
--   Black Dragon   -> keywords
--   Gauntlet steel -> namespaces, structures, preproc
--   Steel in shadow-> comments
--
-- The Black Dragon is the one interpretation here: the model is
-- obsidian, and the violet is read off its scale sheen rather
-- than lifted straight from a flat colour. Everything else is
-- taken directly.
--
-- Color rules this palette obeys:
--   * minimum hue gap across all 21 syntax pairs is 19 deg - the
--     widest in this plugin (brewmaster 15, earth_spirit 15)
--   * every foreground meets WCAG AA (>=4.5:1) against `bg`
--   * cursor_line < visual < match_paren, three distinct steps, so a
--     selection stays visible on the cursor's own line
-- ============================================================

theme.colors = {
	-- Base colors - Obsidian, the Black Dragon's hide
	fg = "#ccced6", -- Steel plate (main text) - 12.0:1
	inverse_fg = "#1c1820", -- Dragon-hall shadow (float bg)
	bg = "#141013", -- Obsidian (main background)
	accent_bg = "#1c1820", -- Surface color (panels)
	link = "#5cb2eb", -- Blue Dragon frost (links/URLs) - 8.1:1
	accent = "#e4c852", -- Knight's gold trim (accent) - 11.4:1
	border = "#847f92", -- Steel edge (borders) - 4.9:1

	-- Syntax highlighting - The four dragons and the knight
	red = "#e8543c", -- Red Dragon, Breathe Fire (errors) - H8 - 5.2:1
	orange = "#e08334", -- Dragon Blood ember (numbers) - H28 - 6.7:1
	yellow = "#e4c852", -- Knight's gold trim (warnings) - H48 - 11.4:1
	green = "#8ad44a", -- Green Dragon, Corrosive Breath - H92 - 10.4:1
	cyan = "#5fd0c8", -- Frost breath (types) - H176 - 10.2:1
	blue = "#5cb2eb", -- Blue Dragon (functions) - H204 - 8.1:1
	purple = "#b98ae8", -- Black Dragon scale (keywords) - H270 - 7.1:1
	grey = "#847f8e", -- Steel in shadow (comments) - 4.9:1

	-- Dragon Knight-specific colors
	red_dragon = "#e8543c", -- Level 2 form, splash fire
	green_dragon = "#8ad44a", -- Level 1 form, Corrosive Breath
	blue_dragon = "#5cb2eb", -- Level 3 form, frost
	black_dragon = "#b98ae8", -- Level 4 form, Aghanim's only
	scale_violet = "#a87ade", -- Obsidian scale sheen
	dragon_blood = "#e08334", -- The passive burning in his veins
	knight_gold = "#e4c852", -- Armour trim
	gold_bright = "#f0da84", -- Polished gold (titles, search)
	magma = "#d65c34", -- Molten rock under the hide
	magma_bright = "#e8734a", -- Kiln-hot (terminal bright red)
	frost_pale = "#5fd0c8", -- Frost breath
	frost_ice = "#a8e4ea", -- Rime on the plate
	frost_deep = "#3f9ec8", -- Deep frost (terminal blue)
	corrosive = "#8ad44a", -- Corrosive Breath
	corrosive_deep = "#6aa838", -- Corrosive pooled (terminal green)
	plate_steel = "#ccced6", -- Davion's armour
	plate_bright = "#e2e4ea", -- Polished plate
	gauntlet_steel = "#a89aa8", -- Worn gauntlet
	steel_shadow = "#847f8e", -- Steel in shadow
	cape_crimson = "#d04858", -- The Dragon Knight's cape
	ember_glow = "#d89a5c", -- Dying fire
	obsidian_deep = "#0d0a0c", -- Deepest black scale
	obsidian_surface = "#241d26", -- Lit obsidian (selection)
	punctuation = "#8e8a98", -- Brackets/operators: present, not shouting

	-- Diff washes - tinted toward each diff's foreground hue but kept
	-- dark enough that the text on top keeps its own contrast.
	diff_add_bg = "#16260f", -- Corrosive Breath (added)
	diff_change_bg = "#2a2413", -- Knight's gold (changed)
	diff_delete_bg = "#2c1518", -- Dragon fire (removed)
	diff_text_bg = "#443616", -- Polished gold (changed word)

	-- UI colors
	folded_bg = "#1a151c",
	cursor_fg = "#141013",
	cursor_bg = "#5cb2eb",
	line_number_fg = "#5c5768", -- was 2.2:1, now 2.7:1
	line_number_active_fg = "#c0bcc8",
	sign_add = "#8ad44a",
	sign_change = "#e4c852",
	sign_delete = "#e8543c",
	indent_guide = "#251f28",
	indent_guide_active = "#3e3846",
	-- Three distinct background steps so a selection stays visible on
	-- the cursor's own line: cursor_line < visual < match_paren.
	cursor_line = "#1b161e", -- Cursor line / column wash
	visual = "#2a2232", -- Selection - brighter than the cursor line
	match_paren = "#3a2f44",
	error_red = "#e8543c",
	changed = "#e4c852",
	quickfix_line = "#1a151c",
	title = "#f0da84",
	parameter = "#c2c4cc",
	string_delimiter = "#a8c880",
	dark = "#090709",
	white = "#e2e4ea",
	gray = "#251f28",
	gray3 = "#332c38",
	gray4 = "#4e4a58",
	cyan2 = "#8fdcd4", -- Lighter frost (properties/fields)
	purple3 = "#cba8f0", -- Lighter scale (events)
	dark_red = "#7a2018",
	black = "#000000",
}

theme.groups = {
	-- Base groups
	Normal = { fg = theme.colors.fg, bg = theme.colors.bg },
	NormalFloat = { fg = theme.colors.fg, bg = theme.colors.inverse_fg },
	FloatBorder = { fg = theme.colors.border, bg = theme.colors.inverse_fg },
	FloatTitle = { fg = theme.colors.knight_gold, bg = theme.colors.inverse_fg, bold = true },

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
	Operator = { fg = theme.colors.punctuation },
	Keyword = { fg = theme.colors.purple, italic = true },
	Exception = { fg = theme.colors.red },

	PreProc = { fg = theme.colors.gauntlet_steel },
	Include = { fg = theme.colors.purple },
	Define = { fg = theme.colors.gauntlet_steel },
	Macro = { fg = theme.colors.gauntlet_steel },
	PreCondit = { fg = theme.colors.gauntlet_steel },

	Type = { fg = theme.colors.cyan },
	StorageClass = { fg = theme.colors.purple },
	Structure = { fg = theme.colors.gauntlet_steel },
	Typedef = { fg = theme.colors.cyan },

	Special = { fg = theme.colors.knight_gold },
	SpecialChar = { fg = theme.colors.red_dragon },
	Tag = { fg = theme.colors.blue },
	Delimiter = { fg = theme.colors.punctuation },
	SpecialComment = { fg = theme.colors.grey, bold = true },
	Debug = { fg = theme.colors.red },

	Underlined = { fg = theme.colors.link, underline = true },
	Bold = { bold = true },
	Italic = { italic = true },

	-- UI groups
	LineNr = { fg = theme.colors.line_number_fg },
	CursorLineNr = { fg = theme.colors.line_number_active_fg, bold = true },
	CursorLine = { bg = theme.colors.cursor_line },
	CursorColumn = { bg = theme.colors.cursor_line },
	ColorColumn = { bg = theme.colors.cursor_line },

	SignColumn = { fg = theme.colors.grey, bg = theme.colors.bg },
	FoldColumn = { fg = theme.colors.grey, bg = theme.colors.bg },
	Folded = { fg = theme.colors.grey, bg = theme.colors.folded_bg, italic = true },

	Pmenu = { fg = theme.colors.fg, bg = theme.colors.inverse_fg },
	PmenuSel = { fg = theme.colors.inverse_fg, bg = theme.colors.knight_gold, bold = true },
	PmenuSbar = { bg = theme.colors.gray3 },
	PmenuThumb = { bg = theme.colors.border },

	StatusLine = { fg = theme.colors.fg, bg = theme.colors.accent_bg },
	StatusLineNC = { fg = theme.colors.grey, bg = theme.colors.accent_bg },
	WinSeparator = { fg = theme.colors.border },
	VertSplit = { fg = theme.colors.border },

	TabLine = { fg = theme.colors.grey, bg = theme.colors.accent_bg },
	TabLineSel = { fg = theme.colors.knight_gold, bg = theme.colors.bg, bold = true },
	TabLineFill = { bg = theme.colors.accent_bg },

	Title = { fg = theme.colors.title, bold = true },
	Question = { fg = theme.colors.frost_pale },
	ModeMsg = { fg = theme.colors.knight_gold },
	MoreMsg = { fg = theme.colors.knight_gold },

	-- Diagnostic groups
	DiagnosticError = { fg = theme.colors.red_dragon },
	DiagnosticWarn = { fg = theme.colors.yellow },
	DiagnosticInfo = { fg = theme.colors.knight_gold },
	DiagnosticHint = { fg = theme.colors.frost_pale },
	DiagnosticUnderlineError = { sp = theme.colors.red_dragon, undercurl = true },
	DiagnosticUnderlineWarn = { sp = theme.colors.yellow, undercurl = true },
	DiagnosticUnderlineInfo = { sp = theme.colors.knight_gold, undercurl = true },
	DiagnosticUnderlineHint = { sp = theme.colors.frost_pale, undercurl = true },

	-- Git groups
	DiffAdd = { fg = theme.colors.green, bg = theme.colors.diff_add_bg },
	DiffChange = { fg = theme.colors.yellow, bg = theme.colors.diff_change_bg },
	DiffDelete = { fg = theme.colors.red, bg = theme.colors.diff_delete_bg },
	DiffText = { fg = theme.colors.gold_bright, bg = theme.colors.diff_text_bg, bold = true },

	gitcommitSummary = { fg = theme.colors.green, bold = true },
	gitcommitBranch = { fg = theme.colors.knight_gold },

	-- LSP groups
	LspReferenceText = { bg = theme.colors.obsidian_surface },
	LspReferenceRead = { bg = theme.colors.obsidian_surface },
	LspReferenceWrite = { bg = theme.colors.match_paren, bold = true },
	LspSignatureActiveParameter = { fg = theme.colors.knight_gold, bold = true },

	-- Tree-sitter groups
	["@comment"] = { link = "Comment" },
	["@string"] = { link = "String" },
	["@string.special"] = { fg = theme.colors.ember_glow },
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
	["@structure"] = { fg = theme.colors.gauntlet_steel },
	["@namespace"] = { fg = theme.colors.gauntlet_steel },

	["@variable"] = { fg = theme.colors.fg },
	["@variable.builtin"] = { fg = theme.colors.orange, italic = true },
	["@constant"] = { fg = theme.colors.orange },
	["@constant.builtin"] = { fg = theme.colors.orange, bold = true },
	["@property"] = { fg = theme.colors.cyan2 },

	["@operator"] = { fg = theme.colors.punctuation },
	["@punctuation.delimiter"] = { fg = theme.colors.punctuation },
	["@punctuation.bracket"] = { fg = theme.colors.punctuation },
	["@punctuation.special"] = { fg = theme.colors.knight_gold },

	["@tag"] = { fg = theme.colors.blue },
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
	["@text.note"] = { fg = theme.colors.frost_pale },
	["@text.warning"] = { fg = theme.colors.yellow },
	["@text.danger"] = { fg = theme.colors.red_dragon },

	-- Markdown / markup groups
	["@markup.heading"] = { fg = theme.colors.title, bold = true },
	["@markup.heading.1"] = { fg = theme.colors.gold_bright, bold = true },
	["@markup.heading.2"] = { fg = theme.colors.green_dragon, bold = true },
	["@markup.heading.3"] = { fg = theme.colors.red_dragon, bold = true },
	["@markup.heading.4"] = { fg = theme.colors.blue_dragon, bold = true },
	["@markup.heading.5"] = { fg = theme.colors.scale_violet, bold = true },
	["@markup.heading.6"] = { fg = theme.colors.grey, bold = true },
	["@markup.link"] = { fg = theme.colors.link, underline = true },
	["@markup.link.label"] = { fg = theme.colors.cyan },
	["@markup.link.url"] = { fg = theme.colors.link, underline = true },
	["@markup.list"] = { fg = theme.colors.knight_gold },
	["@markup.list.checked"] = { fg = theme.colors.green },
	["@markup.list.unchecked"] = { fg = theme.colors.grey },
	["@markup.raw"] = { fg = theme.colors.yellow },
	["@markup.raw.block"] = { fg = theme.colors.yellow },
	["@markup.quote"] = { fg = theme.colors.grey, italic = true },
	["@markup.math"] = { fg = theme.colors.gold_bright },
	["@markup.environment"] = { fg = theme.colors.gauntlet_steel },
	["@markup.environment.name"] = { fg = theme.colors.knight_gold },

	-- Search and visual
	Search = { fg = theme.colors.bg, bg = theme.colors.gold_bright },
	IncSearch = { fg = theme.colors.bg, bg = theme.colors.knight_gold },
	CurSearch = { link = "IncSearch" },
	Substitute = { fg = theme.colors.bg, bg = theme.colors.frost_pale },

	Visual = { bg = theme.colors.visual },
	VisualNOS = { bg = theme.colors.visual, italic = true },
	MatchParen = { fg = theme.colors.gold_bright, bg = theme.colors.match_paren, bold = true },

	-- Cursor
	Cursor = { fg = theme.colors.cursor_fg, bg = theme.colors.cursor_bg },
	lCursor = { link = "Cursor" },
	CursorIM = { link = "Cursor" },

	-- Spell
	SpellBad = { sp = theme.colors.red_dragon, undercurl = true },
	SpellCap = { sp = theme.colors.gold_bright, undercurl = true },
	SpellLocal = { sp = theme.colors.knight_gold, undercurl = true },
	SpellRare = { sp = theme.colors.frost_pale, undercurl = true },

	-- Special syntax
	Whitespace = { fg = theme.colors.gray4 },
	NonText = { fg = theme.colors.gray4 },
	Conceal = { fg = theme.colors.grey },
	SpecialKey = { fg = theme.colors.grey },

	-- Quickfix
	QuickFixLine = { bg = theme.colors.quickfix_line },
	qfLineNr = { fg = theme.colors.knight_gold },

	-- Wild menu
	WildMenu = { fg = theme.colors.inverse_fg, bg = theme.colors.knight_gold },

	-- Directory
	Directory = { fg = theme.colors.knight_gold },

	-- Msg area
	ErrorMsg = { fg = theme.colors.red_dragon, bold = true },
	WarningMsg = { fg = theme.colors.yellow },
	InfoMsg = { fg = theme.colors.knight_gold },
	HintMsg = { fg = theme.colors.frost_pale },

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
	diffFile = { fg = theme.colors.knight_gold },
	diffNewFile = { fg = theme.colors.green },
	diffOldFile = { fg = theme.colors.red },
	diffLine = { fg = theme.colors.purple },

	-- Neovim specific
	NvimInternalError = { fg = theme.colors.white, bg = theme.colors.dark_red },
	WinBar = { fg = theme.colors.knight_gold, bold = true },
	WinBarNC = { fg = theme.colors.grey },

	-- Indent guides
	IndentBlanklineChar = { fg = theme.colors.indent_guide },
	IndentBlanklineContextChar = { fg = theme.colors.indent_guide_active },

	-- Notify highlights
	NotifyERRORBorder = { fg = theme.colors.red_dragon },
	NotifyWARNBorder = { fg = theme.colors.yellow },
	NotifyINFOBorder = { fg = theme.colors.knight_gold },
	NotifyDEBUGBorder = { fg = theme.colors.grey },
	NotifyTRACEBorder = { fg = theme.colors.scale_violet },
	NotifyERRORIcon = { fg = theme.colors.red_dragon },
	NotifyWARNIcon = { fg = theme.colors.yellow },
	NotifyINFOIcon = { fg = theme.colors.knight_gold },
	NotifyDEBUGIcon = { fg = theme.colors.grey },
	NotifyTRACEIcon = { fg = theme.colors.scale_violet },
	NotifyERRORTitle = { fg = theme.colors.red_dragon },
	NotifyWARNTitle = { fg = theme.colors.yellow },
	NotifyINFOTitle = { fg = theme.colors.knight_gold },
	NotifyDEBUGTitle = { fg = theme.colors.grey },
	NotifyTRACETitle = { fg = theme.colors.scale_violet },

	-- Navic (LSP breadcrumbs)
	NavicIconsFile = { fg = theme.colors.knight_gold },
	NavicIconsModule = { fg = theme.colors.purple },
	NavicIconsNamespace = { fg = theme.colors.gauntlet_steel },
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
	NavicIconsArray = { fg = theme.colors.gauntlet_steel },
	NavicIconsObject = { fg = theme.colors.gauntlet_steel },
	NavicIconsKey = { fg = theme.colors.purple },
	NavicIconsNull = { fg = theme.colors.grey },
	NavicIconsEnumMember = { fg = theme.colors.cyan2 },
	NavicIconsStruct = { fg = theme.colors.gauntlet_steel },
	NavicIconsEvent = { fg = theme.colors.purple3 },
	NavicIconsOperator = { fg = theme.colors.punctuation },
	NavicIconsTypeParameter = { fg = theme.colors.cyan },
	NavicText = { fg = theme.colors.fg },
	NavicSeparator = { fg = theme.colors.border },

	-- Additional plugin support
	WhichKey = { fg = theme.colors.knight_gold },
	WhichKeyGroup = { fg = theme.colors.purple },
	WhichKeyDesc = { fg = theme.colors.fg },
	WhichKeySeperator = { fg = theme.colors.grey },
	WhichKeyFloat = { bg = theme.colors.inverse_fg },

	TelescopePromptBorder = { fg = theme.colors.border },
	TelescopeResultsBorder = { fg = theme.colors.border },
	TelescopePreviewBorder = { fg = theme.colors.border },
	TelescopeSelection = { bg = theme.colors.obsidian_surface },
	TelescopeMatching = { fg = theme.colors.gold_bright, bold = true },

	NoiceCursor = { link = "Cursor" },
	NoiceFormatProgressDone = { bg = theme.colors.knight_gold },
	NoiceFormatProgressTodo = { bg = theme.colors.gray3 },

	-- DAP UI
	DapUIScope = { fg = theme.colors.knight_gold },
	DapUIType = { fg = theme.colors.cyan },
	DapUIValue = { fg = theme.colors.orange },
	DapUIVariable = { fg = theme.colors.fg },
	DapUIBreakpointsPath = { fg = theme.colors.knight_gold },
	DapUIBreakpointsInfo = { fg = theme.colors.frost_pale },
	DapUIBreakpointsCurrentLine = { fg = theme.colors.gold_bright, bold = true },
}

-- Slots 4/12 finally get a real blue: the Blue Dragon is a canon
-- form, unlike on the Brewmaster and Earth Spirit themes where the
-- ANSI blue slots had to borrow from the green end.
theme.terminal_colors = {
	[0] = theme.colors.obsidian_deep,
	[1] = theme.colors.red_dragon,
	[2] = theme.colors.corrosive_deep,
	[3] = theme.colors.dragon_blood,
	[4] = theme.colors.frost_deep,
	[5] = theme.colors.scale_violet,
	[6] = theme.colors.frost_pale,
	[7] = theme.colors.plate_steel,
	[8] = theme.colors.steel_shadow,
	[9] = theme.colors.magma_bright,
	[10] = theme.colors.green_dragon,
	[11] = theme.colors.gold_bright,
	[12] = theme.colors.blue_dragon,
	[13] = theme.colors.purple3,
	[14] = theme.colors.cyan2,
	[15] = theme.colors.plate_bright,
}

return theme
