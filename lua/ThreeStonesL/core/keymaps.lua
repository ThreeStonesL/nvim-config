vim.g.mapleader = " " -- 设置主键为空格

local keymap = vim.keymap

--- ------ 插入模式 Insert Mode ------ ---
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" }) -- 设置jk为退出插入模式

--- ------ 正常模式 Normal Mode ------ ---
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" }) -- 设置<leader>nh为关闭搜索高亮
keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "select all content" }) -- 设置Ctrl-a为全选

-- 增加和减少数字
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- 增加数字
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- 减少数字

-- 窗口管理
keymap.set("n", "<leader>wsv", "<C-w>v", { desc = "Split the window vertically" }) -- 垂直切分窗口
keymap.set("n", "<leader>wsh", "<C-w>s", { desc = "Split the window herizontlly" }) -- 水平切分窗口
keymap.set("n", "<leader>wse", "<C-w>=", { desc = "Make splits windows equal size" }) -- 使切分窗口相同大小
keymap.set("n", "<leader>wsx", "<cmd>close<CR>", { desc = "Close current split" }) -- 关闭当前开启的窗口

-- tab管理
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- 打开新的tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- 关闭当前的tab
keymap.set("n", "<leader>th", "<cmd>tabn<CR>", { desc = "Go to the next tab" }) -- 前往下一个tab
keymap.set("n", "<leader>tl", "<cmd>tabp<CR>", { desc = "Go to the previous tab" }) -- 前往上一个tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --在新的tab中打开当前文件

-- <tab>键
keymap.set("n", "<tab>", ">>", { desc = "indent the content" })
keymap.set("v", "<tab>", ">>", { desc = "indent the content" })
keymap.set("n", "<S-tab>", "<<", { desc = " delete the indent of the content" })
keymap.set("v", "<S-tab>", "<<", { desc = " delete the indent of the content" })

keymap.set("n", "<leader>pl", "<cmd>Lazy<CR>", { desc = "open the lazy" })

keymap.set("n", "d", '"_d')
keymap.set("n", "dd", '"_dd')
keymap.set("v", "d", '"_d')
keymap.set("v", "dd", '"_dd')
