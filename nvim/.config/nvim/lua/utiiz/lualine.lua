require('lualine').setup {
  options = {
    theme = "catppuccin",
	-- ... the rest of your lualine config
  },
  sections = {
      lualine_a = {'mode'},
      lualine_b = {'branch', 'diff'},
      lualine_c = {'filename'},
      lualine_x = {'filetype'},
      lualine_y = {'progress'},
      lualine_z = {'location'}
  }
}
