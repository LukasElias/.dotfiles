return {
	"lervag/vimtex",
	lazy = false, -- we don't want to lazy load VimTeX
	init = function()
		vim.g.vimtex_view_method = "zathura"
		vim.g.vimtex_syntax_enabled = 0
		vim.g.vimtex_quickfix_open_on_warning = 0
	end
}
