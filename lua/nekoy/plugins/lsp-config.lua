-- #######################################################################################
--
--
--  ██╗     ███████╗██████╗        ██████╗ ██████╗ ███╗   ██╗███████╗██╗ ██████╗
--  ██║     ██╔════╝██╔══██╗      ██╔════╝██╔═══██╗████╗  ██║██╔════╝██║██╔════╝
--  ██║     ███████╗██████╔╝█████╗██║     ██║   ██║██╔██╗ ██║█████╗  ██║██║  ███╗
--  ██║     ╚════██║██╔═══╝ ╚════╝██║     ██║   ██║██║╚██╗██║██╔══╝  ██║██║   ██║
--  ███████╗███████║██║           ╚██████╗╚██████╔╝██║ ╚████║██║     ██║╚██████╔╝
--  ╚══════╝╚══════╝╚═╝            ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝     ╚═╝ ╚═════╝
--
-- by Nekoy
-- #######################################################################################

return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		{ "antosha417/nvim-lsp-file-operations", config = true },
		{ "folke/neodev.nvim", opts = {} },
	},
	lazy = false,
	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		local lspconfig = require("lspconfig")
		lspconfig.lua_ls.setup({
			capabilities = capabilities,
		})
		lspconfig.rust_analyzer.setup({
			capabilities = capabilities,
		})
		lspconfig.taplo.setup({
			capabilities = capabilities,
		})
		lspconfig.clangd.setup({
			capabilities = capabilities,
		})
		lspconfig.bashls.setup({
			capabilities = capabilities,
		})
		lspconfig.cssls.setup({
			capabilities = capabilities,
		})
		lspconfig.html.setup({
			capabilities = capabilities,
		})
	end,
}
