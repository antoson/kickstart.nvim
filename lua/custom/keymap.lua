vim.keymap.set("n", "Q", "<nop>", { desc = "I don't like macros" })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Move down and center cursor line" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Move up and center cursor line" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line up" })

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "Telescope find buffers" })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "Telescope help tags" })
