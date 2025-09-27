local M = {}

M.config = {
	theme = "necrophos", -- default theme
	transparent = false,
	styles = {
		comments = { italic = true },
		keywords = { italic = true },
		functions = { bold = true },
	},
}

-- Available themes - MAKE SURE BOTH ARE DEFINED HERE
M.themes = {
	necrophos = require("necrophos.themes.necrophos"),
	kunkka = require("necrophos.themes.kunkka"),
	invoker = require("necrophos.themes.invoker"),
}

function M.setup(opts)
	M.config = vim.tbl_deep_extend("force", M.config, opts or {})
	M.load_theme()
end

function M.load_theme()
	local theme = M.themes[M.config.theme]
	if not theme then
		vim.notify("Theme '" .. M.config.theme .. "' not found. Using default necrophos.")
		theme = M.themes.necrophos
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

-- Theme switching functions
function M.set_theme(theme_name)
	if M.themes[theme_name] then
		M.config.theme = theme_name
		M.load_theme()
		vim.notify("Switched to theme: " .. theme_name)
	else
		vim.notify("Theme '" .. theme_name .. "' not found. Available: " .. vim.inspect(vim.tbl_keys(M.themes)))
	end
end

function M.toggle_theme()
	if M.config.theme == "necrophos" then
		M.set_theme("kunkka")
	else
		M.set_theme("necrophos")
	end
end

-- Auto commands
-- vim.api.nvim_create_autocmd("ColorScheme", {
-- 	pattern = "*",
-- 	callback = function()
-- 		M.load_theme()
-- 	end,
-- })

-- Register the color schemes
vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "necrophos",
	callback = function()
		require("necrophos.themes.necrophos").setup()
	end,
})

vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "necrophos-kunkka",
	callback = function()
		require("necrophos.themes.kunkka").setup()
	end,
})

vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "necrophos-invoker",
	callback = function()
		require("necrophos.themes.invoker").setup()
	end,
})

-- Set default colorscheme
vim.cmd("colorscheme necrophos")

return M
