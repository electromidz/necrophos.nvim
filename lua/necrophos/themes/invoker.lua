local theme = {}

theme.colors = {
	-- ==========================================================
	-- BASE PALETTE: Quas + Wex + Exort Foundation
	-- ==========================================================

	-- The background represents the cosmic void Invoker commands:
	-- a deep, dark blue-black like the space between stars.
	-- Inspired by Ghost Walk's ethereal invisibility and the
	-- cosmic darkness that precedes an Invoker combo.
	bg = "#0B0D17",            -- Cosmic void (main background)
	inverse_fg = "#0B0D17",    -- Inverted for float surfaces
	accent_bg = "#131828",     -- Astral plane (elevated surfaces)

	-- Foreground is pale lunar silver — cool-toned to harmonize
	-- with the ice/storm/fire trinity without leaning too warm
	-- or too cold. Reads as "ancient parchment by moonlight."
	fg = "#C8C4BC",            -- Pale lunar silver (primary text)

	-- Border uses the storm element's mid-tone: the silver-blue
	-- of wind and Tornado's funnel. Visible but not dominant.
	border = "#3A4A5E",        -- Tornado silver-blue (borders)

	-- Link color is the purest Quas expression: the bright
	-- glacial cyan of Cold Snap's frozen pulse.
	link = "#6CC8E0",         -- Cold Snap frost (links)

	-- Accent is the arcane convergence of all three orbs:
	-- a luminous teal that sits between ice and storm.
	accent = "#5EB8C8",       -- Arcane convergence (accent)

	-- ==========================================================
	-- SYNTAX COLORS: Each ability inspires a syntax role
	-- ==========================================================

	-- FUNCTIONS: Quas — the ice orb. Functions are the cold,
	-- precise, structural backbone of code, like Quas's
	-- calculated冻冻冻 (frost) approach.
	blue = "#6CC8E0",         -- Quas glacial (functions)

	-- KEYWORDS/STATEMENTS: Wex — the storm orb. Keywords
	-- control flow and energy, like Wex's lightning-fast
	-- reactive storms. Electric violet pulses through them.
	purple = "#A87FD4",       -- Wex storm violet (keywords)

	-- CONSTANTS/NUMBERS: Exort — the fire orb. Constants
	-- are burning points of immutable truth, like Sun Strike's
	-- concentrated solar beam hitting a fixed coordinate.
	orange = "#E8A840",       -- Sun Strike solar (constants)

	-- STRINGS: Alacrity's enchanted gold. Strings are the
	-- most verbose, "human" part of code — warm, readable,
	-- carrying meaning like Alacrity's blessed text.
	yellow = "#D4B868",       -- Alacrity gold (strings)

	-- TYPES: The arcane mastery that unifies all three orbs.
	-- A cool teal that bridges Quas's ice and Wex's storm,
	-- representing the Scholar's understanding of all elements.
	cyan = "#5EC4B0",         -- Arcane mastery (types)

	-- IDENTIFIERS: Forge Spirit's electric orange. Variables
	-- are summoned into existence like Forge Spirits —
	-- temporary, functional, carrying the fire of Exort.
	red = "#E07848",          -- Forge Spirit ember (errors/deleted)

	-- COMMENTS: Ghost Walk's ethereal mist. Comments are
	-- invisible to the compiler, floating like Invoker
	-- when Ghost Walk is active — present but translucent.
	grey = "#4E5A68",         -- Ghost Walk mist (comments)

	-- OPERATORS: Deafening Blast's shockwave — the moment
	-- all three orbs combine. A bright, almost-white cyan
	-- that cuts through like a disarming wave.
	-- (Uses fg for operators; this is intentional)

	-- ==========================================================
	-- HERO-SPECIFIC COLORS: The Invoker palette
	-- ==========================================================

	-- === QUAS (Ice) Orb ===
	-- The Quas orb glows with a cold, glacial cyan —
	-- the color of pure ice magic, frozen and precise.
	quas_blue = "#88D4E8",         -- Quas orb glacial cyan

	-- === WEX (Storm) Orb ===
	-- The Wex orb crackles with electric violet energy —
	-- the color of contained lightning, wild and reactive.
	wex_purple = "#B088E0",        -- Wex orb storm violet

	-- === EXORT (Fire) Orb ===
	-- The Exort orb blazes with molten orange — the color
	-- of concentrated fire, destructive and absolute.
	exort_orange = "#E88040",      -- Exort orb molten amber

	-- === INVOKE ===
	-- The golden flash when all three orbs combine.
	-- Invoker's ultimate: the color of mastery itself.
	invoke_gold = "#F0D060",       -- Invoke golden flash

	-- === COLD SNAP (Quas) ===
	-- Rapid frozen stuns. The color is a bright, sharp
	-- cyan — like ice cracking under repeated impact.
	cold_snap_frost = "#A0E0F0",  -- Frozen stun pulse

	-- === GHOST WALK (Quas + Quas + Wex) ===
	-- Invoker turns invisible, leaving a trail of icy mist.
	-- A muted blue-gray that suggests presence without form.
	ghost_mist = "#5A6878",       -- Ethereal invisibility

	-- === TORNADO (Quas + Wex) ===
	-- A cyclone of ice and wind. The color is a silver-blue
	-- that suggests both frost and air in violent motion.
	tornado_wind = "#7898B0",     -- Cyclone silver-blue

	-- === E.M.P. (Wex + Wex) ===
	-- An electromagnetic pulse that burns mana. Deep, intense
	-- violet — the color of arcane energy detonating.
	emp_blast = "#7048B0",        -- Mana burn violet

	-- === ALACRITY (Wex + Exort) ===
	-- Grants attack speed and damage. A bright, enchanted
	-- gold — the color of blessed, accelerated power.
	alacrity_gold = "#E8C050",    -- Enchanted haste gold

	-- === CHAOS METEOR (Exort + Exort) ===
	-- A flaming meteor crashes down. The deepest fire color:
	-- molten red-orange, the heart of a dying star.
	chaos_meteor = "#D05830",     -- Molten impact red

	-- === SUN STRIKE (Exort + Exort) ===
	-- A beam of pure solar energy from the sky. The brightest
	-- fire color: white-gold, like looking at the sun.
	sun_strike = "#F8E878",      -- Solar beam gold

	-- === FORGE SPIRIT (Exort + Quas) ===
	-- Summons a fire elemental. Warm orange — the color of
	-- living embers given form and purpose.
	forge_spirit = "#E09048",     -- Ember summon orange

	-- === ICE WALL (Quas + Quas + Exort) ===
	-- A wall of freezing ice. The palest cyan in the palette —
	-- almost white, like deep glacial ice.
	ice_wall = "#A0D8E0",        -- Glacial barrier pale cyan

	-- === DEAFENING BLAST (Quas + Wex + Exort) ===
	-- All three orbs combine in a disarming shockwave. A bright
	-- purple-white — the color of arcane power at its peak.
	deafening_blast = "#C8A8F0", -- Arcane shockwave violet

	-- === ARCANE MASTERY ===
	-- The unified color of Invoker's full spellbook. A luminous
	-- teal that contains ice, storm, and fire in balance.
	arcane_teal = "#5EB8C8",     -- Triple orb convergence

	-- ==========================================================
	-- SEMANTIC ALIASES: Group references that need stable names
	-- ==========================================================

	cosmic_night = "#0B0D17",    -- Deep background alias
	cosmic_void = "#131828",     -- Surface background
	spell_effect = "#1A2540",    -- Spell casting areas
	storm_energy = "#2A3850",    -- Wex energy areas
	robe_fabric = "#8A7A6C",     -- Mage robe cloth (PreProc)
	parchment = "#C8C4BC",       -- Ancient scroll text
	scroll_white = "#D8D4CC",    -- Bright parchment
	title = "#88D4E8",          -- Titles use Quas cyan

	-- ==========================================================
	-- UI COLORS: Functional interface elements
	-- ==========================================================

	folded_bg = "#0E1220",
	cursor_fg = "#0B0D17",
	cursor_bg = "#88D4E8",       -- Quas cyan cursor
	line_number_fg = "#2A3850",
	line_number_active_fg = "#7898B0", -- Tornado wind
	sign_add = "#5EC4B0",        -- Arcane mastery green
	sign_change = "#E8C050",     -- Alacrity gold
	sign_delete = "#D05830",     -- Chaos meteor red
	indent_guide = "#1A2030",
	indent_guide_active = "#2A3850",
	visual = "#1A2540",
	match_paren = "#2A3048",
	error_red = "#D05830",
	quickfix_line = "#0E1220",
	parameter = "#B8B4AC",
	white = "#E8E4DC",
	black = "#000000",
	dark_red = "#802020",

	-- Extended UI palette (minimal, only what's referenced)
	gray = "#1A2030",
	gray3 = "#2A3048",
	gray4 = "#3A4A5E",
	gray6 = "#4E5A68",
	green = "#5EC4B0",
	cyan2 = "#5EB8C8",
	purple3 = "#B088E0",
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
	DiffAdd = { fg = theme.colors.bg, bg = theme.colors.arcane_teal },
	DiffChange = { fg = theme.colors.bg, bg = theme.colors.yellow },
	DiffDelete = { fg = theme.colors.bg, bg = theme.colors.exort_orange },
	DiffText = { fg = theme.colors.bg, bg = theme.colors.quas_blue },

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
	["@markup.heading"] = { fg = theme.colors.title, bold = true },
	["@markup.heading.1"] = { fg = theme.colors.quas_blue, bold = true },
	["@markup.heading.2"] = { fg = theme.colors.arcane_teal, bold = true },
	["@markup.heading.3"] = { fg = theme.colors.cyan, bold = true },
	["@markup.heading.4"] = { fg = theme.colors.blue, bold = true },
	["@markup.heading.5"] = { fg = theme.colors.wex_purple, bold = true },
	["@markup.heading.6"] = { fg = theme.colors.grey, bold = true },
	["@markup.link"] = { fg = theme.colors.link, underline = true },
	["@markup.link.label"] = { fg = theme.colors.cyan },
	["@markup.link.url"] = { fg = theme.colors.blue, underline = true },
	["@markup.list"] = { fg = theme.colors.quas_blue },
	["@markup.list.checked"] = { fg = theme.colors.quas_blue },
	["@markup.list.unchecked"] = { fg = theme.colors.grey },
	["@markup.raw"] = { fg = theme.colors.yellow },
	["@markup.raw.block"] = { fg = theme.colors.yellow },
	["@markup.quote"] = { fg = theme.colors.grey, italic = true },
	["@markup.math"] = { fg = theme.colors.invoke_gold },
	["@markup.environment"] = { fg = theme.colors.robe_fabric },
	["@markup.environment.name"] = { fg = theme.colors.quas_blue },
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
	[0] = theme.colors.cosmic_night,
	[1] = theme.colors.exort_orange,
	[2] = theme.colors.green,
	[3] = theme.colors.invoke_gold,
	[4] = theme.colors.quas_blue,
	[5] = theme.colors.wex_purple,
	[6] = theme.colors.arcane_teal,
	[7] = theme.colors.parchment,
	[8] = theme.colors.storm_energy,
	[9] = theme.colors.exort_orange,
	[10] = theme.colors.green,
	[11] = theme.colors.invoke_gold,
	[12] = theme.colors.quas_blue,
	[13] = theme.colors.wex_purple,
	[14] = theme.colors.arcane_teal,
	[15] = theme.colors.scroll_white,
}

return theme
