-- #######################################################################################
--
--
--  ██╗     ██╗   ██╗ █████╗ ██╗     ██╗███╗   ██╗███████╗
--  ██║     ██║   ██║██╔══██╗██║     ██║████╗  ██║██╔════╝
--  ██║     ██║   ██║███████║██║     ██║██╔██╗ ██║█████╗
--  ██║     ██║   ██║██╔══██║██║     ██║██║╚██╗██║██╔══╝
--  ███████╗╚██████╔╝██║  ██║███████╗██║██║ ╚████║███████╗
--  ╚══════╝ ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝╚═╝  ╚═══╝╚══════╝
--
-- by Nekoy
-- #######################################################################################

return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },

	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status") -- to configure lazy pending updates count
		-- configure lualine with modified theme
		lualine.setup({
			options = {
				icons_enabled = false,
				theme = "catppuccin-mocha",
				component_separators = "|",
				section_separators = "",
			},
			sections = {
				lualine_x = {
					{
						lazy_status.updates,
						cond = lazy_status.has_updates,
						color = { fg = "#C5CEEC" },
					},
					{ "encoding" },
					{ "fileformat" },
					{ "filetype" },
				},
			},
		})
	end,
}
