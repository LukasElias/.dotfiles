return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "mocha", -- latte, frappe, macchiato, mocha
			background = {     -- :h background
				light = "latte",
				dark = "mocha",
			},
			show_end_of_buffer = false,     -- shows the '~' characters after the end of buffers
			dim_inactive = {
				enabled = true,
				shade = "dark",
				percentage = 0.5,
			},
			no_italic = false,
			no_bold = false,
			no_underline = false,
			styles = {
				comments = { "italic" },
				conditionals = { "italic" },
			},
			integrations = {
				cmp = true,
				gitsigns = true,
				nvimtree = true,
				treesitter = true,
				notify = true,
				-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
			},
		})

		vim.cmd.colorscheme("catppuccin")
	end,
}
