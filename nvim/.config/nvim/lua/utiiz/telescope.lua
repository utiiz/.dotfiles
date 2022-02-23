local actions = require "telescope.actions"

require('telescope').setup {
		defaults = {
				prompt_prefix = "⌁ ",
				selection_caret = "⌁ ",
				path_display = { "smart" },
				file_ignore_patterns = {".git"},
				mappings = {
						i = {
								["<C-n>"] = actions.move_selection_next,
								["<C-e>"] = actions.move_selection_previous
						}
				}
		} 
}

