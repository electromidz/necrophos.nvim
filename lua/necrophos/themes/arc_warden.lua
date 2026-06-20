local theme = {}

-- ============================================================
-- Arc Warden Theme - "Zet the Primordial Fragment"
-- ============================================================
-- Philosophy: A splintered fragment of the Primordial Mind,
-- Zet is electromagnetic, cosmic, and celestial. His abilities
-- channel unstable plasma, magnetic barriers, spectral spirits,
-- and duplication energy. The palette feels like standing inside
-- a magnetic field surrounded by floating spark wraiths — cold,
-- electric, and ancient beyond time.
--
-- Not a "blue theme." A cosmic void where electric plasma,
-- magnetic barriers, spectral spirits, and duplication energy
-- converge into a single fractured consciousness.
-- ============================================================

theme.colors = {
	-- ==========================================================
	-- BASE PALETTE: Primordial Void
	-- ==========================================================

	-- The background is the void of space where Zet was flung
	-- after the Mad Moon shattered. The deepest cosmic black —
	-- not pure black, but infused with the faintest blue-violet
	-- residue of primordial energy.
	bg = "#0A0C14",              -- Primordial void (main background)
	inverse_fg = "#0A0C14",      -- Inverted for float surfaces
	accent_bg = "#10141E",       -- Astral plane (elevated surfaces)

	-- Foreground is pale moonlight — the color of the Mad Moon's
	-- glow reflected off ancient crystal. Cool-toned, crisp,
	-- and timeless, like Zet's eternal vigil.
	fg = "#C4C8D0",              -- Moonlight silver (primary text)

	-- Border is the magnetic distortion at the edge of
	-- Magnetic Field — a deep blue-gray that defines without
	-- dominating, like the boundary between void and energy.
	border = "#2A3448",          -- Magnetic boundary (borders)

	-- Link is Flux's electric plasma at its brightest — the
	-- unstable energy that rips through lone enemies. A vivid
	-- cyan-blue that crackles with barely-contained power.
	link = "#58B8E8",            -- Flux plasma (links)

	-- Accent is the convergence of all Arc Warden's energies:
	-- electric, magnetic, spectral, and cosmic. A luminous
	-- teal that sits at the intersection of ice and storm.
	accent = "#48A8C0",          -- Arcane convergence (accent)

	-- ==========================================================
	-- SYNTAX COLORS: Ability-Inspired
	-- ==========================================================

	-- FUNCTIONS: Flux — the unstable electric plasma. Functions
	-- are the active, executing core of code, like Flux's
	-- swirling energy ripping through targets. Electric blue
	-- crackles through every function call.
	blue = "#58B8E8",            -- Flux plasma (functions)

	-- KEYWORDS/STATEMENTS: Tempest Double — the cosmic
	-- duplication energy. Keywords control the flow of
	-- execution, like the Tempest Double mirrors every action.
	-- Deep cosmic indigo, the color of reality being copied.
	purple = "#9878D0",          -- Tempest indigo (keywords)

	-- CONSTANTS/NUMBERS: Magnetic Field — the protective
	-- barrier. Constants are fixed, immutable values protected
	-- from change, like allies sheltered inside the magnetic
	-- dome. Teal-cyan, stable and defensive.
	cyan = "#48B8A8",            -- Magnetic Field teal (types)

	-- STRINGS: Spark Wraith — the spectral spirit. Strings
	-- are the most "human" part of code, carrying meaning
	-- like a wraith carries its spectral form. Soft
	-- violet-blue, ghostly but readable.
	yellow = "#C8B870",          -- Runic gold (strings)

	-- TYPES: Primordial light — the original consciousness.
	-- Types are the foundational structures of code, like
	-- Zet's connection to the Primordial Mind. Warm teal,
	-- ancient and knowing.
	green = "#58B898",           -- Primordial teal (success)

	-- ERRORS/EXCEPTIONS: The Mad Moon's death — the explosion
	-- that shattered Zet. A warm violet that signals danger
	-- without the aggression of pure red.
	red = "#D87868",             -- Lunar fracture (errors)

	-- COMMENTS: Void residue — the faint energy left after
	-- the Mad Moon shattered. Muted blue-gray, present but
	-- unobtrusive, like memories of a destroyed world.
	grey = "#4A5468",            -- Void residue (comments)

	-- ==========================================================
	-- HERO-SPECIFIC COLORS: Arc Warden's palette
	-- ==========================================================

	-- === FLUX (Electric Plasma) ===
	-- "Swirling, volatile energy" — the core of Arc Warden's
	-- offensive power. Electric blue plasma that destabilizes
	-- and damages lone targets. The brightest blue in the palette.
	flux_plasma = "#58B8E8",     -- Unstable electric energy

	-- === MAGNETIC FIELD (Protective Barrier) ===
	-- "Circular distortion field of magnetic energy" — grants
	-- evasion and attack speed. A blue-cyan dome that bends
	-- space itself. Stable, protective, impenetrable.
	magnetic_barrier = "#48B8A8", -- Magnetic blue-cyan

	-- === SPARK WRAITH (Spectral Spirit) ===
	-- "Summons a Spark Wraith that patrols" — a ghostly entity
	-- that seeks and destroys. Spectral violet-cyan energy,
	-- ethereal and haunting, visible but untouchable.
	spark_spirit = "#8878C0",    -- Spectral violet-cyan

	-- === TEMPEST DOUBLE (Duplication) ===
	-- "Perfect electrical duplication" — creates an exact copy.
	-- Cosmic indigo-purple, the color of reality being folded
	-- and mirrored. Deep, mysterious, infinite.
	tempest_clone = "#7868B8",   -- Cosmic duplication energy

	-- === RUNIC INFUSION (Passive) ===
	-- "Runes of Power fuse to the Self" — permanent attribute
	-- gain. A soft gold glow, the color of accumulated power
	-- and growing strength.
	rune_gold = "#D8C068",       -- Runic accumulation

	-- === PRIMORDIAL LIGHT ===
	-- Zet's original form before the Mad Moon shattered.
	-- The infinite consciousness that once was whole. A pale,
	-- luminous blue-white — pure and ancient.
	primordial_light = "#A8C8E0", -- Original consciousness

	-- === CELESTIAL BODY ===
	-- The Mad Moon itself — the crystal prison Zet created.
	-- A soft blue glow, like moonlight through ancient crystal.
	celestial_moon = "#6888A8",  -- Mad Moon glow

	-- === VOID RESIDUE ===
	-- The faint energy left after the explosion that scattered
	-- Zet's fragments. Dark blue-gray, the color of cosmic dust.
	void_ash = "#3A4458",        -- Post-explosion residue

	-- === ELECTRIC ARC ===
	-- The "fleeting arc of consciousness" connecting Zet's
	-- fragments. A bright, thin cyan — fragile but persistent.
	arc_consciousness = "#68C8E0", -- Fleeting connection

	-- === ASTRAL DUST ===
	-- Cosmic particles floating in the void between abilities.
	-- Mid-tone blue-gray, the medium through which energy travels.
	astral_dust = "#586878",     -- Cosmic medium

	-- === PLASMA BRIGHT ===
	-- Flux at maximum intensity — the color of pure electrical
	-- discharge. Nearly white-blue, blinding and absolute.
	plasma_bright = "#B8E0F0",  -- Maximum flux intensity

	-- === SPECTRAL DIM ===
	-- Spark Wraith in its dormant state, before detecting a
	-- target. A dim violet, almost invisible against the void.
	spectral_dim = "#4A4868",   -- Dormant wraith energy

	-- === MAGNETIC SHIMMER ===
	-- The visual distortion at the edge of Magnetic Field.
	-- A teal-cyan shimmer, like heat haze over cold energy.
	magnetic_shimmer = "#58A8B0", -- Field edge distortion

	-- === TEMPEST SHADOW ===
	-- The Tempest Double's darker twin — the copy's shadow.
	-- Deep indigo, almost merging with the void background.
	tempest_shadow = "#2A2848", -- Duplication shadow

	-- ==========================================================
	-- SEMANTIC ALIASES: Group references that need stable names
	-- ==========================================================

	title = "#58B8E8",           -- Titles use Flux plasma
	parameter = "#B8BCC4",       -- Pale silver for parameters
	parchment = "#C4C8D0",       -- Primary text alias
	scroll_white = "#D4D8E0",    -- Bright parchment
	dark_red = "#802828",        -- Deep error color

	-- ==========================================================
	-- UI COLORS: Functional interface elements
	-- ==========================================================

	folded_bg = "#0E1018",
	cursor_fg = "#0A0C14",
	cursor_bg = "#58B8E8",       -- Flux plasma cursor
	line_number_fg = "#2A3448",
	line_number_active_fg = "#586878", -- Astral dust
	sign_add = "#58B898",        -- Primordial teal
	sign_change = "#D8C068",     -- Runic gold
	sign_delete = "#D87868",     -- Lunar fracture
	indent_guide = "#161C28",
	indent_guide_active = "#2A3448",
	visual = "#141C2A",
	match_paren = "#1E2838",
	error_red = "#D87868",
	quickfix_line = "#0E1018",
	white = "#E0E4EC",
	black = "#000000",

	-- Extended UI palette (minimal, only what's referenced)
	gray = "#161C28",
	gray3 = "#1E2838",
	gray4 = "#2A3448",
	gray6 = "#4A5468",
	green = "#58B898",
	cyan2 = "#48A8C0",
	purple3 = "#9878D0",
}

theme.groups = {
	-- Base groups
	Normal = { fg = theme.colors.fg, bg = theme.colors.bg },
	NormalFloat = { fg = theme.colors.fg, bg = theme.colors.inverse_fg },
	FloatBorder = { fg = theme.colors.border, bg = theme.colors.inverse_fg },
	FloatTitle = { fg = theme.colors.flux_plasma, bg = theme.colors.inverse_fg, bold = true },

	-- Syntax groups
	Comment = { fg = theme.colors.grey, italic = true },
	Constant = { fg = theme.colors.yellow },
	String = { fg = theme.colors.yellow },
	Character = { fg = theme.colors.yellow },
	Number = { fg = theme.colors.yellow },
	Boolean = { fg = theme.colors.yellow },
	Float = { fg = theme.colors.yellow },

	Identifier = { fg = theme.colors.cyan },
	Function = { fg = theme.colors.blue, bold = true },

	Statement = { fg = theme.colors.purple },
	Conditional = { fg = theme.colors.purple },
	Repeat = { fg = theme.colors.purple },
	Label = { fg = theme.colors.purple },
	Operator = { fg = theme.colors.fg },
	Keyword = { fg = theme.colors.purple, italic = true },
	Exception = { fg = theme.colors.red },

	PreProc = { fg = theme.colors.astral_dust },
	Include = { fg = theme.colors.purple },
	Define = { fg = theme.colors.astral_dust },
	Macro = { fg = theme.colors.astral_dust },
	PreCondit = { fg = theme.colors.astral_dust },

	Type = { fg = theme.colors.cyan },
	StorageClass = { fg = theme.colors.purple },
	Structure = { fg = theme.colors.astral_dust },
	Typedef = { fg = theme.colors.cyan },

	Special = { fg = theme.colors.flux_plasma },
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
	PmenuSel = { fg = theme.colors.inverse_fg, bg = theme.colors.flux_plasma, bold = true },
	PmenuSbar = { bg = theme.colors.gray3 },
	PmenuThumb = { bg = theme.colors.border },

	StatusLine = { fg = theme.colors.fg, bg = theme.colors.inverse_fg },
	StatusLineNC = { fg = theme.colors.grey, bg = theme.colors.inverse_fg },
	WinSeparator = { fg = theme.colors.border },
	VertSplit = { fg = theme.colors.border },

	TabLine = { fg = theme.colors.grey, bg = theme.colors.inverse_fg },
	TabLineSel = { fg = theme.colors.flux_plasma, bg = theme.colors.bg, bold = true },
	TabLineFill = { bg = theme.colors.inverse_fg },

	Title = { fg = theme.colors.title, bold = true },
	Question = { fg = theme.colors.accent },
	ModeMsg = { fg = theme.colors.flux_plasma },
	MoreMsg = { fg = theme.colors.flux_plasma },

	-- Diagnostic groups
	DiagnosticError = { fg = theme.colors.red },
	DiagnosticWarn = { fg = theme.colors.yellow },
	DiagnosticInfo = { fg = theme.colors.flux_plasma },
	DiagnosticHint = { fg = theme.colors.accent },
	DiagnosticUnderlineError = { sp = theme.colors.red, undercurl = true },
	DiagnosticUnderlineWarn = { sp = theme.colors.yellow, undercurl = true },
	DiagnosticUnderlineInfo = { sp = theme.colors.flux_plasma, undercurl = true },
	DiagnosticUnderlineHint = { sp = theme.colors.accent, undercurl = true },

	-- Git groups
	DiffAdd = { fg = theme.colors.bg, bg = theme.colors.magnetic_barrier },
	DiffChange = { fg = theme.colors.bg, bg = theme.colors.rune_gold },
	DiffDelete = { fg = theme.colors.bg, bg = theme.colors.red },
	DiffText = { fg = theme.colors.bg, bg = theme.colors.flux_plasma },

	gitcommitSummary = { fg = theme.colors.green, bold = true },
	gitcommitBranch = { fg = theme.colors.flux_plasma },

	-- LSP groups
	LspReferenceText = { bg = theme.colors.visual },
	LspReferenceRead = { bg = theme.colors.visual },
	LspReferenceWrite = { bg = theme.colors.match_paren, bold = true },
	LspSignatureActiveParameter = { fg = theme.colors.flux_plasma, bold = true },

	-- Tree-sitter groups
	["@comment"] = { link = "Comment" },
	["@string"] = { link = "String" },
	["@string.special"] = { fg = theme.colors.astral_dust },
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
	["@structure"] = { fg = theme.colors.astral_dust },
	["@namespace"] = { fg = theme.colors.astral_dust },

	["@variable"] = { fg = theme.colors.fg },
	["@variable.builtin"] = { fg = theme.colors.yellow, italic = true },
	["@constant"] = { fg = theme.colors.yellow },
	["@constant.builtin"] = { fg = theme.colors.yellow, bold = true },
	["@property"] = { fg = theme.colors.cyan2 },

	["@operator"] = { fg = theme.colors.fg },
	["@punctuation.delimiter"] = { fg = theme.colors.border },
	["@punctuation.bracket"] = { fg = theme.colors.fg },
	["@punctuation.special"] = { fg = theme.colors.flux_plasma },

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
	["@text.note"] = { fg = theme.colors.accent },
	["@text.warning"] = { fg = theme.colors.yellow },
	["@text.danger"] = { fg = theme.colors.red },

	-- Markdown / markup groups
	["@markup.heading"] = { fg = theme.colors.title, bold = true },
	["@markup.heading.1"] = { fg = theme.colors.flux_plasma, bold = true },
	["@markup.heading.2"] = { fg = theme.colors.magnetic_barrier, bold = true },
	["@markup.heading.3"] = { fg = theme.colors.spark_spirit, bold = true },
	["@markup.heading.4"] = { fg = theme.colors.blue, bold = true },
	["@markup.heading.5"] = { fg = theme.colors.purple, bold = true },
	["@markup.heading.6"] = { fg = theme.colors.grey, bold = true },
	["@markup.link"] = { fg = theme.colors.link, underline = true },
	["@markup.link.label"] = { fg = theme.colors.cyan },
	["@markup.link.url"] = { fg = theme.colors.blue, underline = true },
	["@markup.list"] = { fg = theme.colors.flux_plasma },
	["@markup.list.checked"] = { fg = theme.colors.green },
	["@markup.list.unchecked"] = { fg = theme.colors.grey },
	["@markup.raw"] = { fg = theme.colors.yellow },
	["@markup.raw.block"] = { fg = theme.colors.yellow },
	["@markup.quote"] = { fg = theme.colors.grey, italic = true },
	["@markup.math"] = { fg = theme.colors.flux_plasma },
	["@markup.environment"] = { fg = theme.colors.astral_dust },
	["@markup.environment.name"] = { fg = theme.colors.flux_plasma },

	-- Search and visual
	Search = { fg = theme.colors.bg, bg = theme.colors.flux_plasma },
	IncSearch = { fg = theme.colors.bg, bg = theme.colors.arc_consciousness },
	CurSearch = { link = "IncSearch" },
	Substitute = { fg = theme.colors.bg, bg = theme.colors.magnetic_shimmer },

	Visual = { bg = theme.colors.visual },
	VisualNOS = { bg = theme.colors.visual, italic = true },
	MatchParen = { fg = theme.colors.flux_plasma, bg = theme.colors.match_paren, bold = true },

	-- Cursor
	Cursor = { fg = theme.colors.cursor_fg, bg = theme.colors.cursor_bg },
	lCursor = { link = "Cursor" },
	CursorIM = { link = "Cursor" },

	-- Spell
	SpellBad = { sp = theme.colors.red, undercurl = true },
	SpellCap = { sp = theme.colors.flux_plasma, undercurl = true },
	SpellLocal = { sp = theme.colors.magnetic_barrier, undercurl = true },
	SpellRare = { sp = theme.colors.spark_spirit, undercurl = true },

	-- Special syntax
	Whitespace = { fg = theme.colors.gray4 },
	NonText = { fg = theme.colors.gray4 },
	Conceal = { fg = theme.colors.grey },
	SpecialKey = { fg = theme.colors.grey },

	-- Quickfix
	QuickFixLine = { bg = theme.colors.quickfix_line },
	qfLineNr = { fg = theme.colors.flux_plasma },

	-- Wild menu
	WildMenu = { fg = theme.colors.inverse_fg, bg = theme.colors.flux_plasma },

	-- Directory
	Directory = { fg = theme.colors.flux_plasma },

	-- Msg area
	ErrorMsg = { fg = theme.colors.red, bold = true },
	WarningMsg = { fg = theme.colors.yellow },
	InfoMsg = { fg = theme.colors.flux_plasma },
	HintMsg = { fg = theme.colors.accent },

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
	diffFile = { fg = theme.colors.flux_plasma },
	diffNewFile = { fg = theme.colors.green },
	diffOldFile = { fg = theme.colors.red },
	diffLine = { fg = theme.colors.purple },

	-- Neovim specific
	NvimInternalError = { fg = theme.colors.white, bg = theme.colors.dark_red },
	WinBar = { fg = theme.colors.flux_plasma, bold = true },
	WinBarNC = { fg = theme.colors.grey },

	-- Indent guides
	IndentBlanklineChar = { fg = theme.colors.indent_guide },
	IndentBlanklineContextChar = { fg = theme.colors.indent_guide_active },

	-- Notify highlights
	NotifyERRORBorder = { fg = theme.colors.red },
	NotifyWARNBorder = { fg = theme.colors.yellow },
	NotifyINFOBorder = { fg = theme.colors.flux_plasma },
	NotifyDEBUGBorder = { fg = theme.colors.grey },
	NotifyTRACEBorder = { fg = theme.colors.purple },
	NotifyERRORIcon = { fg = theme.colors.red },
	NotifyWARNIcon = { fg = theme.colors.yellow },
	NotifyINFOIcon = { fg = theme.colors.flux_plasma },
	NotifyDEBUGIcon = { fg = theme.colors.grey },
	NotifyTRACEIcon = { fg = theme.colors.purple },
	NotifyERRORTitle = { fg = theme.colors.red },
	NotifyWARNTitle = { fg = theme.colors.yellow },
	NotifyINFOTitle = { fg = theme.colors.flux_plasma },
	NotifyDEBUGTitle = { fg = theme.colors.grey },
	NotifyTRACETitle = { fg = theme.colors.purple },

	-- Navic (LSP breadcrumbs)
	NavicIconsFile = { fg = theme.colors.flux_plasma },
	NavicIconsModule = { fg = theme.colors.purple },
	NavicIconsNamespace = { fg = theme.colors.astral_dust },
	NavicIconsPackage = { fg = theme.colors.yellow },
	NavicIconsClass = { fg = theme.colors.cyan },
	NavicIconsMethod = { fg = theme.colors.blue },
	NavicIconsProperty = { fg = theme.colors.cyan2 },
	NavicIconsField = { fg = theme.colors.cyan2 },
	NavicIconsConstructor = { fg = theme.colors.cyan },
	NavicIconsEnum = { fg = theme.colors.cyan },
	NavicIconsInterface = { fg = theme.colors.cyan },
	NavicIconsFunction = { fg = theme.colors.blue },
	NavicIconsVariable = { fg = theme.colors.fg },
	NavicIconsConstant = { fg = theme.colors.yellow },
	NavicIconsString = { fg = theme.colors.yellow },
	NavicIconsNumber = { fg = theme.colors.yellow },
	NavicIconsBoolean = { fg = theme.colors.yellow },
	NavicIconsArray = { fg = theme.colors.astral_dust },
	NavicIconsObject = { fg = theme.colors.astral_dust },
	NavicIconsKey = { fg = theme.colors.purple },
	NavicIconsNull = { fg = theme.colors.grey },
	NavicIconsEnumMember = { fg = theme.colors.cyan2 },
	NavicIconsStruct = { fg = theme.colors.astral_dust },
	NavicIconsEvent = { fg = theme.colors.purple3 },
	NavicIconsOperator = { fg = theme.colors.fg },
	NavicIconsTypeParameter = { fg = theme.colors.cyan },
	NavicText = { fg = theme.colors.fg },
	NavicSeparator = { fg = theme.colors.border },

	-- Additional plugin support
	WhichKey = { fg = theme.colors.flux_plasma },
	WhichKeyGroup = { fg = theme.colors.purple },
	WhichKeyDesc = { fg = theme.colors.fg },
	WhichKeySeperator = { fg = theme.colors.grey },
	WhichKeyFloat = { bg = theme.colors.inverse_fg },

	TelescopePromptBorder = { fg = theme.colors.border },
	TelescopeResultsBorder = { fg = theme.colors.border },
	TelescopePreviewBorder = { fg = theme.colors.border },
	TelescopeSelection = { bg = theme.colors.visual },
	TelescopeMatching = { fg = theme.colors.flux_plasma, bold = true },

	NoiceCursor = { link = "Cursor" },
	NoiceFormatProgressDone = { bg = theme.colors.flux_plasma },
	NoiceFormatProgressTodo = { bg = theme.colors.gray3 },

	-- DAP UI
	DapUIScope = { fg = theme.colors.flux_plasma },
	DapUIType = { fg = theme.colors.cyan },
	DapUIValue = { fg = theme.colors.yellow },
	DapUIVariable = { fg = theme.colors.fg },
	DapUIBreakpointsPath = { fg = theme.colors.flux_plasma },
	DapUIBreakpointsInfo = { fg = theme.colors.accent },
	DapUIBreakpointsCurrentLine = { fg = theme.colors.flux_plasma, bold = true },
}

theme.terminal_colors = {
	[0] = theme.colors.void_ash,
	[1] = theme.colors.red,
	[2] = theme.colors.green,
	[3] = theme.colors.rune_gold,
	[4] = theme.colors.flux_plasma,
	[5] = theme.colors.purple,
	[6] = theme.colors.magnetic_barrier,
	[7] = theme.colors.parchment,
	[8] = theme.colors.astral_dust,
	[9] = theme.colors.red,
	[10] = theme.colors.green,
	[11] = theme.colors.rune_gold,
	[12] = theme.colors.arc_consciousness,
	[13] = theme.colors.spark_spirit,
	[14] = theme.colors.magnetic_shimmer,
	[15] = theme.colors.scroll_white,
}

return theme
