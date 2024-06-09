return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	opts = {},
	config = function()
		local wk = require("which-key")
		wk.setup({
			window = {
				border = "single",
			},
		})
		local keymaps = {
			["<leader>f"] = { name = "+find" },
			["<leader>w"] = { name = "+window" },
			["<leader>ws"] = { name = "+window split" },
			["<leader>e"] = { name = "+file explore" },
			["<leader>t"] = { name = "+tab/terminal" },
			["<leader>n"] = { name = "+nav/disable/trivial" },
			["<leader>nl"] = { name = "+lsp" },
			["<leader>c"] = { name = "+comment" },
			["<leader>g"] = { name = "+go to" },
			["<leader>gn"] = { name = "+go to next" },
			["<leader>gp"] = { name = "+go to previous" },
			["<leader>a"] = { name = "+surround edit" },
			["<leader>p"] = { name = "+plugins" },
			["<leader>x"] = { name = "+trouble" },
			["<leader>d"] = { name = "+diagnose/document" },
			["<leader>r"] = { name = "+git operations" },
		}
		wk.register(keymaps)
	end,
}
