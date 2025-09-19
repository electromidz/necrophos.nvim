local config = require("necrophos.config")
local themes = {
	necrophos = require("necrophos.themes.necrophos"),
	kunkka = require("necrophos.themes.kunkka"),
}
local M = {}

function M.load(theme_name)
	theme_name = theme_name or config.default_theme
	local theme = themes[theme_name]

	if not theme then
		vim.notify("Theme '" .. theme_name .. "' not found. Using default.")
		theme = themes[config.default_theme]
	end

	-- Clear existing highlights
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.o.background = theme.background or "dark"
	vim.g.colors_name = theme.name

	-- Apply the theme colors
	local palette = theme.palette

	-- Apply all highlight groups
	vim.api.nvim_set_hl(0, "Normal", { fg = palette.fg, bg = config.transparent_background and "NONE" or palette.bg })
	vim.api.nvim_set_hl(0, "NormalFloat", { fg = palette.fg, bg = palette.accent_bg })
	vim.api.nvim_set_hl(0, "FloatBorder", { fg = palette.border, bg = palette.accent_bg })

	-- Syntax highlighting
	vim.api.nvim_set_hl(0, "Comment", { fg = palette.grey, italic = config.italic_comments })
	vim.api.nvim_set_hl(0, "String", { fg = palette.green })
	vim.api.nvim_set_hl(0, "Number", { fg = palette.orange })
	vim.api.nvim_set_hl(0, "Boolean", { fg = palette.orange })
	vim.api.nvim_set_hl(0, "Function", { fg = palette.blue })
	vim.api.nvim_set_hl(0, "Identifier", { fg = palette.fg })
	vim.api.nvim_set_hl(0, "Keyword", { fg = palette.purple })
	vim.api.nvim_set_hl(0, "Operator", { fg = palette.accent })
	vim.api.nvim_set_hl(0, "Type", { fg = palette.cyan })
	vim.api.nvim_set_hl(0, "Special", { fg = palette.yellow })

	-- UI elements
	vim.api.nvim_set_hl(0, "CursorLine", { bg = palette.accent_bg })
	vim.api.nvim_set_hl(0, "LineNr", { fg = palette.grey })
	vim.api.nvim_set_hl(0, "CursorLineNr", { fg = palette.accent })
	vim.api.nvim_set_hl(0, "Pmenu", { fg = palette.fg, bg = palette.accent_bg })
	vim.api.nvim_set_hl(0, "PmenuSel", { fg = palette.inverse_fg, bg = palette.accent })
	vim.api.nvim_set_hl(0, "StatusLine", { fg = palette.fg, bg = palette.accent_bg })
	vim.api.nvim_set_hl(0, "StatusLineNC", { fg = palette.grey, bg = palette.accent_bg })
	vim.api.nvim_set_hl(0, "TabLine", { fg = palette.grey, bg = palette.accent_bg })
	vim.api.nvim_set_hl(0, "TabLineSel", { fg = palette.fg, bg = palette.bg })
	vim.api.nvim_set_hl(0, "VertSplit", { fg = palette.border, bg = palette.bg })

	-- LSP and diagnostics
	vim.api.nvim_set_hl(0, "DiagnosticError", { fg = palette.red })
	vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = palette.yellow })
	vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = palette.blue })
	vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = palette.cyan })

	-- Git
	vim.api.nvim_set_hl(0, "DiffAdd", { fg = palette.green })
	vim.api.nvim_set_hl(0, "DiffChange", { fg = palette.yellow })
	vim.api.nvim_set_hl(0, "DiffDelete", { fg = palette.red })

	-- Treesitter
	vim.api.nvim_set_hl(0, "@property", { fg = palette.cyan })
	vim.api.nvim_set_hl(0, "@variable", { fg = palette.fg })
	vim.api.nvim_set_hl(0, "@parameter", { fg = palette.orange })
	vim.api.nvim_set_hl(0, "@namespace", { fg = palette.purple })

	-- Plugins specific highlights
	-- LazyVim
	vim.api.nvim_set_hl(0, "LazyProgressDone", { fg = palette.accent })
	vim.api.nvim_set_hl(0, "LazyProgressTodo", { fg = palette.grey })

	-- Telescope
	vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = palette.border, bg = palette.accent_bg })
	vim.api.nvim_set_hl(0, "TelescopePromptBorder", { fg = palette.border, bg = palette.accent_bg })
	vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { fg = palette.border, bg = palette.accent_bg })
	vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { fg = palette.border, bg = palette.accent_bg })

	-- WhichKey
	vim.api.nvim_set_hl(0, "WhichKey", { fg = palette.purple })
	vim.api.nvim_set_hl(0, "WhichKeySeparator", { fg = palette.grey })
	vim.api.nvim_set_hl(0, "WhichKeyDesc", { fg = palette.blue })
	vim.api.nvim_set_hl(0, "WhichKeyGroup", { fg = palette.cyan })
	vim.api.nvim_set_hl(0, "WhichKeyValue", { fg = palette.green })
end

function M.setup(opts)
	config.setup(opts)
	-- Load the theme after setup
	M.load()
end

return M
