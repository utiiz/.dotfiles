vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha

require("catppuccin").setup()

vim.cmd [[colorscheme catppuccin]]

vim.cmd [[hi HarpoonWindow guibg=#1e1e2e]]
vim.cmd [[hi HarpoonBorder guibg=#1e1e2e]]
