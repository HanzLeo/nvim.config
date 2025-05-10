-- HELLO, welcome to NormalNvim!
-- ----------------------------------------
-- Here you can define your nvim variables.
-- ----------------------------------------

-- Theme
vim.g.default_colorscheme = "tokyonight-night"

-- Options --------------------------------------------------------------------
vim.opt.breakindent = true -- Wrap indent to match  line start.
vim.opt.clipboard = "unnamedplus" -- Connection to the system clipboard.
vim.opt.cmdheight = 0 -- Hide command line unless needed.
vim.opt.completeopt = { "menu", "menuone", "noselect" } -- Options for insert mode completion.
vim.opt.copyindent = true -- Copy the previous indentation on autoindenting.
vim.opt.cursorline = true -- Highlight the text line of the cursor.
vim.opt.expandtab = true -- Enable the use of space in tab.
vim.opt.fileencoding = "utf-8" -- File content encoding for the buffer.
vim.opt.fillchars = { eob = " " } -- Disable `~` on nonexistent lines.
vim.opt.foldenable = true -- Enable fold for nvim-ufo.
vim.opt.foldlevel = 99 -- set highest foldlevel for nvim-ufo.
vim.opt.foldlevelstart = 99 -- Start with all code unfolded.
vim.opt.foldcolumn = "1" -- Show foldcolumn in nvim 0.9+.
vim.opt.ignorecase = true -- Case insensitive searching.
vim.opt.infercase = true -- Infer cases in keyword completion.

vim.opt.laststatus = 3 -- Global statusline.
vim.opt.linebreak = true -- Wrap lines at 'breakat'.
vim.opt.number = true -- Show numberline.
vim.opt.preserveindent = true -- Preserve indent structure as much as possible.
vim.opt.pumheight = 10 -- Height of the pop up menu.
vim.opt.relativenumber = false -- Show relative numberline.
vim.opt.shiftwidth = 2 -- Number of space inserted for indentation.
vim.opt.showmode = false -- Disable showing modes in command line.
vim.opt.showtabline = 2 -- always display tabline.
vim.opt.signcolumn = "yes" -- Always show the sign column.
vim.opt.smartcase = true -- Case sensitivie searching.
vim.opt.smartindent = false -- Smarter autoindentation.
vim.opt.splitbelow = true -- Splitting a new window below the current one.
vim.opt.splitright = true -- Splitting a new window at the right of the current one.
vim.opt.tabstop = 4 -- Number of space in a tab.

vim.opt.termguicolors = true -- Enable 24-bit RGB color in the TUI.
vim.opt.undofile = true -- Enable persistent undo between session and reboots.
vim.opt.updatetime = 300 -- Length of time to wait before triggering the plugin.
vim.opt.virtualedit = "block" -- Allow going past end of line in visual block mode.
vim.opt.writebackup = false -- Disable making a backup before overwriting a file.
vim.opt.shada = "!,'1000,<50,s10,h" -- Remember the last 1000 opened files
vim.opt.history = 1000 -- Number of commands to remember in a history table (per buffer).
vim.opt.swapfile = false -- Ask what state to recover when opening a file that was not saved.
vim.opt.wrap = true -- Disable wrapping of lines longer than the width of window.
vim.opt.colorcolumn = "80" -- PEP8 like character limit vertical bar.
vim.opt.mousescroll = "ver:1,hor:0" -- Disables hozirontal scroll in neovim.
vim.opt.guicursor = "n:blinkon200,i-ci-ve:ver25" -- Enable cursor blink.
vim.opt.autochdir = true -- Use current file dir as working dir (See project.nvim).
vim.opt.scrolloff = 1000 -- Number of lines to leave before/after the cursor when scrolling. Setting a high value keep the cursor centered.
vim.opt.sidescrolloff = 8 -- Same but for side scrolling.
vim.opt.selection = "old" -- Don't select the newline symbol when using <End> on visual mode.

vim.opt.viewoptions:remove "curdir" -- Disable saving current directory with views.
vim.opt.shortmess:append { s = true, I = true } -- Disable startup message.
vim.opt.backspace:append { "nostop" } -- Don't stop backspace at insert.
vim.opt.diffopt:append { "algorithm:histogram", "linematch:60" } -- Enable linematch diff algorithm

