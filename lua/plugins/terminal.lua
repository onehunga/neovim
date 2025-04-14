return {
	"akinsho/toggleterm.nvim",
	opts = {
		size = 40,
		open_mapping = "<C-s>",
		hide_numbers = true,
		start_in_insert = true,
		insert_mappings = true,
		shell = "fish",
		direction = "float",
		float_opts = {
			border = "curved",
			highlights = {
				border = "Normal",
				background = "Normal",
			},
		},
	},
	init = function()
		local Terminal = require("toggleterm.terminal").Terminal
		local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })

		function _Lazygit_toggle()
			lazygit:toggle(20, "float")
		end
	end,
}
