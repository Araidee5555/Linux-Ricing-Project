-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ 
	  "git", 
	  "clone", 
	  "--filter=blob:none", 
	  "--branch=stable", 
	  lazyrepo, 
	  lazypath 
  })

-- ERROR echo
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({ "ErrorMsg" }, true, {})
  end
end
vim.opt.rtp:prepend(lazypath)

-- Plugins import
local plugins = {
  { import = "araiwa.plugins" }, 
}

-- Lazy window config
local opts = {
  ui = {
    size = { width = 1, height = 1 },  -- 1 = 100%, 0.9 = 90%
    border = "none",
  },
}

require("lazy").setup(plugins, opts)
