return {
	"folke/todo-comments.nvim",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local todo_comments = require("todo-comments")

		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		keymap.set("n", "<leader>gnt", function()
			todo_comments.jump_next()
		end, { desc = "go to next todo comment" })

		keymap.set("n", "<leader>gpt", function()
			todo_comments.jump_prev()
		end, { desc = "go to previous todo comment" })

		todo_comments.setup()
	end,
}
