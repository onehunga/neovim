local mason = require 'mason'
local mason_lspconfig = require 'mason-lspconfig'

mason.setup {}
mason_lspconfig.setup {}

mason_lspconfig.setup_handlers {
	function(server_name)
		local opts = {}

		if server_name == 'lua_ls' then
			opts = {
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
			}
		end

		require('lspconfig')[server_name].setup(opts)
	end
}

