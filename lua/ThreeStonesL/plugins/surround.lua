return {
	"kylechui/nvim-surround",
	event = { "BufReadPre", "BufNewFile" },
	version = "*", -- Use for stability; omit to use `main` branch for the latest features
	config = function()
		require("nvim-surround").setup({
			keymaps = {
				insert = "<C-g>s",
				insert_line = "<C-g>S",
				normal = "<leader>sa",
				normal_cur = "<leader>saa",
				normal_line = "<leader>sA",
				normal_cur_line = "<leader>sAA",
				visual = "<leader>sa",
				visual_line = "<leader>sA",
				delete = "<leader>sd",
				change = "<leader>sc",
				change_line = "<leader>sC",
			},
		})
	end,
}
