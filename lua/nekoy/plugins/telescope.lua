-- #######################################################################################
--
--
--  ████████╗███████╗██╗     ███████╗███████╗ ██████╗ ██████╗ ██████╗ ███████╗
--  ╚══██╔══╝██╔════╝██║     ██╔════╝██╔════╝██╔════╝██╔═══██╗██╔══██╗██╔════╝
--     ██║   █████╗  ██║     █████╗  ███████╗██║     ██║   ██║██████╔╝█████╗
--     ██║   ██╔══╝  ██║     ██╔══╝  ╚════██║██║     ██║   ██║██╔═══╝ ██╔══╝
--     ██║   ███████╗███████╗███████╗███████║╚██████╗╚██████╔╝██║     ███████╗
--     ╚═╝   ╚══════╝╚══════╝╚══════╝╚══════╝ ╚═════╝ ╚═════╝ ╚═╝     ╚══════╝
--
-- by Nekoy
-- #######################################################################################

return {
    {
        "nvim-telescope/telescope.nvim",
        branch = "0.1.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            { "nvim-telescope/telescope-fzf-native.nvim" },
            "nvim-telescope/telescope-fzf-native.nvim",
            -- NOTE: If you are having trouble with this installation,
            --       refer to the README for telescope-fzf-native for more instructions.
            build = "make",
            cond = function()
                return vim.fn.executable("make") == 1
            end,
        },
        config = function()
            require("telescope").setup()

            local builtin = require("telescope.builtin")
            vim.keymap.set("n", "<c-p>", builtin.find_files, {})
            vim.keymap.set("n", "<Space><Space>", builtin.oldfiles, {})
            vim.keymap.set("n", "<Space>f", builtin.live_grep, {})
            vim.keymap.set("n", "<Space>fh", builtin.help_tags, {})
        end,
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({}),
                    },
                },
            })
            require("telescope").load_extension("ui-select")
        end,
    },
}
