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
	fg = "#c7d1d9",
	inverse_fg = "#1a2a3a",
	bg = "#0a1a2a",
	accent_bg = "#051220",
	link = "#4a90e2",
	accent = "#00a8ff",
	border = "#1e6fa3",

	-- Syntax highlighting
	red = "#ff6b6b",
	orange = "#ffa347",
	yellow = "#ffdd59",
	green = "#5fb950",
	cyan = "#00B7B7",
	blue = "#1e6fa3",
	purple = "#7d5bbe",
	grey = "#5c6370",

	-- Kunkka-specific colors
	tide_blue = "#00c8ff",
	ship_brown = "#8b7355",
	ghost_green = "#61ff00",
	cannon_red = "#ff4757",
}

theme.groups = {
	Normal = { fg = theme.colors.fg, bg = theme.colors.bg },
	NormalFloat = { fg = theme.colors.fg, bg = theme.colors.accent_bg },
	FloatBorder = { fg = theme.colors.border, bg = theme.colors.accent_bg },

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
	SpecialComment = { fg = theme.colors.grey },
	Debug = { fg = theme.colors.cannon_red },

	LineNr = { fg = theme.colors.grey },
	CursorLineNr = { fg = theme.colors.tide_blue, bold = true },
	CursorLine = { bg = theme.colors.accent_bg },
	ColorColumn = { bg = theme.colors.accent_bg },

	SignColumn = { bg = theme.colors.bg },
	FoldColumn = { bg = theme.colors.bg },

	Pmenu = { fg = theme.colors.fg, bg = theme.colors.accent_bg },
	PmenuSel = { fg = theme.colors.bg, bg = theme.colors.tide_blue },
	PmenuSbar = { bg = theme.colors.accent_bg },
	PmenuThumb = { bg = theme.colors.border },

	StatusLine = { fg = theme.colors.fg, bg = theme.colors.accent_bg },
	StatusLineNC = { fg = theme.colors.grey, bg = theme.colors.accent_bg },
	WinSeparator = { fg = theme.colors.border },

	TabLine = { fg = theme.colors.grey, bg = theme.colors.accent_bg },
	TabLineSel = { fg = theme.colors.tide_blue, bg = theme.colors.bg, bold = true },
	TabLineFill = { bg = theme.colors.accent_bg },

	DiagnosticError = { fg = theme.colors.cannon_red },
	DiagnosticWarn = { fg = theme.colors.orange },
	DiagnosticInfo = { fg = theme.colors.tide_blue },
	DiagnosticHint = { fg = theme.colors.ghost_green },

	DiffAdd = { fg = theme.colors.ghost_green },
	DiffChange = { fg = theme.colors.yellow },
	DiffDelete = { fg = theme.colors.cannon_red },
	DiffText = { fg = theme.colors.tide_blue },

	LspReferenceText = { bg = "#1a3a5a" },
	LspReferenceRead = { bg = "#1a3a5a" },
	LspReferenceWrite = { bg = "#1a3a5a" },
}

return theme
