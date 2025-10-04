return {
	'neovim/nvim-lspconfig',
	event = { 'BufReadPre', 'BufNewFile' },
	dependencies = {
		{
			'j-hui/fidget.nvim',
			notification = {
				window = {
					winblend = 0,
				},
			},
		},
		'folke/neodev.nvim',
	},
}
