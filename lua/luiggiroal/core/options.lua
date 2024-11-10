vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

opt.wrap = false

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

opt.cursorline = true

-- turn on termguicolors for tokyonight colorscheme to work
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false

opt.showmode = false -- we don't need to see things like -- INSERT -- anymore


-- OLDER
--
-- -- vim.cmd("let g:netrw_liststyle = 3")
--
-- local options = {
-- 	-- line numbers
-- 	relativenumber = true, -- show relative line numbers
-- 	number = true, -- show absolute line number on cursor line (when relative number is on)
--   -- shellslash = true,
--
-- 	-- tabs & indentation
-- 	tabstop = 2, -- 2 spaces for tabs (prettier default)
-- 	shiftwidth = 2, -- 2 spaces for indent width
-- 	expandtab = true, -- expand tab to spaces
-- 	autoindent = true, -- copy indent from current line when starting new one
--
-- 	-- line wrapping
-- 	wrap = false, -- disable line wrapping
--
-- 	-- search settings
-- 	ignorecase = true, -- ignore case when searching
-- 	smartcase = true, -- if you include mixed case in your search, assumes you want case-sensitive
--   cursorline = true, -- highlight the current cursor line
--
--   -- turn on termguicolors for nightfly colorscheme to work
--   termguicolors = true,
--   background = "dark", -- colorschemes that can be light or dark will be made dark
--   signcolumn = "yes", -- show sign column so that text doesn't shift
--
--   -- backspace
--   backspace = "indent,eol,start", -- allow backspace on indent, end of line or insert mode start position
--
--   -- split windows
--   splitright = true, -- split vertical window to the right
--   splitbelow = true, -- split horizontal window to the bottom
--
--   -- turn off swapfile
--   swapfile = false,
--
-- 	pumheight = 10, -- pop up menu height
-- 	scrolloff = 6, 
-- 	sidescrolloff = 6,
--
--   -- FROM 'nvim.bak'
-- 	--cmdheight = 2, -- more space in the neovim command line for displaying messages
-- 	--smartindent = true, -- make indenting smarter again
-- 	--spell = true,
-- 	--spelllang = { "en_us", "es" },
-- 	-- undofile = true, -- enable persistent undo
-- 	-- updatetime = 300, -- faster completion (4000ms default)
-- 	-- writebackup = false, -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
-- 	numberwidth = 4, -- set number column width to 3 {default 4}
-- }
--
-- for k, v in pairs(options) do
-- 	vim.opt[k] = v
-- end
--
-- -- clipboard
-- vim.opt.clipboard:append("unnamedplus") -- use system clipboard as default register
