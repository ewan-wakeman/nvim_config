------------------------------------------------------------

--	Keybindings

------------------------------------------------------------

local api = vim.api
local g = vim.g

-- Leader Key (<space>)

api.nvim_set_keymap('', '<Space>', '<Nop>', { noremap = true, silent = true })
g.mapleader = ' '
g.maplocalleader = ' '
