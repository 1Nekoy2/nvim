-- #######################################################################################
--
--
--  ███╗   ██╗███████╗ ██████╗    ████████╗██████╗ ███████╗███████╗
--  ████╗  ██║██╔════╝██╔═══██╗   ╚══██╔══╝██╔══██╗██╔════╝██╔════╝
--  ██╔██╗ ██║█████╗  ██║   ██║█████╗██║   ██████╔╝█████╗  █████╗
--  ██║╚██╗██║██╔══╝  ██║   ██║╚════╝██║   ██╔══██╗██╔══╝  ██╔══╝
--  ██║ ╚████║███████╗╚██████╔╝      ██║   ██║  ██║███████╗███████╗
--  ╚═╝  ╚═══╝╚══════╝ ╚═════╝       ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝
--
-- by Nekoy
-- #######################################################################################

return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	opts = {
		filesystem = {
			filtered_items = {
				visible = true,
				show_hidden_count = true,
				hide_dotfiles = false,
				hide_gitignored = true,
				hide_by_name = {
					-- '.git',
					-- '.DS_Store',
					-- 'thumbs.db',
				},
				never_show = {},
			},
		},
	},
	config = function()
		require("neo-tree").setup({
			event_handlers = {

				{
					event = "file_opened",
					handler = function(file_path)
						-- auto close
						-- vimc.cmd("Neotree close")
						-- OR
						require("neo-tree.command").execute({ action = "close" })
					end,
				},
			},
		})
	end,
}
