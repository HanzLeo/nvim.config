require "nvchad.options"

-- add yours here!
-- 为 markdown 文件设置 conceallevel=1
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.wo.conceallevel = 1
  end
})

local o = vim.o
o.cursorlineopt ='both' -- to enable cursorline!

-- 设置光标上下保留的行数（垂直居中）
vim.opt.scrolloff = 999
-- 设置光标左右保留的列数（水平居中，可选）
-- vim.opt.sidescrolloff = 999
