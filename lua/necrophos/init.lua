local M = {}

-- Theme configuration
M.config = {
	theme = "necrophos", -- default theme
	transparent = false,
	styles = {
		comments = { italic = true },
		keywords = { italic = true },
		functions = { bold = true },
		variables = {},
	},
}

-- Available themes
M.themes = {
	theme1 = require("necrophos.colors.necrophos"),
	theme2 = require("necrophos.colors.kunkka"),
}

-- Setup function
function M.setup(opts)
	M.config = vim.tbl_deep_extend("force", M.config, opts or {})
	M.load_theme()
end

-- Load the selected theme
function M.load_theme()
	local theme = M.themes[M.config.theme]
	if not theme then
		vim.notify("Theme '" .. M.config.theme .. "' not found. Using default theme1.")
		theme = M.themes.theme1
	end

	-- Apply the theme colors
	for group, colors in pairs(theme.groups) do
		vim.api.nvim_set_hl(0, group, colors)
	end

	-- Set background
	if M.config.transparent then
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	end
end

-- Toggle between themes
function M.toggle_theme()
	if M.config.theme == "theme1" then
		M.config.theme = "theme2"
	else
		M.config.theme = "theme1"
	end
	M.load_theme()
	vim.notify("Switched to theme: " .. M.config.theme)
end

-- Auto commands for theme persistence
vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "*",
	callback = function()
		M.load_theme()
	end,
})

return M
