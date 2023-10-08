return 
{
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", },
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require('telescope').setup()
    local builtin = require('telescope.builtin')

    vim.keymap.set('n', '<c-p>', builtin.find_files, {})
    vim.keymap.set('n', '<Space><Space>', builtin.oldfiles, {})
    vim.keymap.set('n', '<Space>fg', builtin.live_grep, {})
    vim.keymap.set('n', '<Space>fh', builtin.help_tags, {})
  end
}
