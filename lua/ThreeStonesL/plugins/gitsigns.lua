return {
	"lewis6991/gitsigns.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		on_attach = function(bufnr)
			local gs = package.loaded.gitsigns

			local function map(mode, l, r, desc)
				vim.keymap.set(mode, l, r, { buffer = bufnr, desc = desc })
			end

			-- Navigation
			map("n", "<leader>gnh", gs.next_hunk, "Next Hunk")
			map("n", "<leader>gph", gs.prev_hunk, "Prev Hunk")

			-- Actions
			map("n", "<leader>rs", gs.stage_hunk, "Stage hunk")
			map("n", "<leader>rr", gs.reset_hunk, "Reset hunk")
			map("v", "<leader>rs", function()
				gs.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
			end, "Stage hunk")
			map("v", "<leader>rr", function()
				gs.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
			end, "Reset hunk")

			map("n", "<leader>rS", gs.stage_buffer, "Stage buffer")
			map("n", "<leader>rR", gs.reset_buffer, "Reset buffer")

			map("n", "<leader>ru", gs.undo_stage_hunk, "Undo stage hunk")

			map("n", "<leader>rp", gs.preview_hunk, "Preview hunk")

			map("n", "<leader>rb", function()
				gs.blame_line({ full = true })
			end, "Blame line")
			map("n", "<leader>rB", gs.toggle_current_line_blame, "Toggle line blame")

			map("n", "<leader>rd", gs.diffthis, "Diff this")
			map("n", "<leader>rD", function()
				gs.diffthis("~")
			end, "Diff this ~")
		end,
	},
}
