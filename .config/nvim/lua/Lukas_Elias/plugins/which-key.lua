return {
	'folke/which-key.nvim',
	dependencies = {
		'nvim-tree/nvim-web-devicons',
		'echasnovski/mini.nvim',
	},
	config = function()
		require('which-key').add(
			{
				{ '<leader>c', group = '[C]ode' },
				{ '<leader>d', group = '[D]ocument' },
				{ '<leader>g', group = '[G]it' },
				{ '<leader>h', group = 'Git [H]unk' },
				{ '<leader>r', group = '[R]ename' },
				{ '<leader>s', group = '[S]earch' },
				{ '<leader>t', group = '[T]oggle' },
				{ '<leader>w', group = '[W]orkspace' },
			},
			{
				mode = "v",
				{ '<leader>',  group = 'VISUAL <leader>' },
				{ '<leader>h', group = 'Git [H]unk' },
			}
		)
	end,
}
