-- #######################################################################################
--
--
--  ██████╗ ██╗███╗   ██╗██████╗ ███████╗
--  ██╔══██╗██║████╗  ██║██╔══██╗██╔════╝
--  ██████╔╝██║██╔██╗ ██║██║  ██║███████╗
--  ██╔══██╗██║██║╚██╗██║██║  ██║╚════██║
--  ██████╔╝██║██║ ╚████║██████╔╝███████║
--  ╚═════╝ ╚═╝╚═╝  ╚═══╝╚═════╝ ╚══════╝
--
-- by Nekoy
-- #######################################################################################

vim.g.mapleader = " " -- sets leader key
vim.g.maplocalleader = " "

-- lsp
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Code definitions" })
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})

-- none-ls
vim.keymap.set("n", "<leader>p", vim.lsp.buf.format, { desc = "None-ls formating" })

vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>', { desc = "Disable arrow keys in normal mode" })
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>', { desc = "Disable arrow keys in normal mode" })
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>', { desc = "Disable arrow keys in normal mode" })
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>', { desc = "Disable arrow keys in normal mode" })

-- gitsigns
vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", { desc = "Preview hunk" })
vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})

-- neotree
vim.keymap.set("n", "<leader>ee", ":Neotree filesystem reveal right<CR>", { desc = "Show filesystem in neotree" })

-- lazygit
vim.keymap.set("n", "<leader>lg", "<cmd>LazyGit<CR>", { desc = 'Open lazyGit'})
vim.keymap.set("n", "<leader>lc", "<cmd>LazyGitFilter<CR>", { desc = 'Open lazyGit filters'})

-- reload config
vim.keymap.set("n", "<leader>r", ":source ~/.config/nvim/init.lua<CR>", { desc = "Reload neovim config" })

-- Tab bindings
vim.keymap.set("n", "<leader>t", ":tabnew<CR>", { desc = "Creates new tab" })
vim.keymap.set("n", "<leader>x", ":tabclose<CR>", { desc = "Closes current tab" })
vim.keymap.set("n", "<leader>j", ":tabprevious<CR>", { desc = "Moves to previous tab" })
vim.keymap.set("n", "<leader>k", ":tabnext<CR>", { desc = "Moves to next tab" })

-- easy split generation
vim.keymap.set("n", "<leader>v", ":vsplit", { desc = "Creates a veritcal split" })
vim.keymap.set("n", "<leader>s", ":split", { desc = "Creates a horizontal split" })

-- easy split navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Switches to left split" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Switches to right split" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Switches to bottom split" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Switches to top split" })

-- buffer navigation
vim.keymap.set("n", "<Tab>", ":bnext <CR>", { desc = "Goes to next buffer" })
vim.keymap.set("n", "<S-Tab>", ":bprevious <CR>", { desc = "Goes to previous buffer" })
vim.keymap.set("n", "<leader>d", ":bd! <CR>", { desc = "Delets current buffer" })

-- Easy way to get back to normal mode from home row
vim.keymap.set("i", "kj", "<Esc>", { desc = "Simulates ESC" })
vim.keymap.set("i", "jk", "<Esc>", { desc = "Simulates ESC" })

-- Automatically close brackets, parethesis, and quotes
vim.keymap.set("i", "'", "''<left>", { desc = "Finish ' brackets" })
vim.keymap.set("i", '"', '""<left>', { desc = 'Finish " brackets' })
vim.keymap.set("i", "(", "()<left>", { desc = "Finish ( brackets" })
vim.keymap.set("i", "[", "[]<left>", { desc = "Finish [ brackets" })
vim.keymap.set("i", "{", "{}<left>", { desc = "Finish { brackets" })
vim.keymap.set("i", "{;", "{};<left><left>", { desc = "Finish {; brackets" })
vim.keymap.set("i", "/*", "/**/<left><left>", { desc = "Finish /* brackets" })

-- Visual Maps
vim.keymap.set(
	"v",
	"<leader>r",
	'"hy:%s/<C-r>h//g<left><left>',
	{ desc = "Replace all instances of highlighted words" }
)
vim.keymap.set("v", "<C-s>", ":sort<CR>", { desc = "Sort highlighted text in visual mode with" })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move current line down" })
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv", { desc = "Move current line up" })

-- Markdown Preview
vim.keymap.set("n", "<leader>md", "<cmd>MarkdownPreview<CR>", { desc = "Markdown Preview" })
