local cmp = require 'cmp'
local luasnip = require 'luasnip'

-- local border_opts = { border = "single", winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:Visual,Search:None" }

require('luasnip.loaders.from_vscode').lazy_load()

local kind_icons = {
	Text = "",
	Method = "",
	Function = "",
	Constructor = "",
	Field = "ﰠ",
	Variable = "",
	Class = "",
	Interface = "",
	Module = "",
	Property = "",
	Unit = "",
	Value = "",
	Enum = "",
	Keyword = "",
	Snippet = "",
	Color = "",
	File = "",
	Reference = "",
	Folder = "",
	EnumMember = "",
	Constant = "",
	Struct = "פּ",
	Event = "",
	Operator = "",
	TypeParameter = "",
}

cmp.setup {
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end
	},
	mapping = {
		["<C-k>"] = cmp.mapping.select_prev_item(),
		["<C-j>"] = cmp.mapping.select_next_item(),
		["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-1), { "i", "c" }),
		["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(1), { "i", "c" }),
		-- ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
		-- ["<C-y>"] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
		["<C-Space>"] = cmp.mapping({
			i = function()
				if not cmp.visible() then
					cmp.complete()
				end
			end
		}),
		["<C-e>"] = cmp.mapping({
		 	i = cmp.mapping.abort(),
		 	c = cmp.mapping.close(),
		}),
		-- Accept currently selected item. If none selected, `select` first item.
		-- Set `select` to `false` to only confirm explicitly selected items.
		["<CR>"] = cmp.mapping.confirm({ select = true }),

	},
	formatting = {
		-- fields = { "kind", "abbr", "menu" },
		-- format = function(entry, vim_item)
		-- 	local kind = require("lspkind").cmp_format({ mode = "symbol_text", maxwidth = 50 })(entry, vim_item)
		-- 	local strings = vim.split(kind.kind, "%s", { trimempty = true })
		-- 	kind.kind = " " .. strings[1] .. " "
		-- 	kind.menu = "    (" .. strings[2] .. ")"
		--
		-- 	return kind
		-- end,
		fields = { "abbr", "kind", "menu" },
		format = function(entry, vim_item)
			vim_item.kind = (kind_icons[vim_item.kind] or '') -- .. ' ' .. vim_item.kind
			return vim_item
		end
	},
	sources = {
		{ name = "nvim_lsp" },
		{ name = "nvim_lua" },
		{ name = "luasnip" },
		{ name = "buffer" },
		{ name = "path" },
	},
	confirm_opts = {
		behavior = cmp.ConfirmBehavior.Replace,
		select = false,
	},
	experimental = {
		ghost_text = true,
	},
	-- preselect = cmp.PreselectMode.None,
	preselect = cmp.PreselectMode.Item,
	window = {
		-- completion = {
		-- 	winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:Visual,Search:None",
		-- 	border = "single",
		-- 	col_offset = -3,
		-- 	side_padding = 0,
		-- },
		completion = {
			border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
		},
		documentation = {
			border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
		}
	}
}