local is_android = vim.fn.isdirectory('/data') == 1
if is_android then vim.opt.mouse = "v" else vim.opt.mouse = "a" end -- Enable scroll for android

-- Globals --------------------------------------------------------------------
vim.g.mapleader = " " -- Set leader key.
vim.g.maplocalleader = "," -- Set default local leader key.
vim.g.big_file = { size = 1024 * 5000, lines = 50000 } -- For files bigger than this, disable 'treesitter' (+5Mb).

-- The next globals are toggleable with <space + l + u>
vim.g.autoformat_enabled = false -- Enable auto formatting at start.
vim.g.autopairs_enabled = false -- Enable autopairs at start.
vim.g.cmp_enabled = true -- Enable completion at start.
vim.g.codeactions_enabled = true -- Enable displaying 💡 where code actions can be used.
vim.g.codelens_enabled = true -- Enable automatic codelens refreshing for lsp that support it.
vim.g.diagnostics_mode = 3 -- Set code linting (0=off, 1=only show in status line, 2=virtual text off, 3=all on).
vim.g.fallback_icons_enabled = false -- Enable it if you need to use Neovim in a machine without nerd fonts.
vim.g.inlay_hints_enabled = false -- Enable always show function parameter names.
vim.g.lsp_round_borders_enabled = true -- Enable round borders for lsp hover and signatureHelp.
vim.g.lsp_signature_enabled = true -- Enable automatically showing lsp help as you write function parameters.
vim.g.notifications_enabled = true -- Enable notifications.
vim.g.semantic_tokens_enabled = true -- Enable lsp semantic tokens at start.
vim.g.url_effect_enabled = true -- Highlight URLs with an underline effect.


-- neovide cursor
vim.g.neovide_cursor_animation_length = 0.1
vim.g.neovide_cursor_trail_size = 0.5
vim.g.neovide_scroll_animation_length = 0.3
-- vim.g.neovide_cursor_vfx_mode = "pixiedust"
-- vim.g.neovide_cursor_vfx_mode = "torpedo"
vim.g.neovide_cursor_vfx_particle_density = 100.0

vim.g.neovide_scroll_speed = 3.0  -- 默认值为 1.0，增大加快滚动

vim.g.neovide_floating_shadow = true
vim.g.neovide_input_ime = true
vim.g.neovide_hide_mouse_when_typing = true

-- 继承设置
local opt = vim.opt

opt.guifont = { "Maple Mono NF CN", ":h16" }
-- opt.guifont = {"CaskaydiaCove Nerd Font", "Source Han Sans CN", "微软雅黑", "Maple Mono SC NF", ":h12" }
opt.guicursor =
  "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait0-blinkoff0-blinkon0-Cursor/lCursor,sm:block-blinkwait0-blinkoff0-blinkon0"
opt.textwidth = 0
opt.wrapmargin = 1
opt.formatoptions:append("t")
opt.formatoptions:remove("l")

-- 设置 visual 模式下选中的背景高亮色
vim.cmd("highlight Visual guibg=#135564")

-- 设置光标的颜色默认为拉姆的发(fà)色
vim.cmd("highlight Cursor gui=NONE guifg=bg guibg=#ffb6c1")

-- hop
-- 设置单字符高亮的颜色为 notion 中的暗色模式下的砖红色
vim.api.nvim_command("highlight HopNextKey guifg=#FF7369 guibg=none gui=none ctermfg=none cterm=bold")

-- 解决 python 在定义函数参数时按下 : 会自动缩进的问题
vim.api.nvim_command("set indentkeys-=<:>")

-- 动态控制neovide字体大小
if vim.g.neovide then
    vim.keymap.set({ "n", "v" }, "<C-+>", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>")
    vim.keymap.set({ "n", "v" }, "<C-->", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>")
    vim.keymap.set({ "n", "v" }, "<C-0>", ":lua vim.g.neovide_scale_factor = 1<CR>")
end


-- 将分号映射为冒号 (Normal模式)
vim.keymap.set('n', ';', ':', { noremap = true })

-- 如果你还想保留分号的原始功能，可以将冒号映射为分号
-- vim.keymap.set('n', ':', ';', { noremap = true })
