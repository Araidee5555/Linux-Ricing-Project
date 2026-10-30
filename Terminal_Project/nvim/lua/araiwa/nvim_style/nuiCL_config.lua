-- nui is a Component Library = 'yes'
local M = {}
local Menu = require("nui.menu")

local function menu()
	local m = Menu({
		position = "50%",
		size = { width = 35, height = 7 },
		border = {
			style = "single",
			text = { top = "[Choose-your-Component-lib]", top_align = "center" },
		},
		win_options = {
			winhighlight = "Normal:Normal,FloatBorder:Normal",
		},
	}, {
		lines = {
			Menu.item("Hydrogen (H)"),
			Menu.item("Carbon (C)"),
			Menu.item("Nitrogen (N)"),
			Menu.separator("Noble-Gases", { char = "-", text_align = "right" }),
			Menu.item("Helium (He)"),
			Menu.item("Neon (Ne)"),
			Menu.item("Argon (Ar)"),
		},
		max_width = 20,
		keymap = {
			focus_next = { "j", "<Down>", "<Tab>" },
			focus_prev = { "k", "<Up>", "<S-Tab>" },
			close = { "<Esc>", "<C-c>" },
			submit = { "<CR>", "<Space>" },
		},
		on_close = function()
			print("Menu Closed!")
		end,
		on_submit = function(item)
			print("Menu Submitted: ", item.text)
		end,
	})

	m:mount()
end

function M.setup()
	vim.api.nvim_create_user_command("NuiCL", function()
		menu()
	end, {})
end

return M
