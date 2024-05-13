-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

require("config.common-keymaps")
-- xcodebuild keymaps

vim.keymap.set("n", "<leader>r", "", { desc = "+xcode" })
vim.keymap.set("n", "<leader>R", "<cmd>XcodebuildPicker<cr>", { desc = "Show Xcodebuild Actions" })
vim.keymap.set("n", "<leader>rf", "<cmd>XcodebuildProjectManager<cr>", { desc = "Show Project Manager Actions" })

vim.keymap.set("n", "<leader>rb", "<cmd>XcodebuildBuild<cr>", { desc = "Build Project" })
vim.keymap.set("n", "<leader>rB", "<cmd>XcodebuildBuildForTesting<cr>", { desc = "Build For Testing" })
vim.keymap.set("n", "<leader>rr", "<cmd>XcodebuildBuildRun<cr>", { desc = "Build & Run Project" })

vim.keymap.set("n", "<leader>rt", "<cmd>XcodebuildTest<cr>", { desc = "Run Tests" })
vim.keymap.set("v", "<leader>rt", "<cmd>XcodebuildTestSelected<cr>", { desc = "Run Selected Tests" })
vim.keymap.set("n", "<leader>rT", "<cmd>XcodebuildTestClass<cr>", { desc = "Run Current Test Class" })
vim.keymap.set("n", "<leader>r.", "<cmd>XcodebuildTestRepeat<cr>", { desc = "Repeat Last Test Run" })

vim.keymap.set("n", "<leader>rl", "<cmd>XcodebuildToggleLogs<cr>", { desc = "Toggle Xcodebuild Logs" })
vim.keymap.set("n", "<leader>rc", "<cmd>XcodebuildToggleCodeCoverage<cr>", { desc = "Toggle Code Coverage" })
vim.keymap.set("n", "<leader>rC", "<cmd>XcodebuildShowCodeCoverageReport<cr>", { desc = "Show Code Coverage Report" })
vim.keymap.set("n", "<leader>re", "<cmd>XcodebuildTestExplorerToggle<cr>", { desc = "Toggle Test Explorer" })
vim.keymap.set("n", "<leader>rs", "<cmd>XcodebuildFailingSnapshots<cr>", { desc = "Show Failing Snapshots" })

vim.keymap.set("n", "<leader>rd", "<cmd>XcodebuildSelectDevice<cr>", { desc = "Select Device" })
vim.keymap.set("n", "<leader>rp", "<cmd>XcodebuildSelectTestPlan<cr>", { desc = "Select Test Plan" })
vim.keymap.set("n", "<leader>rq", "<cmd>Telescope quickfix<cr>", { desc = "Show QuickFix List" })

vim.keymap.set("n", "<leader>rx", "<cmd>XcodebuildQuickfixLine<cr>", { desc = "Quickfix Line" })
vim.keymap.set("n", "<leader>ra", "<cmd>XcodebuildCodeActions<cr>", { desc = "Show Code Actions" })

-- debugging
vim.keymap.set("n", "<F5>", function()
	require("dap").continue()
end)
vim.keymap.set("n", "<F8>", function()
	require("dap").step_over()
end)
vim.keymap.set("n", "<F7>", function()
	require("dap").step_into()
end)
