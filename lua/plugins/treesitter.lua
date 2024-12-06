return {
	"nvim-treesitter/nvim-treesitter",
	config = function()
		require("nvim-treesitter.configs").setup({
			modules = {},
			sync_install = true,
			highlight = {
				enable = true,
			},
		})
	end,
}
