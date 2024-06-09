return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			open_mapping = [[<C-\>]],
			direction = "float",
			float_opts = {
				border = "curved",
			},
		})

		function _G.set_terminal_keymaps()
			local opts = { buffer = 0 }
			vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
			vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
			vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
			vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
			vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
			vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
			vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
		end
		vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")

		-- custom terminal usage
		local Terminal = require("toggleterm.terminal").Terminal

		local powershell = Terminal:new({ cmd = "powershell.exe" })
		function _powershell_toggle()
			powershell:toggle()
		end
		vim.api.nvim_set_keymap(
			"n",
			"<leader>tp",
			"<cmd>lua _powershell_toggle()<CR>",
			{ noremap = true, silent = true, desc = "toggle the powershell terminal" }
		)

		local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })

		function _lazygit_toggle()
			lazygit:toggle()
		end

		vim.api.nvim_set_keymap(
			"n",
			"<leader>tg",
			"<cmd>lua _lazygit_toggle()<CR>",
			{ noremap = true, silent = true, desc = "toggle the lazygit terminal" }
		)
	end,
}
