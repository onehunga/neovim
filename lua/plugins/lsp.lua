return {
	'neovim/nvim-lspconfig',
	dependencies = {
		{
			'williamboman/mason.nvim',
			opts = {},
			dependencies = {
				'williamboman/mason-lspconfig.nvim'
			}
		}
	},
	config = function()
		require 'config.lsp'
		require 'config.lsp_mason'
	end
}
