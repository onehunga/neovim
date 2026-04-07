vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			diagnostics = {
				globals = { 'vim' }
			},
			workspace = {
				checkThirdParty = false,
				library = {
					[vim.fn.expand '$VIMRUNTIME/lua'] = true,
					[vim.fn.stdpath 'config' .. '/lua'] = true,
					[vim.fn.stdpath 'data' .. '/lazy'] = true
				}
			}
		}
	}
})
