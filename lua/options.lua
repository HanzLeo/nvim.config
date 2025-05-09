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

  vim.opt.linespace = 2
  -- 启用抗锯齿和动画
-- neovide cursor 
  vim.g.neovide_cursor_animation_length = 0.1
  vim.g.neovide_cursor_trail_size = 0.5
  vim.g.neovide_scroll_animation_length = 0.3
  vim.g.neovide_cursor_vfx_mode = "pixiedust"
  -- vim.g.neovide_cursor_vfx_mode = "torpedo"
  vim.g.neovide_cursor_vfx_particle_density = 100.0

  vim.g.neovide_scroll_speed = 3.0  -- 默认值为 1.0，增大加快滚动

vim.g.neovide_floating_shadow = true
vim.g.neovide_input_ime = true
vim.g.neovide_hide_mouse_when_typing = true

-- 继承设置
local opt = vim.opt

opt.spell = false
opt.wrap = true
opt.relativenumber = true
opt.guifont = { "Maple Mono NF CN", ":h16" }
-- opt.guifont = {"CaskaydiaCove Nerd Font", "Source Han Sans CN", "微软雅黑", "Maple Mono SC NF", ":h12" }
opt.guicursor =
  "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait0-blinkoff0-blinkon0-Cursor/lCursor,sm:block-blinkwait0-blinkoff0-blinkon0"
opt.list = true
opt.listchars = { space = "·" }
opt.cinkeys = "0{,0},0),0],0#,!^F,o,O,e"
opt.indentkeys = "0{,0},0),0],0#,!^F,o,O,e"
