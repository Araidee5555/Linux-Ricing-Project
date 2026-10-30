local M = {}

M.setup = function()
  -- 1. Give the plugin its options
  require("tokyonight").setup({
    style = "night",
    transparent = false,
  })

  -- 2. Apply the colorscheme
  vim.cmd[[colorscheme tokyonight-night]]
end

return M
