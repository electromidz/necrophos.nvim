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

-- Available themes
M.themes = {
	necrophos = require("necrophos.themes.necrophos"),
	kunkka = require("necrophos.themes.kunkka"),
	invoker = require("necrophos.themes.invoker"),
}

-- Map theme names to colorscheme names
M.colorscheme_names = {
	necrophos = "necrophos",
	kunkka = "necrophos-kunkka",
	invoker = "necrophos-invoker",
}

function M.setup(opts)
	M.config = vim.tbl_deep_extend("force", M.config, opts or {})
	M.load_theme()
end

function M.load_theme()
	local theme_name = M.config.theme
	local theme = M.themes[theme_name]

	if not theme then
		vim.notify("Theme '" .. theme_name .. "' not found. Using default necrophos.", vim.log.levels.WARN)
		theme_name = "necrophos"
		theme = M.themes.necrophos
		M.config.theme = theme_name
	end

	-- Clear existing highlights first
	vim.cmd("highlight clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	-- Set the colorscheme name with prefix
	local colorscheme_name = M.colorscheme_names[theme_name] or "necrophos"
	vim.g.colors_name = colorscheme_name

	-- Apply the theme colors
	if theme.groups then
		for group, colors in pairs(theme.groups) do
			vim.api.nvim_set_hl(0, group, colors)
		end
	else
		vim.notify("Theme '" .. theme_name .. "' has no groups table", vim.log.levels.ERROR)
		return
	end

	-- Set background
	if M.config.transparent then
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	end

	vim.notify("Loaded theme: " .. colorscheme_name, vim.log.levels.INFO)
end

-- Theme switching functions
function M.set_theme(theme_name)
	if M.themes[theme_name] then
		M.config.theme = theme_name
		M.load_theme()
		local colorscheme_name = M.colorscheme_names[theme_name] or theme_name
		vim.notify("Switched to theme: " .. colorscheme_name, vim.log.levels.INFO)
	else
		local available = vim.tbl_keys(M.themes)
		vim.notify(
			"Theme '" .. theme_name .. "' not found. Available: " .. table.concat(available, ", "),
			vim.log.levels.ERROR
		)
	end
end

function M.toggle_theme()
	local current = M.config.theme
	if current == "necrophos" then
		M.set_theme("kunkka")
	elseif current == "kunkka" then
		M.set_theme("invoker")
	else
		M.set_theme("necrophos")
	end
end

-- Auto-command to reload theme when colorscheme is set
vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "necrophos*",
	callback = function()
		-- Extract theme name from colorscheme name
		local cs_name = vim.g.colors_name or ""
		local theme_name = cs_name:gsub("^necrophos%-", "")
		if theme_name == "" then
			theme_name = "necrophos"
		end

		if M.themes[theme_name] then
			M.config.theme = theme_name
			vim.schedule(M.load_theme)
		end
	end,
})

return M
