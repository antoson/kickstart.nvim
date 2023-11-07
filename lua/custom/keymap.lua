vim.keymap.set("n", "Q", "<nop>", { desc = "I don't like macros" })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Move down and center cursor line" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Move up and center cursor line" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line up" })

-- Telescope all the things!
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>sb', builtin.buffers, { desc = "[S]earch [B]uffers" })
vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = "[S]earch [K]eymaps" })

-- You merely adopted Vim. I was born in it, molded by it.
--                              - Bane, unable to exit Vim
vim.keymap.set({'n','v'},'<up>','<nop>')
vim.keymap.set({'n','v'},'<down>','<nop>')
vim.keymap.set({'n','v'},'<left>','<nop>')
vim.keymap.set({'n','v'},'<right>','<nop>')
