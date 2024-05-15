vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.number = true
opt.wrap = true

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- tabs & indentation
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true
opt.autoindent = true

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- turn off backup/swap
opt.backup = false
opt.swapfile = false

-- appearence
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes"

-- OLD STUFF TO CLEAN-UP
vim.cmd("set encoding=utf-8")
vim.cmd("set fileencoding=utf-8")

-- Handy
vim.cmd("cnoremap w!! %!sudo tee > /dev/null %")

-- Aliases
vim.cmd("cab W w")
vim.cmd("cab Q q")
vim.cmd("cab Wq wq")
vim.cmd("cab wQ wq")
vim.cmd("cab WQ wq")
vim.cmd("cab E Explore")

-- Auto save
vim.cmd("autocmd BufLeave,FocusLost * silent! update")
