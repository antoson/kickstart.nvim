vim.keymap.set("n", "Q", "<nop>", { desc = "I don't like macros" })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Move down and center cursor line" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Move up and center cursor line" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line up" })

-- Telescope all the things!
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>sb', builtin.buffers, { desc = "[S]earch [B]uffers" })
vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = "[S]earch [K]eymaps" })
vim.keymap.set('n', '<leader>u', '<cmd>Telescope undo<cr>', { desc = "Telescope undo" })
vim.keymap.set('n', '<leader>fb', ':Telescope file_browser path=%:p:h select_buffer=true<CR>',
    { desc = "Telescope [F]ile [B]rowser" })

-- You merely adopted Vim. I was born in it, molded by it.
--                              - Bane, unable to exit Vim
vim.keymap.set({ 'n', 'v' }, '<up>', '<nop>')
vim.keymap.set({ 'n', 'v' }, '<down>', '<nop>')
vim.keymap.set({ 'n', 'v' }, '<left>', '<nop>')
vim.keymap.set({ 'n', 'v' }, '<right>', '<nop>')

-- Example mapping for doing searches from within neovim (may change) using telescope.
-- (requires telescope.nvim to be installed)
vim.keymap.set('n', '<space>ss', '<cmd>lua require("sg.extensions.telescope").fuzzy_search_results()<CR>',
    { desc = '[S]ourcegraph [S]earch' })

-- Copy current buffer name with path
vim.keymap.set('n', '<leader>xn', ':let @+=@%<CR>', { desc = 'Copy buffer name and path' })
