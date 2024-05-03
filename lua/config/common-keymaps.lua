-- Setup the pageup and pagedown to be only 5 lines
vim.api.nvim_set_keymap("n", "<C-u>", "5<C-u>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-d>", "5<C-d>", { noremap = true, silent = true })

-- this line is required so the submenu modifications will work
require("which-key").setup({})

-- Toggle terminal
local map = vim.keymap.set
map("n", "<leader>tt", "<cmd>ToggleTerm<cr>", { desc = "Toggle terminal" })
map("n", "<leader>tv", "<cmd>ToggleTerm direction=vertical<cr>", { desc = "Toggle vertical terminal" })
map("n", "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", { desc = "Toggle float terminal" })

-- ChatGPT
map("n", "<leader>pc", "<cmd>ChatGPT<cr>", { desc = "ChatGPT" })
map({ "n", "v" }, "<leader>pe", "<cmd>ChatGPTEditWithInstruction<cr>", { desc = "Edit with instruction" })
map({ "n", "v" }, "<leader>pg", "<cmd>ChatGPTRun grammar_correction<cr>", { desc = "Grammar correction" })
map({ "n", "v" }, "<leader>pt", "<cmd>ChatGPTRun translate<cr>", { desc = "Translate" })
map({ "n", "v" }, "<leader>pk", "<cmd>ChatGPTRun keywords<cr>", { desc = "Keywords" })
map({ "n", "v" }, "<leader>pd", "<cmd>ChatGPTRun docstring<cr>", { desc = "Docstring" })
map({ "n", "v" }, "<leader>pa", "<cmd>ChatGPTRun add_tests<cr>", { desc = "Add tests" })
map({ "n", "v" }, "<leader>po", "<cmd>ChatGPTRun optimize_code<cr>", { desc = "Optimize code" })
map({ "n", "v" }, "<leader>ps", "<cmd>ChatGPTRun summarize<cr>", { desc = "Summarize" })
map({ "n", "v" }, "<leader>pf", "<cmd>ChatGPTRun fix_bugs<cr>", { desc = "Fix bugs" })
map({ "n", "v" }, "<leader>px", "<cmd>ChatGPTRun explain_code<cr>", { desc = "Explain code" })
map({ "n", "v" }, "<leader>pr", "<cmd>ChatGPTRun roxygen_edit<cr>", { desc = "Roxygen edit" })
map({ "n", "v" }, "<leader>pl", "<cmd>ChatGPTRun code_readability_analysis<cr>", { desc = "Code readability analysis" })

local prompt =
  "You are a neovim expert. You know everything about use of commands and lua and can provide the exact nvim command to do things I ask. Always provide only the command that seems most relevant and the command only."
map({ "n", "v" }, "<leader>pn", '<cmd>ChatGPT "' .. prompt .. '"<cr>', { desc = "Nvim helper" })

-- Autosession
--map({ "n", "v" }, "<leader>fs", require("auto-session.session-lens").search_session, { desc = "Search session" })
