--vim.opt.autoindent = true
vim.opt.autoindent = false
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.cmd('filetype plugin indent on')
vim.opt.incsearch = ture
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.opt.errorbells = false
vim.opt.visualbell = false
vim.opt.mouse = ""
vim.opt.backup = false
vim.g.mapleader = " "
vim.keymap.set('i', '<C-k>', '<Esc>', {noremap = true})

vim.keymap.set('i', '<C-j>', '<DOWN>', {noremap = true})
vim.keymap.set('i', '<C-k>', '<UP>', {noremap = true})
vim.keymap.set('i', '<C-h>', '<LEFT>', {noremap = true})
vim.keymap.set('i', '<C-l>', '<RIGHT>', {noremap = true})

vim.keymap.set('n', '<Leader>j', '10<DOWN>', {noremap = true})
vim.keymap.set('n', '<Leader>k', '10<UP>', {noremap = true})
vim.keymap.set('n', '<Leader>h', '0', {noremap = true})
vim.keymap.set('n', '<Leader>l', '$', {noremap = true})

vim.keymap.set('v', '<Leader>j', '10<DOWN>', {noremap = true})
vim.keymap.set('v', '<Leader>k', '10<UP>', {noremap = true})
vim.keymap.set('v', '<Leader>h', '^', {noremap = true})
vim.keymap.set('v', '<Leader>l', '$', {noremap = true})

vim.keymap.set('n', '<Leader>[', ':tabprevious <CR>', {noremap = true})
vim.keymap.set('n', '<Leader>]', ':tabnext <CR>', {noremap = true})

-- Blackhole register
vim.keymap.set('n', 'x', '"_x')
vim.keymap.set('n', 'X', '"_X')
vim.keymap.set('n', 's', '"_s')
vim.keymap.set('n', 'S', '"_S')
vim.keymap.set('n', 'D', '"_D')
vim.keymap.set('n', 'dgg', '"_dgg')
vim.keymap.set('n', 'dG', '"_dG')
vim.keymap.set('n', 'cw', '"_cw')
vim.keymap.set('n', 'ce', '"_ce')
vim.keymap.set('n', 'cb', '"_cb')
vim.keymap.set('n', 'cc', '"_cc')
vim.keymap.set('n', 'C', '"_C')
vim.keymap.set('n', 'cgg', '"_cgg')
vim.keymap.set('n', 'cG', '"_cG')

-- telescope.nvim keymaps
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fhf', '<cmd>lua require("telescope.builtin").find_files({ cwd = "$HOME" }) <CR>')
vim.keymap.set('n', '<leader>frf', '<cmd>lua require("telescope.builtin").find_files({ cwd = "/" }) <CR>')
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fhg', '<cmd>lua require("telescope.builtin").live_grep({ cwd = "$HOME" }) <CR>')
vim.keymap.set('n', '<leader>frg', '<cmd>lua require("telescope.builtin").live_grep({ cwd = "/" }) <CR>')
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- telescope-frecency.nvim keymaps
vim.keymap.set('n', '<Leader>tf', ':Telescope frecency <CR>', {noremap = true})
