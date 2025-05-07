require "nvchad.options"

-- add yours here!
-- 为 markdown 文件设置 conceallevel=1
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.wo.conceallevel = 1
  end
})

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
