return {
  "folke/tokyonight.nvim",
  lazy = false, -- true = don’t load this plugin at startup
  priority = 1000,
  -- load the config file
  config = function()
	  require("araiwa.nvim_style.colorscheme_config").setup()
  end,
}
