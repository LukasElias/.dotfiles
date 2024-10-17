return {
	'nvim-tree/nvim-tree.lua',
	opts = {
		disable_netrw = true,
		sort = {
			sorter = "case_sensitive",
		},
		view = {
			width = 30,
		},
		renderer = {
			group_empty = true,
		},
		filters = {
			dotfiles = true,
		},
	}
}
