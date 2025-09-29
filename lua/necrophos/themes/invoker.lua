local theme = {}
-- theme.colors = {
-- 	-- Base colors - Using your new palette
-- 	fg = "#e8e6e3", -- Ivory parchment
-- 	inverse_fg = "#13212d", -- Dark blue-black from your palette
-- 	bg = "#0a0c1a", -- Cosmic night
-- 	accent_bg = "#13212d", -- Same as bg for consistency
-- 	link = "#3093A1", -- Teal blue from your palette
-- 	accent = "#54A0A7", -- Light teal accent
-- 	border = "#2B7688", -- Medium blue border
--
-- 	-- Syntax highlighting - Mapped from your palette
-- 	red = "#878171", -- Warm brown as "red" (softer)
-- 	orange = "#878171", -- Warm brown as "orange"
-- 	yellow = "#c4c7ca", -- Light grey as "yellow"
-- 	green = "#3093A1", -- Teal as "green"
-- 	cyan = "#54A0A7", -- Light teal as "cyan"
-- 	blue = "#487A86", -- Steel blue as "blue"
-- 	purple = "#626e78", -- Grey-purple as "purple"
-- 	grey = "#515A5A", -- Dark grey from your palette
--
-- 	quas = "#00e5ff", -- Icy blue
-- 	-- Wex (Lightning/Purple)
-- 	wex = "#b967ff", -- Electric purple
-- 	-- Exort (Fire/Orange)
-- 	exort = "#ff6b35", -- Fiery orange
-- 	-- Specials
-- 	invoke = "#ffd700", -- Golden invoke glow
-- 	forge_spirit = "#ffaa00", -- Spirit orange
-- }
theme.colors = {
	-- Base colors - Enhanced for contrast and theme
	fg = "#E8E6E3", -- Ivory parchment (kept, it's perfect)
	inverse_fg = "#0A0C1A", -- Now your dark bg color
	bg = "#0A0C1A", -- Cosmic night (kept)
	accent_bg = "#131B2E", -- A richer, deeper blue for surfaces/cards
	link = "#48C4D4", -- A brighter, more vibrant teal for better link visibility
	accent = "#54A0A7", -- Light teal accent (kept)
	border = "#2B7688", -- Medium blue border (kept)

	-- Syntax highlighting - Re-mapped for clarity and contrast
	-- These now follow standard color meanings but are tinted with your theme.
	red = "#FF6B7A", -- A clear, vibrant red for errors (fits Exort's fire)
	orange = "#FF9D5C", -- A distinct orange for warnings/constants
	yellow = "#FFE073", -- A proper yellow for alerts/functions (good contrast)
	green = "#5AC18D", -- A fresh green for success/strings (complements the teals)
	cyan = "#54A0A7", -- Light teal as cyan (kept, ideal)
	blue = "#487A86", -- Steel blue as blue (kept, works well)
	purple = "#A68EE3", -- A softer, more mystical purple for keywords
	grey = "#626E78", -- Muted steel for comments/inactive text

	-- Invoker Elements (These are perfect, no changes needed)
	quas = "#00E5FF", -- Icy blue
	wex = "#B967FF", -- Electric purple
	exort = "#FF6B35", -- Fiery orange
	invoke = "#FFD700", -- Golden invoke glow
	forge_spirit = "#FFAA00", -- Spirit orange
}

theme.groups = {
	-- Base groups - Cosmic night theme
	Normal = { fg = theme.colors.fg, bg = theme.colors.bg },
	NormalFloat = { fg = theme.colors.fg, bg = theme.colors.inverse_fg },
	FloatBorder = { fg = theme.colors.border, bg = theme.colors.inverse_fg },

	-- Syntax groups - Invoker's Magic System
	Comment = { fg = theme.colors.grey, italic = true }, -- Ancient scrolls text
	Constant = { fg = theme.colors.exort, bold = true }, -- Fire constants
	String = { fg = theme.colors.invoke }, -- Golden incantations
	Character = { fg = theme.colors.invoke },
	Number = { fg = theme.colors.exort }, -- Fiery numbers
	Boolean = { fg = theme.colors.exort },
	Float = { fg = theme.colors.exort },

	Identifier = { fg = theme.colors.quas }, -- Icy identifiers
	Function = { fg = theme.colors.forge_spirit, bold = true }, -- Forge spirit functions!

	Statement = { fg = theme.colors.wex }, -- Lightning statements
	Conditional = { fg = theme.colors.wex, italic = true }, -- If/else like spell conditions
	Repeat = { fg = theme.colors.wex },
	Label = { fg = theme.colors.wex },
	Operator = { fg = theme.colors.cyan }, -- Spell combinators
	Keyword = { fg = theme.colors.wex, italic = true }, -- Magical keywords
	Exception = { fg = theme.colors.red }, -- Spell failures

	PreProc = { fg = theme.colors.purple }, -- Pre-incantations
	Include = { fg = theme.colors.wex },
	Define = { fg = theme.colors.purple },
	Macro = { fg = theme.colors.purple },
	PreCondit = { fg = theme.colors.purple },

	Type = { fg = theme.colors.quas }, -- Icy types
	StorageClass = { fg = theme.colors.wex },
	Structure = { fg = theme.colors.purple },
	Typedef = { fg = theme.colors.quas },

	Special = { fg = theme.colors.invoke }, -- Special invoke effects
	SpecialChar = { fg = theme.colors.exort },
	Tag = { fg = theme.colors.blue },
	Delimiter = { fg = theme.colors.fg },
	SpecialComment = { fg = theme.colors.grey, bold = true }, -- Important scroll notes
	Debug = { fg = theme.colors.exort },

	-- UI groups - Invoker's Interface
	LineNr = { fg = theme.colors.grey },
	CursorLineNr = { fg = theme.colors.invoke, bold = true }, -- Active line like invoked spell
	CursorLine = { bg = theme.colors.inverse_fg },
	ColorColumn = { bg = theme.colors.inverse_fg },

	SignColumn = { bg = theme.colors.bg },
	FoldColumn = { bg = theme.colors.bg },

	Pmenu = { fg = theme.colors.fg, bg = theme.colors.inverse_fg },
	PmenuSel = { fg = theme.colors.bg, bg = theme.colors.invoke }, -- Selected like invoked spell
	PmenuSbar = { bg = theme.colors.inverse_fg },
	PmenuThumb = { bg = theme.colors.border },

	StatusLine = { fg = theme.colors.fg, bg = theme.colors.inverse_fg },
	StatusLineNC = { fg = theme.colors.grey, bg = theme.colors.inverse_fg },
	WinSeparator = { fg = theme.colors.border }, -- Spell boundaries

	TabLine = { fg = theme.colors.grey, bg = theme.colors.inverse_fg },
	TabLineSel = { fg = theme.colors.invoke, bg = theme.colors.bg, bold = true }, -- Active tab like ready spell
	TabLineFill = { bg = theme.colors.inverse_fg },

	-- Diagnostic groups - Spell feedback
	DiagnosticError = { fg = theme.colors.exort }, -- Fire errors
	DiagnosticWarn = { fg = theme.colors.forge_spirit }, -- Spirit warnings
	DiagnosticInfo = { fg = theme.colors.quas }, -- Ice information
	DiagnosticHint = { fg = theme.colors.wex }, -- Lightning hints

	DiagnosticVirtualTextError = { fg = theme.colors.exort, bg = "#1a0a0a" },
	DiagnosticVirtualTextWarn = { fg = theme.colors.forge_spirit, bg = "#1a140a" },
	DiagnosticVirtualTextInfo = { fg = theme.colors.quas, bg = "#0a0c1a" },
	DiagnosticVirtualTextHint = { fg = theme.colors.wex, bg = "#0a0a1a" },

	-- Git groups - Spell modifications
	DiffAdd = { fg = theme.colors.quas }, -- Ice additions
	DiffChange = { fg = theme.colors.wex }, -- Lightning changes
	DiffDelete = { fg = theme.colors.exort }, -- Fire deletions
	DiffText = { fg = theme.colors.invoke }, -- Golden diff text

	-- LSP groups - Invoker's knowledge
	LspReferenceText = { bg = "#1a2a3a" }, -- Text references
	LspReferenceRead = { bg = "#1a2a3a" },
	LspReferenceWrite = { bg = "#2a1a3a" },

	-- TreeSitter groups - Natural magic
	["@comment"] = { link = "Comment" },
	["@keyword"] = { link = "Keyword" },
	["@keyword.function"] = { fg = theme.colors.wex, bold = true },
	["@function"] = { fg = theme.colors.forge_spirit, bold = true },
	["@function.builtin"] = { fg = theme.colors.exort, bold = true },
	["@type"] = { fg = theme.colors.quas },
	["@string"] = { fg = theme.colors.invoke },
	["@number"] = { fg = theme.colors.exort },
	["@constant"] = { fg = theme.colors.exort, bold = true },

	-- Custom Invoker spell groups
	QuasSpell = { fg = theme.colors.quas, bold = true },
	WexSpell = { fg = theme.colors.wex, italic = true },
	ExortSpell = { fg = theme.colors.exort, bold = true },
	InvokedSpell = { fg = theme.colors.invoke, bg = "#1a1a2a", bold = true },

	-- Spell effects
	ColdSnap = { fg = theme.colors.quas, bg = "#0a1a2a" },
	GhostWalk = { fg = theme.colors.wex, bg = "#1a0a2a" },
	SunStrike = { fg = theme.colors.exort, bg = "#2a0a0a" },

	-- Navigation and search
	Search = { fg = theme.colors.bg, bg = theme.colors.invoke }, -- Golden search highlights
	IncSearch = { fg = theme.colors.bg, bg = theme.colors.exort }, -- Fiery incremental search
	CurSearch = { fg = theme.colors.bg, bg = theme.colors.quas }, -- Icy current search

	-- Visual mode
	Visual = { bg = "#1a2a3a" }, -- Selection like spell area
	VisualNOS = { bg = "#1a1a2a" },

	-- Cursor
	Cursor = { fg = theme.colors.bg, bg = theme.colors.invoke }, -- Golden cursor
	CursorIM = { fg = theme.colors.bg, bg = theme.colors.wex }, -- Purple IME cursor
	CursorColumn = { bg = theme.colors.inverse_fg },

	-- Spell checking
	SpellBad = { undercurl = true, sp = theme.colors.exort }, -- Fire undercurl for bad spells
	SpellCap = { undercurl = true, sp = theme.colors.wex }, -- Purple for caps
	SpellLocal = { undercurl = true, sp = theme.colors.quas }, -- Blue for local
	SpellRare = { undercurl = true, sp = theme.colors.invoke }, -- Gold for rare

	-- Whitespace
	Whitespace = { fg = "#2a2a3a" }, -- Subtle cosmic dust
	EndOfBuffer = { fg = theme.colors.inverse_fg },

	-- Quickfix
	qfLineNr = { fg = theme.colors.wex },
	qfFileName = { fg = theme.colors.quas },
}

return theme
