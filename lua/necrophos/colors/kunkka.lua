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
	fg = "#a9d5c4",
	inverse_fg = "#29332f",
	-- bg = "#0f191f",
	bg = "#565f89",
	accent_bg = "#0b151b",
	link = "#5fb950",
	accent = "#61ff00",
	border = "#1174b1",
	-- Additional colors for syntax highlighting
	red = "#ff6b6b",
	orange = "#ffa347",
	yellow = "#ffdd59",
	green = "#5fb950",
	-- cyan = "#48d1cc",
	cyan = "#00B7B7",
	blue = "#1174b1",
	purple = "#a162e8",
	grey = "#5c6370",
	order = "#cecacd",
}

theme.groups = {
	-- Base groups (same structure as theme1 with light colors)
	Normal = { fg = theme.colors.fg, bg = theme.colors.bg },
	NormalFloat = { fg = theme.colors.fg, bg = theme.colors.bg_dark },
	FloatBorder = { fg = theme.colors.border, bg = theme.colors.bg_dark },

	-- Syntax groups
	Comment = { fg = theme.colors.comment, italic = true },
	Constant = { fg = theme.colors.orange },
	String = { fg = theme.colors.yellow },
	Character = { fg = theme.colors.yellow },
	Number = { fg = theme.colors.orange },
	Boolean = { fg = theme.colors.orange },
	Float = { fg = theme.colors.orange },

	Identifier = { fg = theme.colors.cyan },
	Function = { fg = theme.colors.blue, bold = true },

	Statement = { fg = theme.colors.magenta },
	Conditional = { fg = theme.colors.magenta },
	Repeat = { fg = theme.colors.magenta },
	Label = { fg = theme.colors.magenta },
	Operator = { fg = theme.colors.purple },
	Keyword = { fg = theme.colors.magenta, italic = true },
	Exception = { fg = theme.colors.red },

	PreProc = { fg = theme.colors.purple },
	Include = { fg = theme.colors.magenta },
	Define = { fg = theme.colors.purple },
	Macro = { fg = theme.colors.purple },
	PreCondit = { fg = theme.colors.purple },

	Type = { fg = theme.colors.cyan },
	StorageClass = { fg = theme.colors.magenta },
	Structure = { fg = theme.colors.purple },
	Typedef = { fg = theme.colors.cyan },

	Special = { fg = theme.colors.blue },
	SpecialChar = { fg = theme.colors.red },
	Tag = { fg = theme.colors.blue },
	Delimiter = { fg = theme.colors.fg },
	SpecialComment = { fg = theme.colors.comment },
	Debug = { fg = theme.colors.red },

	-- UI groups
	LineNr = { fg = theme.colors.fg_gutter },
	CursorLineNr = { fg = theme.colors.fg },
	CursorLine = { bg = theme.colors.bg_highlight },
	ColorColumn = { bg = theme.colors.bg_highlight },

	SignColumn = { bg = theme.colors.bg },
	FoldColumn = { bg = theme.colors.bg },

	Pmenu = { fg = theme.colors.fg, bg = theme.colors.bg_dark },
	PmenuSel = { fg = theme.colors.bg, bg = theme.colors.blue },
	PmenuSbar = { bg = theme.colors.bg_dark },
	PmenuThumb = { bg = theme.colors.fg_gutter },

	StatusLine = { fg = theme.colors.fg, bg = theme.colors.bg_dark },
	StatusLineNC = { fg = theme.colors.fg_gutter, bg = theme.colors.bg_dark },
	WinSeparator = { fg = theme.colors.border },

	TabLine = { fg = theme.colors.fg_gutter, bg = theme.colors.bg_dark },
	TabLineSel = { fg = theme.colors.fg, bg = theme.colors.bg_highlight },
	TabLineFill = { bg = theme.colors.bg_dark },

	-- Diagnostic groups
	DiagnosticError = { fg = theme.colors.red },
	DiagnosticWarn = { fg = theme.colors.orange },
	DiagnosticInfo = { fg = theme.colors.blue },
	DiagnosticHint = { fg = theme.colors.cyan },

	-- Git groups
	DiffAdd = { fg = theme.colors.green },
	DiffChange = { fg = theme.colors.yellow },
	DiffDelete = { fg = theme.colors.red },
	DiffText = { fg = theme.colors.blue },

	-- LSP groups
	LspReferenceText = { bg = theme.colors.bg_visual },
	LspReferenceRead = { bg = theme.colors.bg_visual },
	LspReferenceWrite = { bg = theme.colors.bg_visual },
}

return theme
