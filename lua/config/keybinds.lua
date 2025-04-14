local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

function bind(key, cmd)
	keymap("n", key, cmd, opts)
	keymap("v", key, cmd, opts)
	keymap("x", key, cmd, opts)
end

function ibind(key, cmd)
	bind(key, cmd)
	keymap("i", key, cmd, opts)
end

bind("<C-e>", ":Neotree toggle<cr>")
ibind("<A-,>", ":BufferLineCyclePrev<cr>")
ibind("<A-.>", ":BufferLineCycleNext<cr>")
bind("<A-q>", ":bw<cr>")
bind("<C-f>", ":Telescope find_files<cr>")
bind("<leader>g", "<cmd>lua _Lazygit_toggle()<cr>")
bind("<leader>a", "<cmd>CodeActionMenu<cr>")

bind("<leader>op", ":Neotree toggle<cr>")

bind("<leader><leader>", ":Telescope find_files<cr>")
bind("<leader>ff", ":Telescope find_files<cr>")
bind("<leader>fd", ":Telescope lsp_document_symbols<cr>")
bind("<leader>fw", ":Telescope lsp_workspace_symbols<cr>")
bind("<leader>fg", ":Telescope live_grep<cr>")

bind("<leader>bb", ":Telescope buffers<cr>")
bind("<leader>bk", ":bdelete<cr>")
