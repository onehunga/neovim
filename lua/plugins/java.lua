return {
	-- 'nvim-java/nvim-java',
	'mfussenegger/nvim-jdtls',
	dependencies = { 'neovim/nvim-lspconfig' },
	ft = { 'java' },
	config = function()
		-- require('java').setup({})
	end,
	priority = 20,
}
