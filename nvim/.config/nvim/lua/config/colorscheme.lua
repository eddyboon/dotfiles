require('onedark').setup {
	style = 'cool'
}

require('onedark').load()

require "lualine".setup {
	options = {
		theme = "onedark",
	}
}
