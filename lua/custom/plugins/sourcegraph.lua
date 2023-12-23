return {
  {
    'sourcegraph/sg.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim'
    },
    keys = {
      -- Example mapping for doing searches from within neovim (may change) using telescope.
      -- (requires telescope.nvim to be installed)
      { '<space>ss', '<cmd>lua require("sg.extensions.telescope").fuzzy_search_results()<CR>', desc = '[S]ourcegraph [S]earch' }
    },
    config = function()
      require("sourcegraph/sg.nvim").setup()
    end
  },
}
