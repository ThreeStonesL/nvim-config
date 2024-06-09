if vim.g.vscode then
	-- Vscode extension
	require("ThreeStonesL_vscode.core")
else
	require("ThreeStonesL.core")
	require("ThreeStonesL.lazy")
end
