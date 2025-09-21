local config = require("necrophos.config")
local necrophos = require("necrophos.pallete")

local M = {}

M.setup = function(opts)
	config.setup(opts)
end

M.load = function(theme_name)
	theme_name = theme_name or config.config.theme

	if theme_name == "necrophos" then
		necrophos.setup()
		error("Unknown theme: " .. theme_name)
	end

	config.config.theme = theme_name
	vim.g.mytheme_current = theme_name
end

-- Switch theme function
M.switch = function()
	local current = config.config.theme
	local new_theme = current == "theme1" and "theme2" or "theme1"
	M.load(new_theme)
	print("Switched to theme: " .. new_theme)
end

-- Auto-load on startup
vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "*",
	callback = function()
		if vim.g.colors_name ~= "mytheme" then
			return
		end
		M.load()
	end,
})

return M
