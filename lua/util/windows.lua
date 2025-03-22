local M = {}

M.move_to_buffer = function(target_buffer_id)
	for _, win_id in ipairs(vim.api.nvim_list_wins()) do
		if vim.api.nvim_win_get_buf(win_id) == target_buffer_id then
			vim.api.nvim_set_current_win(win_id)
			break
		end
	end
end

return M
