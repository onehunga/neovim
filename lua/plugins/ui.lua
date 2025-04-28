return {
	{
		"j-hui/fidget.nvim",
		opts = {
			notification = {
				window = {
					winblend = 0,
				},
			},
		},
	},
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			lsp = {
				progress = {
					enabled = false,
				},
			},
		},
		dependencies = {
			"MunifTanjim/nui.nvim",
		},
	},

	"xiyaowong/transparent.nvim",
}
