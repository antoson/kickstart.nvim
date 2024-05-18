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


-- Copy current buffer name with path
vim.keymap.set('n', '<leader>xn', ':let @+=@%<CR>', { desc = 'Copy buffer name and path' })

-- don't lose selection when indenting
vim.keymap.set('x', '<', '<gv')
vim.keymap.set('x', '>', '>gv')

-- disable ex mode
vim.keymap.set('n', 'Q', '<nop>')
vim.keymap.set('n', 'q:', '<nop>')

vim.keymap.set('v', '<leader>y', '"+y', { desc = "Yank into system clipboard" })

vim.keymap.set('n', '<leader>ff', ':Format<CR>', { desc = "[F]ile [F]ormat" })

vim.keymap.set('n', '<C-Left>', '<C-w>h', { desc = "Go to window left" })
vim.keymap.set('n', '<C-Down>', '<C-w>j', { desc = "Go to window down" })
vim.keymap.set('n', '<C-Up>', '<C-w>k', { desc = "Go to window up" })
vim.keymap.set('n', '<C-Right>', '<C-w>l', { desc = "Go to window right" })

