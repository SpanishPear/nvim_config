lua <<EOF

local feline_gruvbox = {
	fg = "#ebdbb2",
	bg = "#32302f",
	black = "#32302f",
	skyblue = "#83a598",
	cyan = "#a89984",
	green = "#98971a",
	oceanblue = "#458588",
	magenta = "#fb4934",
	orange = "#d65d0e",
	red = "#fb4934",
	violet = "#b16286",
	white = "#ebdbb2",
	yellow = "#d79921",
}

require('gitsigns').setup()

local feline = require('feline')
feline.setup()
feline.use_theme(feline_gruvbox)



EOF
