return {
  "pysan3/autosession.nvim", -- restore previous session
  event = { "VeryLazy" },                   -- OPTIONAL
  -- lazy = false,                          -- If you do not want to lazy load.
  config = function()
    require("autosession").setup {
	  msg = "Autosession restored", -- string: printed when startup is completed
	  restore_on_setup = true, -- boolean: If true, automatically restore session on nvim startup
	  warn_on_setup = true, -- boolean: If true, warning shown when no `.session.vim` is found
	  autosave_on_quit = true, -- boolean: If true, automatically overwrites sessionfile if exists
	  sessionfile_name = ".session.vim", -- string: default name of sessionfile. better be .gitignored
	  disable_envvar = "NVIM_DISABLE_AUTOSESSION", -- string: disable this plugin altogether when this envvar is found
    }
  end,
}
