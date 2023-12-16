return {
  'folke/zen-mode.nvim',
  opts = {
    window = {
      backdrop = 0.8,
      width = 90,
      options = {
        signcolumn = 'no',      -- disable signcolumn
        number = false,         -- disable number column
        relativenumber = false, -- disable relative numbers
        cursorline = false,     -- disable cursorline
        cursorcolumn = false,   -- disable cursor column
        foldcolumn = '0',       -- disable fold column
        list = false,           -- disable whitespace characters
        wrap = true,            -- enable word wrap
        linebreak = true,       -- wrap at 'breakat' (word boundary)
      },
    },
    plugins = {
      gitsigns = { enabled = false },
      wezterm = {
        enabled = false,
        font = '+4',
      }
    }
  }
}
