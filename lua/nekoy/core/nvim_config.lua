vim.wo.number = true
vim.wo.relativenumber = true
vim.opt.syntax = "ON"
vim.opt.backup = false
vim.opt.compatible = false				-- turn off vi compatibility mode
vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.fileencoding = "utf-8"				-- encoding set to utf-8
vim.opt.expandtab = true
vim.opt.hlsearch = false				-- disable all highlighted search results
vim.opt.incsearch = true				-- enable incremental searching
vim.opt.wrap = true						-- enable text wrapping
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.showmode = false
vim.opt.scrolloff = 8					-- scroll page when cursor is 8 lines from top/bottom
vim.opt.sidescrolloff = 8				-- scroll page when cursor is 8 spaces from left/right
vim.opt.splitbelow = true				-- split go below
vim.opt.splitright = true				-- vertical split to the right
vim.opt.termguicolors = true			-- terminal gui colors
vim.o.breakindent = true                  -- Enable break indent
vim.o.undofile = true                     -- Save undo history
vim.o.ignorecase = true                   -- Case-insensitive searching UNLESS \C or capital in search
vim.o.smartcase = true
vim.wo.signcolumn = 'yes'                 -- Keep signcolumn on by default
vim.o.updatetime = 250                    -- Decrease update time
vim.o.timeoutlen = 300
vim.o.completeopt = 'menuone,noselect'    -- Set completeopt to have a better completion experience
vim.o.mouse = 'a'
vim.o.clipboard = 'unnamedplus'
vim.cmd('set path+=**')					-- search current directory recursively
vim.cmd('filetype plugin on')			-- set filetype 
vim.cmd('set wildmenu')					-- enable wildmenu
vim.cmd(':autocmd BufNewFile *.sh 0r ~/.config/nvim/lua/nekoy/core/bases/base.sh')
vim.cmd(':autocmd BufNewFile main.cpp 0r ~/.config/nvim/lua/nekoy/core/bases/base.cpp')
vim.cmd(':autocmd BufNewFile CMakeLists.txt 0r ~/.config/nvim/lua/nekoy/core/bases/CMakeLists.txt')
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end
