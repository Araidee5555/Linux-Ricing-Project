return	{
  "ibhagwan/fzf-lua",
	-- cmd = "",   -- If you enable = tells lazy.nvim: "don't load this plugin until someone runs : command"
	config = function()
		require("araiwa.nvim_style.fzf_config").setup()
	end,
}
