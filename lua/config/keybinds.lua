local wk = require 'which-key'

wk.add({
	{
		'<leader>?',
		function()
			wk.show({ global = false })
		end,
		desc = 'Buffer Local Keymaps (which-key)'
	},
	{
		'<leader>o',
		group = 'open'
	},
	{
		'<leader>op',
		'<cmd>:Neotree toggle position=float<cr>',
		desc = 'Toggle Tree'
	},
	{
		'<leader>f',
		group = 'Telescope',
		{
			'<leader><leader>',
			'<cmd>:Telescope find_files<cr>',
			desc = "Find Files"
		},
		{
			'<leader>ff',
			'<cmd>:Telescope find_files<cr>',
			desc = "Find Files"
		},
		{
			'<leader>fb',
			'<cmd>:Telescope buffers<cr>',
			desc = "Find Open Buffers"
		},
		{
			'<leader>fg',
			'<cmd>:Telescope live_grep<cr>',
			desc = "Grep Files"
		},
		{
			'<leader>fd',
			'<cmd>:Telescope lsp_document_symbols<cr>',
			desc = "File Symbols"
		},
		{
			'<leader>fw',
			'<cmd>:Telescope lsp_workspace_symbols<cr>',
			desc = "Workspace Symbols"
		},
	},
	{
		'<C-e>',
		'<cmd>:Neotree toggle position=float<cr>',
	}
})
