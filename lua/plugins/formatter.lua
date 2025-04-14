return {
	"stevearc/conform.nvim",
	opts = {
		format_on_save = {
			lsp_format = 'first'
		},
		formatters_by_ft = {
			lua = { "stylua" },
			c = { "clang-format" },
			cpp = { "clang-format" },
			rust = { "rustfmt" },
		},
	},
}
