vim.pack.add({
	'https://github.com/nvim-mini/mini.nvim'
})

local pairs = require 'mini.pairs'

vim.api.nvim_create_autocmd('FileType', {
	pattern = 'rust',
	callback = function()
		pairs.map_buf(0, 'i', '\'', {
			action = 'closeopen',
			pair = "''",
			neigh_pattern = '^[^&<%a\\]',
			register = { cr = false }
		})
	end
})

pairs.setup()
