return {
	"MunifTanjim/nui.nvim",
	-- cmd = "",   -- If you enable = tells lazy.nvim: "don't load this plugin until someone runs : command"
	config = function()
		require("araiwa.nvim_style.nuiCL_config").setup()
	end,
}
