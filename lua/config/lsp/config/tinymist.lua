vim.lsp.config("tinymist", {
	settings = {
	}
})

vim.lsp.enable('tinymist')

require 'typst-preview'.setup {
	dependencies_bin = {
		tinymist = 'tinymist',
		websocat = 'websocat'
	},
}
