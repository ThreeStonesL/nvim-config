-- 开启文件管理器的树状显示 --
vim.cmd("let g:netrw_liststyle=3")

local opt = vim.opt

opt.relativenumber = true -- 打开相对行号
opt.number = true -- 打开当前行号

-- tabs & indentation
opt.tabstop = 2 -- 设置tab为2个空格
opt.shiftwidth = 2 -- 设置indent width为2个空格
opt.expandtab = true -- 将tab扩展为空格
opt.autoindent = true -- 当开启新的一行时，将当前的缩进复制到下一行
opt.smarttab = true -- 根据文件中其他地方的空格判断一个tab是多少个空格

opt.wrap = false -- 关闭过长行的折叠

-- 搜索设置
opt.ignorecase = true -- 忽略大小写
opt.smartcase = true -- 如果搜索中包含大写，那么默认区分大小写

opt.cursorline = true -- 高亮光标所在的行

opt.termguicolors = true -- 打开termguicolors
opt.background = "dark" -- 当配色方案同时支持light和dark的时候，开启dark
opt.signcolumn = "yes" -- 展示sign column

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus") -- 使用系统剪贴板作为默认的寄存器

-- 窗口切分
opt.splitright = true -- 垂直切分窗口时，窗口位于右侧
opt.splitbelow = true -- 水平切分窗口时，窗口位于下方

-- 关闭swap文件
opt.swapfile = false
