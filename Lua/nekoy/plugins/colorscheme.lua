return 
{
 	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
    config = function()
		vim.cmd.colorscheme 'catppuccin-mocha'
--    require("catppuccin").setup({
--    integrations = {
--        cmp = true,
--        nvimtree = true,
--        treesitter = true,
--        telescope = {
--        enabled = true,
        -- style = "nvchad"
--        }, 
--    }
    end,
}
