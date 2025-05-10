return {
  "lervag/vimtex",
  lazy = false,     -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
     -- 编译报错时不自动弹出错误窗口 :copen 手动打开
    vim.g.vimtex_quickfix_mode = 0
    -- 编译出现警告时，Quickfix 窗口在非焦点状态下打开，但不会自动切换到该窗口
    vim.g.vimtex_quickfix_open_on_warning = 2
    -- 指定 LaTeX 风格
    -- VimTeX configuration goes here, e.g.
    vim.g.vimtex_view_method = "skim"
    vim.g.vimtex_view_general_viewer = '/Applications/Skim.app/Contents/SharedSupport/displayline'
    vim.g.vimtex_view_general_options = '-r @line @pdf @tex'
  end
}
