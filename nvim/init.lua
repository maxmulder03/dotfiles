require("config.lazy")
require("config.remap")
require("config.set")
require('kanagawa-paper').setup({
  undercurl = true,
  transparent = true,
  gutter = true,
  dimInactive = true, -- disabled when transparent
  terminalColors = true,
  commentStyle = { italic = true },
  functionStyle = { italic = false },
  keywordStyle = { italic = false, bold = false },
  statementStyle = { italic = false, bold = false },
  typeStyle = { italic = false },
  colors = { theme = {}, palette = {} }, -- override default palette and theme colors
  overrides = function()  -- override highlight groups
    return {}
  end,
})

-- setup must be called before loading
vim.cmd("colorscheme kanagawa-paper")