------------------------------------------------------------

--	NeoVim config
--	Ewan Wakeman

-----------------------------------------------------------

-- Modules

require("plugins")
require("keybindings")
require("lsp")

-- Plugin specific modules

require("plugs.treesitter")
require("plugs.cmp")
require("plugs.telescope")
require("plugs.gitsigns")

------------------------------------------------------------

-- Aliases

local opt 		= vim.opt
local g 		= vim.g

------------------------------------------------------------

-- Settings
opt.number 		= true 		-- use line numbers
opt.relativenumber 	= true 		-- use relative line numbers
opt.mouse 		= 'a'		-- enable mouse clicks
opt.termguicolors	= true		-- use terminal gui colours
opt.background 		= 'dark'	-- dark background

------------------------------------------------------------

-- Themes

g.tokyonight_style		= "storm"	-- use tokyonight storm
g.tokyonight_italic_functions	= true		-- use italics for fns
g.lightline			= {colorscheme = 'tokyonight'} -- lightline tokynight

vim.cmd [[colorscheme tokyonight]] 		-- enable theme
