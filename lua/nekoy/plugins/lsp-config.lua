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
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
	},
	{
		"neovim/nvim-lspconfig",
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
			lspconfig.clangd.setup({
				capabilities = capabilities,
			})
			lspconfig.bashls.setup({
				capabilities = capabilities,
			})
			lspconfig.cssls.setup({
				capabilities = capabilities,
			})
		end,
	},
}
