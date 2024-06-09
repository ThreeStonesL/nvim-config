local vscode = require("vscode")
local opt = vim.opt

opt.relativenumber = true
opt.number = true

vim.notify = vscode.notify
vim.g.clipboard = vim.g.vscode_clipboard
opt.clipboard:append("unnamedplus")
