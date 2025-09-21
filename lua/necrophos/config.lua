local M = {}

M.config = {
	theme = "necrophos", -- default theme
	transparent = false,
	italic_comments = true,
}

-- -- Setup function for users to call
-- function M.setup(opts)
-- 	opts = opts or {}
-- 	M.default_theme = opts.default_theme or M.default_theme
-- 	M.transparent_background = opts.transparent_background or M.transparent_background
-- 	M.italic_comments = opts.italic_comments or M.italic_comments
-- end

M.setup = function(opts)
	M.config = vim.tbl_deep_extend("force", M.config, opts or {})
end

return M
