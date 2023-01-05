--[[
  Base config file
  ================
--]]

vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.ruler = true
vim.opt.encoding = "UTF-8"
vim.opt.filetype = "true"

vim.opt.number = true  -- Always show line numbers
vim.opt.relativenumber = true  -- Also show relative line numbers
vim.opt.exrc = true  -- Enable usage of additional .vimrc files from working directory
vim.opt.secure = true  -- Prohibit .vimrc files to execute shell, create files, etc.

vim.opt.syntax.enable = true  -- Syntax highlighting

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true  -- Expand tabs to spaces
vim.opt.autoindent = true
vim.opt.showmatch = true
vim.opt.ttyfast = true

vim.opt.spell = false
vim.opt.spelllang = "en"

-- Theme
vim.cmd("colorscheme dracula")

-- Set key shortcuts directly via vim command for convenience
vim.cmd[[
    " Open NERDTree
    nnoremap <C-n> :NERDTreeToggle<CR>

    " Navigate through panes with Ctrl+W - H/J/K/L
    nnoremap <C-h> <C-w>h
    nnoremap <C-j> <C-w>j
    nnoremap <C-k> <C-w>k
    nnoremap <C-l> <C-w>l

    " Toggle spell checker with F10
    nnoremap <silent> <F10> :set spell!<cr>
    inoremap <silent> <F10> <C-O>:set spell!<cr>
]]
