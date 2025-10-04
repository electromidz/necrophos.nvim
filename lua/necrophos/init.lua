local M = {}

M.config = {
	theme = "necrophos",
	transparent = false,
	styles = {
		comments = { italic = true },
		keywords = { italic = true },
		functions = { bold = true },
	},
}

function M.setup(opts)
	M.config = vim.tbl_deep_extend("force", M.config, opts or {})
	M.load_theme()
end

function M.load_theme()
	local theme_name = M.config.theme
	local colorscheme_name = "necrophos"

	-- Set the theme variant via global variable
	vim.g.necrophos_theme = theme_name
	vim.g.necrophos_transparent = M.config.transparent

	vim.cmd("colorscheme " .. colorscheme_name)
end

function M.set_theme(theme_name)
	if theme_name == "necrophos" or theme_name == "kunkka" or theme_name == "invoker" then
		M.config.theme = theme_name
		M.load_theme()
		vim.notify("Switched to theme: " .. theme_name, vim.log.levels.INFO)
	else
		vim.notify(
			"Theme '" .. theme_name .. "' not found. Available: necrophos, kunkka, invoker",
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

-- Create user commands
vim.api.nvim_create_user_command("Necrophos", function()
	M.set_theme("necrophos")
end, { desc = "Set Necrophos theme" })

vim.api.nvim_create_user_command("NecrophosKunkka", function()
	M.set_theme("kunkka")
end, { desc = "Set Necrophos Kunkka theme" })

vim.api.nvim_create_user_command("NecrophosInvoker", function()
	M.set_theme("invoker")
end, { desc = "Set Necrophos Invoker theme" })

vim.api.nvim_create_user_command("NecrophosToggle", M.toggle_theme, { desc = "Toggle Necrophos themes" })

return M
