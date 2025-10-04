local M = {}

M.name = "necrophos"

function M.config()
	-- This will be called when the colorscheme is loaded
	local theme = require("necrophos.themes.necrophos")
	return theme
end

-- Set the colorscheme when this file is required
vim.cmd([[ 
  if !exists('g:colors_name') || g:colors_name != 'necrophos'
    colorscheme necrophos
  endif
]])

return M
