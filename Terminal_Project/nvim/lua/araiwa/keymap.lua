-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)

--------------------
---  Mode Carify  ---
--------------------
-- "n" = normal mode
-- "i" = insert mode
-- "v" = visual mode 
-- "t" = terminal mode

---------------
--- Command ---
---------------
-- command set
vim.g.mapleader = " " 
vim.opt.clipboard = "unnamedplus"
-- Disable keyCommand
vim.keymap.set({ "n", "i", "v", "t" }, "<C-z>", "<Nop>")
vim.keymap.set({ "n", "i", "v", "t" }, "<leader>yy", "<Nop>")

------------------------------
--- Terminal Keymap config ---
------------------------------
-- Terminal key behavior
vim.api.nvim_create_autocmd({ "BufWinEnter", "WinEnter", "TermOpen" }, {
	pattern = "term://*zsh*",
	callback = function()
	vim.cmd("startinsert")
	end,
})
-- Enter to terminal
vim.keymap.set("n", "<leader>t", function()
	vim.cmd("terminal")
end, { silent = true })
-- Exit terminal mode (Not fully exit terminal)
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { noremap = true })
-- Nvim key behavior
vim.keymap.set("n", "<leader>q", vim.cmd.Ex) -- exit file
vim.keymap.set("n", "<leader>w", vim.cmd.w) -- save file
vim.keymap.set("n", "<leader>mod", function() -- modification on terminal
  vim.bo.modifiable = not vim.bo.modifiable -- notify mode
  print("modifiable = " .. tostring(vim.bo.modifiable))
end, { desc = "Toggle modifiable" })

vim.keymap.set("n", "<ALT-c>", vim.cmd.qa) --fully exit nvim

----------------------
--- Plugins config ---
----------------------
-- Lazy Package Manager
vim.keymap.set( "n", "<leader>l", "<cmd>Lazy<cr>", { silent = true })
-- fzf searching
vim.keymap.set( "n", "<leader>c", "<cmd>Fzf<cr>", { silent = true }) 
-- nui menu
vim.keymap.set( "n", "<leader>mn", "<cmd>NuiCL<cr>", { silent = true })
