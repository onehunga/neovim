vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
			},
			diagnostics = {
				globals = {
					"vim",
					"require",
				},
			},
		},
	},
})

local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
mason.setup({})
mason_lspconfig.setup({
	ensure_installed = { "lua_ls" },
})
