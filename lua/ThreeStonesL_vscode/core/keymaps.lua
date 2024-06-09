local keymap = vim.keymap
keymap.set("n", "d", '"_d')
keymap.set("n", "dd", '"_dd')
keymap.set("v", "d", '"_d')
keymap.set("v", "dd", '"_dd')
-- 处理光标在遇到折叠时出现的问题
keymap.set(
	"n",
	"j",
	"<cmd>call VSCodeCall('cursorMove', { 'to': 'down', 'by': 'wrappedLine', 'value': v:count ? v:count : 1 })<CR>"
)
keymap.set(
	"n",
	"k",
	"<cmd>call VSCodeCall('cursorMove', { 'to': 'up', 'by': 'wrappedLine', 'value': v:count ? v:count : 1 })<CR>"
)

keymap.set("n", "<tab>", ">>", { desc = "indent the content" })
keymap.set("v", "<tab>", ">>", { desc = "indent the content" })
keymap.set("n", "<S-tab>", "<<", { desc = " delete the indent of the content" })
keymap.set("v", "<S-tab>", "<<", { desc = " delete the indent of the content" })
