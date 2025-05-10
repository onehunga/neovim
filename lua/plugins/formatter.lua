return {
	"stevearc/conform.nvim",
	opts = {
		notify_on_error = false,
		formatters = {
			odinfmt = {
				command = "odinfmt",
				args = { "-stdin" },
				stdin = true,
			},
		},
		format_on_save = {
			lsp_format = "first",
		},
		formatters_by_ft = {
			lua = { "stylua" },
			c = { "clang-format" },
			cpp = { "clang-format" },
			rust = { "rustfmt" },
			odin = { "odinfmt" },
		},
	},
}
