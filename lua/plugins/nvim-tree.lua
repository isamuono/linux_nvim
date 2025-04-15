vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true
vim.g.mapleader = " "

return {
  {"nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    -- pass to setup along with your other options
    config = function()
      require("nvim-tree").setup {
        view = {
          preserve_window_proportions = true,
          width = 20,
        },
      }
    end,
    keys = {
      {mode = "n", "<C-N>", ":NvimTreeToggle<CR>", silent = true},
      {mode = "n", "<C-S-N>", ":NvimTreeFocus<CR>", silent = true},
      {mode = "n", "t<Leader>+", ":NvimTreeResize +5<CR>"},
      {mode = "n", "t<Leader>-", ":NvimTreeResize -5<CR>"},
      {mode = "n", "t<Leader>f", ":NvimTreeRefresh<CR>"}
    },
  },
  {"nvim-tree/nvim-web-devicons",
    opts = {},
    config = function()
      --require("nvim-web-devicons").get_icons {}
      require('nvim-web-devicons').setup {
        override = {
          yml, yaml = {
            icon = '',
            color = '#9F74B3' --vscode yml/yaml icon color
          }
        }
      }
    end,
  }
}
