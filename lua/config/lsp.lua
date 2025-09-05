local signs = {
	{ name = "DiagnosticSignError", text = "" },
	{ name = "DiagnosticSignWarn", text = "" },
	{ name = "DiagnosticSignHint", text = "" },
	{ name = "DiagnosticSignInfo", text = "" },
}

for _, sign in ipairs(signs) do
	vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
end


local config = {
	virtual_text = true,
	signs = {
		active = signs,
	},
	update_in_insert = true,
	underline = true,
	severity_sort = true,
	float = {
		focusable = false,
		style = "minimal",
		border = "rounded",
		source = "always",
		header = "",
		prefix = "",
	},
}

vim.diagnostic.config(config)

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
	border = "rounded",
})

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
	border = "rounded",
})

vim.api.nvim_create_autocmd('LspAttach', {
	group = vim.api.nvim_create_augroup('UserLspConfig', {}),
	callback = function(ev)
		local opts = { noremap = true, silent = true, buffer = ev.buf }

		-- Enable completion triggered by <c-x><c-o>
		-- vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
		vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

		-- Mappings.
		-- See `:help vim.lsp.*` for documentation on any of the below functions
		vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
		vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
		vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
		vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
		vim.keymap.set('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
		vim.keymap.set('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
		vim.keymap.set('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
		vim.keymap.set('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
		vim.keymap.set('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
		vim.keymap.set('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
		vim.keymap.set('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
		vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
		-- vim.keymap.set('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
	end
})

local vue_language_server_path = vim.fn.expand '$MASON/packages' ..
	'/vue-language-server' .. '/node_modules/@vue/language-server'
local tsserver_filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' }
local vue_plugin = {
	name = '@vue/typescript-plugin',
	location = vue_language_server_path,
	languages = { 'vue' },
	configNamespace = 'typescript',
}
local vtsls_config = {
	settings = {
		vtsls = {
			tsserver = {
				globalPlugins = {
					vue_plugin,
				},
			},
		},
	},
	filetypes = tsserver_filetypes,
}
local ts_ls_config = {
	init_options = {
		plugins = {
			vue_plugin,
		},
	},
	filetypes = tsserver_filetypes,
}

vim.lsp.config('vue_ls', {})
vim.lsp.config('vtsls', vtsls_config)
vim.lsp.config('ts_ls', ts_ls_config)
vim.lsp.enable({ 'vtsls', 'vue_ls' })

vim.lsp.enable("ocamllsp")
vim.lsp.enable("zls")
vim.lsp.enable("csharp_ls")

vim.lsp.config('jdtls', {})
vim.lsp.enable("jdtls")
