local M = {}

M.default_theme = "necrophos"
M.transparent_background = false
M.italic_comments = true

-- Setup function for users to call
function M.setup(opts)
	opts = opts or {}
	M.default_theme = opts.default_theme or M.default_theme
	M.transparent_background = opts.transparent_background or M.transparent_background
	M.italic_comments = opts.italic_comments or M.italic_comments
end

return M
