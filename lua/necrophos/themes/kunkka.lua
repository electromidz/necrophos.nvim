-- local M = {}
--
-- M.name = "kunkka"
--
-- M.colors = {
-- 	fg = "#a9d5c4",
-- 	inverse_fg = "#29332f",
-- 	-- bg = "#0f191f",
-- 	bg = "#565f89",
-- 	accent_bg = "#0b151b",
-- 	link = "#5fb950",
-- 	accent = "#61ff00",
-- 	border = "#1174b1",
-- 	-- Additional colors for syntax highlighting
-- 	red = "#ff6b6b",
-- 	orange = "#ffa347",
-- 	yellow = "#ffdd59",
-- 	green = "#5fb950",
-- 	-- cyan = "#48d1cc",
-- 	cyan = "#00B7B7",
-- 	blue = "#1174b1",
-- 	purple = "#a162e8",
-- 	grey = "#5c6370",
-- }
--
-- return M
--
local theme = {}

theme.colors = {
	-- Base colors - Ocean and naval themes
	fg = "#c7d1d9", -- Misty sea foam
	inverse_fg = "#1a2a3a", -- Deep ocean depth
	bg = "#0a1a2a", -- Midnight blue ocean
	accent_bg = "#051220", -- Abyssal dark blue
	link = "#4a90e2", -- Bright ocean blue
	accent = "#00a8ff", -- Torrent blue
	border = "#1e6fa3", -- Ship wood borders

	-- Syntax highlighting - Nautical theme
	red = "#ff6b6b", -- Blood red from battles
	orange = "#ffa347", -- Sunset on the sea
	yellow = "#ffdd59", -- Treasure gold
	green = "#5fb950", -- Seaweed green
	cyan = "#00B7B7", -- Crystal blue waters
	blue = "#1e6fa3", -- Deep ocean blue
	purple = "#7d5bbe", -- X Marks the Spot magic
	grey = "#5c6370", -- Storm clouds

	-- Kunkka-specific colors
	tide_blue = "#00c8ff", -- Tidebringer effect
	ship_brown = "#8b7355", -- Ship deck
	ghost_green = "#61ff00", -- Ghost Ship glow
	cannon_red = "#ff4757", -- Cannon fire
}

theme.groups = {
	-- Base groups - Oceanic feel
	Normal = { fg = theme.colors.fg, bg = theme.colors.bg },
	NormalFloat = { fg = theme.colors.fg, bg = theme.colors.accent_bg },
	FloatBorder = { fg = theme.colors.border, bg = theme.colors.accent_bg },

	-- Syntax groups with naval theme
	Comment = { fg = theme.colors.grey, italic = true }, -- Old sea maps text
	Constant = { fg = theme.colors.orange }, -- Treasure constants
	String = { fg = theme.colors.yellow }, -- Golden strings
	Character = { fg = theme.colors.yellow },
	Number = { fg = theme.colors.orange }, -- Treasure counts
	Boolean = { fg = theme.colors.orange },
	Float = { fg = theme.colors.orange },

	Identifier = { fg = theme.colors.cyan }, -- Ocean identifiers
	Function = { fg = theme.colors.tide_blue, bold = true }, -- Tidebringer functions!

	Statement = { fg = theme.colors.purple }, -- Command statements
	Conditional = { fg = theme.colors.purple }, -- X Marks the Spot conditionals
	Repeat = { fg = theme.colors.purple },
	Label = { fg = theme.colors.purple },
	Operator = { fg = theme.colors.blue }, -- Naval operations
	Keyword = { fg = theme.colors.purple, italic = true }, -- Magical keywords
	Exception = { fg = theme.colors.cannon_red }, -- Battle exceptions

	PreProc = { fg = theme.colors.ship_brown }, -- Ship preparations
	Include = { fg = theme.colors.purple },
	Define = { fg = theme.colors.ship_brown },
	Macro = { fg = theme.colors.ship_brown },
	PreCondit = { fg = theme.colors.ship_brown },

	Type = { fg = theme.colors.cyan }, -- Ocean types
	StorageClass = { fg = theme.colors.purple },
	Structure = { fg = theme.colors.ship_brown }, -- Ship structure
	Typedef = { fg = theme.colors.cyan },

	Special = { fg = theme.colors.tide_blue }, -- Special tide effects
	SpecialChar = { fg = theme.colors.cannon_red },
	Tag = { fg = theme.colors.blue },
	Delimiter = { fg = theme.colors.fg },
	SpecialComment = { fg = theme.colors.grey },
	Debug = { fg = theme.colors.cannon_red },

	-- UI groups - Ship interface
	LineNr = { fg = theme.colors.grey },
	CursorLineNr = { fg = theme.colors.tide_blue, bold = true }, -- Active line like Tidebringer ready
	CursorLine = { bg = theme.colors.accent_bg },
	ColorColumn = { bg = theme.colors.accent_bg },

	SignColumn = { bg = theme.colors.bg },
	FoldColumn = { bg = theme.colors.bg },

	Pmenu = { fg = theme.colors.fg, bg = theme.colors.accent_bg },
	PmenuSel = { fg = theme.colors.bg, bg = theme.colors.tide_blue }, -- Selected like Tidebringer active
	PmenuSbar = { bg = theme.colors.accent_bg },
	PmenuThumb = { bg = theme.colors.border },

	StatusLine = { fg = theme.colors.fg, bg = theme.colors.accent_bg },
	StatusLineNC = { fg = theme.colors.grey, bg = theme.colors.accent_bg },
	WinSeparator = { fg = theme.colors.border }, -- Ship planks

	TabLine = { fg = theme.colors.grey, bg = theme.colors.accent_bg },
	TabLineSel = { fg = theme.colors.tide_blue, bg = theme.colors.bg, bold = true }, -- Active tab like Ghost Ship
	TabLineFill = { bg = theme.colors.accent_bg },

	-- Diagnostic groups - Battle warnings
	DiagnosticError = { fg = theme.colors.cannon_red }, -- Cannon misfire
	DiagnosticWarn = { fg = theme.colors.orange }, -- Storm warning
	DiagnosticInfo = { fg = theme.colors.tide_blue }, -- Tide information
	DiagnosticHint = { fg = theme.colors.ghost_green }, -- Ghost Ship hints

	-- Git groups - Naval changes
	DiffAdd = { fg = theme.colors.ghost_green }, -- Ghost Ship additions
	DiffChange = { fg = theme.colors.yellow }, -- Treasure changes
	DiffDelete = { fg = theme.colors.cannon_red }, -- Cannon deletions
	DiffText = { fg = theme.colors.tide_blue }, -- Tidebringer text

	-- LSP groups - Admiral's commands
	LspReferenceText = { bg = "#1a3a5a" }, -- Selected text like marked with X
	LspReferenceRead = { bg = "#1a3a5a" },
	LspReferenceWrite = { bg = "#1a3a5a" },

	-- Custom Kunkka groups
	KunkkaTidebringer = { fg = theme.colors.tide_blue, bold = true },
	KunkkaGhostShip = { fg = theme.colors.ghost_green, italic = true },
	KunkkaTorrent = { fg = theme.colors.cyan },
}

return theme
