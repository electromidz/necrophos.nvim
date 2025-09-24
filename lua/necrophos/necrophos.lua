local config = require("necrophos.config")
local palette = require("necrophos.colors.palette_dark")

local M = {}

M.setup = function()
	local colors = palette
	local cfg = config.config

	local hl = vim.api.nvim_set_hl
	local bg = cfg.transparent and "NONE" or colors.bg

	-- Base highlights
	hl(0, "Normal", { fg = colors.fg, bg = bg })
	hl(0, "NormalFloat", { fg = colors.fg, bg = colors.bg_popup })
	hl(0, "Comment", { fg = colors.comment, italic = cfg.styles.comments.italic })

	-- Syntax group
	hl(0, "Constant", { fg = colors.orange })
	hl(0, "String", { fg = colors.green })
	hl(0, "Character", { fg = colors.green })
	hl(0, "Number", { fg = colors.orange })
	hl(0, "Boolean", { fg = colors.orange })
	hl(0, "Float", { fg = colors.orange })

	hl(0, "Identifier", { fg = colors.magenta })
	hl(0, "Function", { fg = colors.blue })

	hl(0, "Statement", { fg = colors.magenta, bold = cfg.styles.keywords.bold })
	hl(0, "Conditional", { fg = colors.magenta, bold = cfg.styles.keywords.bold })
	hl(0, "Repeat", { fg = colors.magenta, bold = cfg.styles.keywords.bold })
	hl(0, "Label", { fg = colors.magenta })
	hl(0, "Operator", { fg = colors.fg })
	hl(0, "Keyword", { fg = colors.magenta, bold = cfg.styles.keywords.bold })
	hl(0, "Exception", { fg = colors.red })

	hl(0, "PreProc", { fg = colors.cyan })
	hl(0, "Include", { fg = colors.cyan })
	hl(0, "Define", { fg = colors.cyan })
	hl(0, "Macro", { fg = colors.cyan })
	hl(0, "PreCondit", { fg = colors.cyan })

	hl(0, "Type", { fg = colors.yellow })
	hl(0, "StorageClass", { fg = colors.yellow })
	hl(0, "Structure", { fg = colors.yellow })
	hl(0, "Typedef", { fg = colors.yellow })

	hl(0, "Special", { fg = colors.blue })
	hl(0, "SpecialChar", { fg = colors.red })
	hl(0, "Tag", { fg = colors.orange })
	hl(0, "Delimiter", { fg = colors.fg })
	hl(0, "SpecialComment", { fg = colors.comment })
	hl(0, "Debug", { fg = colors.red })

	-- UI elements
	hl(0, "CursorLine", { bg = colors.bg_highlight })
	hl(0, "CursorLineNr", { fg = colors.yellow })
	hl(0, "LineNr", { fg = colors.fg_gutter })
	hl(0, "SignColumn", { bg = bg })
	hl(0, "ColorColumn", { bg = colors.bg_highlight })

	-- Pmenu
	hl(0, "Pmenu", { bg = colors.bg_popup })
	hl(0, "PmenuSel", { bg = colors.selection })
	hl(0, "PmenuSbar", { bg = colors.bg_dark })
	hl(0, "PmenuThumb", { bg = colors.fg_gutter })

	-- Search
	hl(0, "Search", { bg = colors.yellow, fg = colors.bg })
	hl(0, "IncSearch", { bg = colors.orange, fg = colors.bg })
	hl(0, "CurSearch", { link = "IncSearch" })

	-- Diagnostics
	hl(0, "DiagnosticError", { fg = colors.red })
	hl(0, "DiagnosticWarn", { fg = colors.yellow })
	hl(0, "DiagnosticInfo", { fg = colors.blue })
	hl(0, "DiagnosticHint", { fg = colors.cyan })

	-- Git
	hl(0, "DiffAdd", { fg = colors.green })
	hl(0, "DiffChange", { fg = colors.yellow })
	hl(0, "DiffDelete", { fg = colors.red })
	hl(0, "DiffText", { fg = colors.blue })

	-- LSP
	hl(0, "LspReferenceText", { bg = colors.selection })
	hl(0, "LspReferenceRead", { bg = colors.selection })
	hl(0, "LspReferenceWrite", { bg = colors.selection })

	-- Telescope
	hl(0, "TelescopeBorder", { fg = colors.border })
	hl(0, "TelescopeSelection", { bg = colors.selection })

	-- WhichKey
	hl(0, "WhichKeyFloat", { bg = colors.bg_popup })
end

return M
