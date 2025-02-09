return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		-- "hrsh7th/cmp-nvim-lsp",
		"saghen/blink.cmp",
		{ "antosha417/nvim-lsp-file-operations", config = true },
	},
	config = function()
		local lspconfig = require("lspconfig")
		--local cmp_nvim_lsp = require("cmp_nvim_lsp")
		--local capabilities = cmp_nvim_lsp.default_capabilities()
		local opts = { noremap = true, silent = true }
		local on_attach = function(_, bufnr)
			opts.buffer = bufnr

			opts.desc = "Show line diagnostics"
			vim.keymap.set("n", "?", vim.diagnostic.open_float, opts)
			--
			-- 	opts.desc = "Show documentation for what is under cursor"
			-- 	vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
			--
			opts.desc = "Go to definition"
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
		end

		local capabilities = require("blink.cmp").get_lsp_capabilities()
		local lspconfig = require("lspconfig")

		lspconfig["sourcekit"].setup({ capabilities = capabilities })
		lspconfig["sourcekit"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})

		-- nice icons
		local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
		for type, icon in pairs(signs) do
			local hl = "DiagnosticSign" .. type
			vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
		end
	end,
}
