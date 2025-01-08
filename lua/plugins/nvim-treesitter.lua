return {
	{
		"nvim-treesitter/nvim-treesitter",
		event = { "BufReadPre", "BufNewFile" },
		build = ":TSUpdate",
		dependencies = {
			"windwp/nvim-ts-autotag",
		},
		config = function()
			local treesitter = require("nvim-treesitter.configs")

			treesitter.setup({
				incremental_selection = {
					enable = false,
					keymaps = {
						scope_incremental = "a",
						node_decremental = "z",
					},
				},
				highlight = {
					enable = true,
				},
				indent = { enable = true },
				autotag = { enable = false },
				ensure_installed = {
					"swift",
					"json",
					"yaml",
					"markdown",
					"markdown_inline",
					"lua",
					"gitignore",
				},
				auto_install = true,
			})
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter-context",
		event = "LazyFile",
		enabled = true,
		keys = {
			{
				"<leader>ut",
				function()
					local tsc = require("treesitter-context")
					tsc.toggle()
					if LazyVim.inject.get_upvalue(tsc.toggle, "enabled") then
						LazyVim.info("Enabled Treesitter Context", { title = "Option" })
					else
						LazyVim.warn("Disabled Treesitter Context", { title = "Option" })
					end
				end,
				desc = "Toggle Treesitter Context",
			},
		},
		config = function()
			local treesitter = require("treesitter-context")
			local opts = { mode = "topline", max_lines = 3 }
			treesitter.setup(opts)

			-- patch the lagging in swift
			local group = "treesitter_context_update"
			local autocommands = vim.api.nvim_get_autocmds({
				group = group,
				event = { "CursorMoved", "WinScrolled" },
			})
			local callback = autocommands[1].callback
			opts = {}
			opts.callback = callback
			opts.group = group
			vim.api.nvim_create_autocmd("CursorHold", opts)
			for _, i in ipairs(autocommands) do
				vim.api.nvim_del_autocmd(i.id)
			end
		end,
	},
}
