return {
	-- add gruvbox
	-- { "morhetz/gruvbox", lazy = false, priority = 1000, opts = {}, },
	{
		"EdenEast/nightfox.nvim",
		config = function()
			local opts = {
				dim_inactive = true,
				styles = {
					comments = "italic, bold",
					functions = "bold",
					conditionals = "NONE",
					constants = "bold",
					keywords = "NONE",
					numbers = "NONE",
					operators = "NONE",
					strings = "italic",
					types = "NONE",
					variables = "NONE",
				},
			}
			require("nightfox").setup({ options = opts })
		end,
	},
	{ "folke/tokyonight.nvim", lazy = false, priority = 1000, opts = {} },
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	--{ "ellisonleao/gruvbox.nvim" },
	--{ "ramojus/mellifluous.nvim" },
	--{ "arzg/vim-swift" },
	--{ "arzg/vim-colors-xcode" },
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "dayfox",
		},
	},
}
