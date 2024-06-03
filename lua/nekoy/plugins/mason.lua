return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")

		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				"bashls",
				"html",
				"cssls",
				"lua_ls",
				"clangd",
				"rust_analyzer",
				"taplo",
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				-- formatters
				"prettier",
				"stylua",
				"beautysh",
				"rustfmt",
				"clang-format",
			},
		})
	end,
}
