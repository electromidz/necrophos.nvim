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

function M.setup(opts)
	M.config = vim.tbl_deep_extend("force", M.config, opts or {})
	M.register_colorschemes()
	M.load_theme()
end

-- Register all colorschemes so Neovim recognizes them
function M.register_colorschemes()
	-- Register necrophos
	vim.api.nvim_create_autocmd("ColorSchemePre", {
		pattern = "necrophos",
		callback = function()
			M.config.theme = "necrophos"
			M.apply_theme()
		end,
	})

	-- Register necrophos-kunkka
	vim.api.nvim_create_autocmd("ColorSchemePre", {
		pattern = "necrophos-kunkka",
		callback = function()
			M.config.theme = "kunkka"
			M.apply_theme()
		end,
	})

	-- Register necrophos-invoker
	vim.api.nvim_create_autocmd("ColorSchemePre", {
		pattern = "necrophos-invoker",
		callback = function()
			M.config.theme = "invoker"
			M.apply_theme()
		end,
	})
end

function M.load_theme()
	local theme_name = M.config.theme
	local colorscheme_name = M.get_colorscheme_name(theme_name)
	vim.cmd("colorscheme " .. colorscheme_name)
end

function M.apply_theme()
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

	vim.g.colors_name = M.get_colorscheme_name(theme_name)

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

	vim.notify("Loaded theme: " .. M.get_colorscheme_name(theme_name), vim.log.levels.INFO)
end

function M.get_colorscheme_name(theme_name)
	if theme_name == "necrophos" then
		return "necrophos"
	else
		return "necrophos-" .. theme_name
	end
end

-- Theme switching functions
function M.set_theme(theme_name)
	if M.themes[theme_name] then
		M.config.theme = theme_name
		M.load_theme()
		vim.notify("Switched to theme: " .. M.get_colorscheme_name(theme_name), vim.log.levels.INFO)
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

return M
