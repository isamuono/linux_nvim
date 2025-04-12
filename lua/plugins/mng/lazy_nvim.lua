local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local nvim_plugins = {
  "folke/lazy.nvim",
  require("plugins.nvim-tree"),
  require("plugins.indent-blankline_nvim"),
  require("plugins.nvim-surround"),
  --require("plugins.denops_vim"),
  require("plugins.ddc_vim"),
  require("plugins.telescope_nvim"),
  require("plugins.telescope-frecency_nvim"),
}

require('lazy').setup(
  nvim_plugins
)
