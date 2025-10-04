local M = {}

M.name = "kunkka"

function M.config()
	-- This will be called when the colorscheme is loaded
	local theme = require("necrophos.themes.kunkka")
	return theme
end

-- Set the colorscheme when this file is required
vim.cmd([[ 
  if !exists('g:colors_name') || g:colors_name != 'kunkka'
    colorscheme necrophos
  endif
]])

return M
