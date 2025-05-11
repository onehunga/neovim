return {
	'nvim-telescope/telescope.nvim',
	dependencies = {
		'nvim-lua/plenary.nvim',
		{
			'nvim-telescope/telescope-fzf-native.nvim',
			build = 'make'
		}
	},
	lazy = true,
	opts = {
		defaults = {
			mappings = {
				i = {
					['<C-f>'] = require("telescope.actions").close,
					['<esc>'] = require("telescope.actions").close,
				}
			},
		},
		extensions = {
			fzf = {
				fuzzy = true,
				override_generic_sorter = true,
				override_file_sorter = true,
				case_mode = 'smart_case'
			}
		}
	}
}
