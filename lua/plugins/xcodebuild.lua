return {
	"wojciech-kulik/xcodebuild.nvim",
	dependencies = {
		"nvim-telescope/telescope.nvim",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("xcodebuild").setup({
			logs = { -- build & test logs
				auto_open_on_failed_tests = false, -- open logs when tests failed
				auto_open_on_failed_build = false, -- open logs when build failed
				auto_close_on_app_launch = true, -- open logs when build failed
				auto_close_on_success_build = true, -- open logs when build failed
				-- auto_focus = false, -- focus logs buffer when opened
				-- live_logs = true, -- if true logs will be updated in real-time
			},
		})
	end,
}
