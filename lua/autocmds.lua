local augroup = vim.api.nvim_create_augroup -- Create/get autocommand group
local autocmd = vim.api.nvim_create_autocmd -- Create autocommand

-- Disable autoindent on comment
autocmd({"BufNewFile", "BufEnter"}, {
    pattern = "*",
    --command = "set indentkeys-=0#",
    callback = function()
        vim.opt.indentkeys:remove({"0#", "0-", "o", "O"})
    end,
})

-- Don't auto commenting new lines
autocmd("BufEnter", {
    pattern = "*",
    command = "set fo-=c fo-=r fo-=o",
})

-- Remove whitespace on save
autocmd("BufWritePre", {
    pattern = "*",
    command = ":%s/\\s\\+$//e",
})

-- Restore cursor location when file is opened
autocmd({"BufReadPost"}, {
    pattern = "*",
    callback = function()
        vim.api.nvim_exec('silent! normal! g`"zv', false)
    end,
})
