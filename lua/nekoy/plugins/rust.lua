return {
	{
		"rust-lang/rust.vim",
		ft = "rust",
		init = function()
			vim.g.rustfmt_autosave = 1
		end,
	},
--	{
--		"mrcjkb/rustaceanvim",
--		version = "^4", -- Recommended
--		lazy = false, -- This plugin is already lazy
--		config = function()
--			local bufnr = vim.api.nvim_get_current_buf()
--			vim.keymap.set("n", "<leader>a", function()
--				vim.cmd.RustLsp("codeAction") -- supports rust-analyzer's grouping
--				-- or vim.lsp.buf.codeAction() if you don't want grouping.
--			end, { silent = true, buffer = bufnr })
--			vim.g.rustaceanvim = function()
--				-- Update this path
--				local extension_path = vim.env.HOME .. "/.vscode/extensions/vadimcn.vscode-lldb-1.10.0/"
--				local codelldb_path = extension_path .. "adapter/codelldb"
--				local liblldb_path = extension_path .. "lldb/lib/liblldb"
--				local this_os = vim.uv.os_uname().sysname
--
--				-- The path is different on Windows
--				if this_os:find("Windows") then
--					codelldb_path = extension_path .. "adapter\\codelldb.exe"
--					liblldb_path = extension_path .. "lldb\\bin\\liblldb.dll"
--				else
--					-- The liblldb extension is .so for Linux and .dylib for MacOS
--					liblldb_path = liblldb_path .. (this_os == "Linux" and ".so" or ".dylib")
--				end
--
--				local cfg = require("rustaceanvim.config")
--				return {
--					dap = {
--						adapter = cfg.get_codelldb_adapter(codelldb_path, liblldb_path),
--					},
--				}
--			end
--		end,
--	},
}
