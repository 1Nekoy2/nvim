vim.g.mapleader = " "
vim.g.maplocalleader = ' '
vim.o.mouse = 'a'
vim.o.clipboard = 'unnamedplus'
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>cg", "<cmd>CMakeGenerate<CR>", {})
vim.keymap.set("n", "<leader>cb", "<cmd>CMakeBuild<CR>", {})
vim.keymap.set("n", '<leader>cq', "<cmd>CMakeClose<cr>", {})
vim.keymap.set("n", '<leader>cc', "<cmd>CMakeClean<cr>", {})
vim.keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", {}) -- toggle file explorer
vim.keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", {}) -- toggle file explorer on current file
vim.keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", {}) -- collapse file explorer
vim.keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", {}) -- refresh file explorer
--vim.keymap.set("n","<leader>db", vim.cmd.DapToggleBreakpoint.CR )
--vim.keymap.set("n","<leader>dr", vim.cmd.DapContinue.CR )
