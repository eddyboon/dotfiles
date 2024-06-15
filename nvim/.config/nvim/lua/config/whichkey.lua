require "which-key".setup {
	triggers_blacklist = {
		i = { "k", "j" },
		v = { "k", "j" }
	}
}

local wk = require("which-key")

wk.register({
	f = {
		name = "Telescope",
		f = { "Find Files" },
		t = { "ToggleTerm" },
	},
	n = {
		name = "File Manager",
		t = { "Tab" },
	},
	[";"] = {
		name = "Navigation",
		h = { "Move to Right Pane" },
		l = { "Move to Left Pane" },
		j = { "Move to Bottom Pane" },
		k = { "Move to Top Pane" },
	},
	r = {
		name = "Code Manipulate",
		n = "Rename",
		d = "Code Diagnostic",
		s = "See code Signature (Help)"
	},
	t = {
		name = "Toggle Theme"
	},
	k = {
		name = "Redraw Screen"
	}
}, { prefix = "<leader>" })
