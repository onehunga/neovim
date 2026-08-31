vim.lsp.config("tinymist", {
	settings = {
		rootPath = vim.fn.getcwd(),

		typstExtraArgs = {
			"main.typ"
		}
	}
})

vim.lsp.enable('tinymist')

require 'typst-preview'.setup {
	dependencies_bin = {
		tinymist = 'tinymist',
		websocat = 'websocat'
	},
}
