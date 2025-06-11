return {
	'neovim/nvim-lspconfig',
	event = { 'BufReadPre', 'BufNewFile' },
	dependencies = {
		'j-hui/fidget.nvim',
		'folke/neodev.nvim',
	},
}
