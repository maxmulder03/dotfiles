require("config.lazy")
require("config.remap")
require("config.set")
require("kanagawa-paper").setup({
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
	overrides = function() -- override highlight groups
		return {}
	end,
})

require("lspconfig").sourcekit.setup({
	cmd = { "xcrun", "sourcekit-lsp" },
	filetypes = { "swift", "objective-c", "objective-cpp" },
	root_dir = require("lspconfig").util.root_pattern("Package.swift", ".git", "*.xcodeproj"),
})

require("catppuccin").setup({
	transparent_background = true,
})

require("todo-comments").setup()

-- setup must be called before loading colorschemes
-- vim.cmd("colorscheme kanagawa-paper")
vim.cmd("colorscheme catppuccin-frappe")
-- vim.cmd("colorscheme catppuccin")

-- Light Themes
-- vim.cmd("colorscheme rose-pine-dawn")

vim.cmd([[ hi Visual guibg=#042c2e ]])
vim.cmd([[ hi LineNr guifg=#fffa9b ]])
