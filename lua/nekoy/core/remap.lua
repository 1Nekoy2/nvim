vim.g.mapleader = " " -- sets leader key
vim.g.maplocalleader = ' '
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--CMake
vim.keymap.set("n", "<leader>cg", "<cmd>CMakeGenerate<CR>", {})
vim.keymap.set("n", "<leader>cb", "<cmd>CMakeBuild<CR>", {})
vim.keymap.set("n", '<leader>cq', "<cmd>CMakeClose<cr>", {})
vim.keymap.set("n", '<leader>cc', "<cmd>CMakeClean<cr>", {})
vim.keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", {}) -- toggle file explorer

--NvimTree
vim.keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", {}) -- toggle file explorer on current file
vim.keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", {}) -- collapse file explorer
vim.keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", {}) -- refresh file explorer
--vim.keymap.set("n","<leader>db", vim.cmd.DapToggleBreakpoint.CR )
--vim.keymap.set("n","<leader>dr", vim.cmd.DapContinue.CR )

-- reload config
vim.keymap.set("n", "<leader>r", ":source ~/.config/nvim/init.lua<CR>")	-- reload neovim config

-- Tab bindings 
vim.keymap.set("n", "<leader>t", ":tabnew<CR>")			-- space+t creates new tab
vim.keymap.set("n", "<leader>x", ":tabclose<CR>")			-- space+x closes current tab
vim.keymap.set("n", "<leader>j", ":tabprevious<CR>")		-- space+j moves to previous tab
vim.keymap.set("n", "<leader>k", ":tabnext<CR>")			-- space+k moves to next tab

-- easy split generation
vim.keymap.set("n", "<leader>v", ":vsplit")				-- space+v creates a veritcal split
vim.keymap.set("n", "<leader>s", ":split")					-- space+s creates a horizontal split

-- easy split navigation
vim.keymap.set("n", "<C-h>", "<C-w>h")						-- control+h switches to left split
vim.keymap.set("n", "<C-l>", "<C-w>l")						-- control+l switches to right split
vim.keymap.set("n", "<C-j>", "<C-w>j")						-- control+j switches to bottom split
vim.keymap.set("n", "<C-k>", "<C-w>k")						-- control+k switches to top split

-- buffer navigation
vim.keymap.set("n", "<Tab>", ":bnext <CR>")				-- Tab goes to next buffer
vim.keymap.set("n", "<S-Tab>", ":bprevious <CR>")			-- Shift+Tab goes to previous buffer
vim.keymap.set("n", "<leader>d", ":bd! <CR>")				-- Space+d delets current buffer

-- Easy way to get back to normal mode from home row
vim.keymap.set("i", "kj", "<Esc>")					-- kj simulates ESC
vim.keymap.set("i", "jk", "<Esc>")					-- jk simulates ESC

-- Automatically close brackets, parethesis, and quotes
vim.keymap.set("i", "'", "''<left>")
vim.keymap.set ("i", "\"", "\"\"<left>")
vim.keymap.set("i", "(", "()<left>")
vim.keymap.set("i", "[", "[]<left>")
vim.keymap.set("i", "{", "{}<left>")
vim.keymap.set("i", "{;", "{};<left><left>")
vim.keymap.set("i", "/*", "/**/<left><left>")

-- Visual Maps
vim.keymap.set("v", "<leader>r", "\"hy:%s/<C-r>h//g<left><left>")			    -- Replace all instances of highlighted words 
vim.keymap.set("v", "<C-s>", ":sort<CR>")									-- Sort highlighted text in visual mode with Control+S
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")								-- Move current line down
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")								-- Move current line up 

-- Markdown Preview
vim.keymap.set("n", "<leader>md","<cmd>MarkdownPreview<CR>")
