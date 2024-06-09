return {
	"echasnovski/mini.nvim",
	version = "*",
	config = function()
		require("mini.animate").setup({
			cursor = { enbale = true },
			scroll = { enbale = false },
			resize = { enable = false },
			open = { enable = false },
			close = { enable = false },
		})
		local hipatterns = require("mini.hipatterns")
		hipatterns.setup({
			highlighters = {
				hex_color = hipatterns.gen_highlighter.hex_color(),
			},
		})
	end,
}
