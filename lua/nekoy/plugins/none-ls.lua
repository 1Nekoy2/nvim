-- #######################################################################################
--
--
--  ███╗   ██╗ ██████╗ ███╗   ██╗███████╗    ██╗     ███████╗
--  ████╗  ██║██╔═══██╗████╗  ██║██╔════╝    ██║     ██╔════╝
--  ██╔██╗ ██║██║   ██║██╔██╗ ██║█████╗█████╗██║     ███████╗
--  ██║╚██╗██║██║   ██║██║╚██╗██║██╔══╝╚════╝██║     ╚════██║
--  ██║ ╚████║╚██████╔╝██║ ╚████║███████╗    ███████╗███████║
--  ╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝    ╚══════╝╚══════╝
--
-- by Nekoy
-- #######################################################################################

return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
				require("none-ls.formatting.rustfmt"),
				require("none-ls.formatting.beautysh"),
			},
		})
	end,
}
