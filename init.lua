vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug('nvim-lua/popup.nvim')
Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim')
Plug('nvim-tree/nvim-web-devicons')
Plug('akinsho/bufferline.nvim', { ['tag'] = 'v3.*' })
Plug('kyazdani42/nvim-tree.lua')
 
vim.call('plug#end')

require("bufferline").setup{}
require("nvim-tree").setup()

vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.relativenumber = true

vim.g.mapleader = " "

--Keybindings
vim.keymap.set('n', '<leader>w', ':w<CR>', {noremap = true})
vim.keymap.set('n', '<leader>x', ':x<CR>', {noremap = true})
vim.keymap.set('n', '<leader>q', ':q<CR>', {noremap = true})
vim.keymap.set('n', '<leader>t', ':terminal<CR>', {noremap = true})
vim.keymap.set('n', '<leader>.', ':bnext<CR>', {noremap = true})
vim.keymap.set('n', '<leader>,', ':bprevious<CR>', {noremap = true})

--Reload neovim configs
vim.keymap.set('n', '<leader>rn', ':source ~/.config/nvim/init.lua<CR>', {noremap = true})
vim.keymap.set('n', '<leader>en', ':e ~/.config/nvim/init.lua<CR>', {noremap = true})

--Telescope
vim.keymap.set('n', '<leader>ff', ':Telescope find_files<CR>', {noremap = true})
vim.keymap.set('n', '<leader>fg', ':Telescope live_grep<CR>', {noremap = true})
vim.keymap.set('n', '<leader>fl', ':Telescope git_files<CR>', {noremap = true})
vim.keymap.set('n', '<leader>fb', ':Telescope buffers<CR>', {noremap = true}
