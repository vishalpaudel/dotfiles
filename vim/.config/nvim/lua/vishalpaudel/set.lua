local opt = vim.opt

opt.termguicolors = true  -- Enables 24-bit RGB color support
opt.guicursor = ""  -- keeps the cursor fat (NOT TRUE)

opt.number = true  -- Show line numbers
opt.relativenumber = true  -- line num. but relative to the curr. line

opt.ignorecase = true  -- Ignore case search
opt.smartcase = true  -- Smart search


opt.tabstop = 4  -- Number of spaces that a <Tab> in the file counts for
opt.softtabstop = 4  -- Number of spaces that a <Tab> counts
opt.shiftwidth = 4  -- Number of spaces to use for each step of auto indent
opt.expandtab = true  -- Use spaces instead of tab characters

opt.smartindent = true  -- Smart auto-indentations

opt.wrap = false  -- Longer line than the terminal

opt.swapfile = false  -- DUNNO
opt.backup = false  -- DUNNO
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"  -- DUNNO
opt.undofile = true  -- Persist undo history to an undo file.
opt.undolevels = 100000 -- Maximum number of changes that can be undone.

opt.hlsearch = true  -- Highlights searched elements
opt.incsearch = true  -- DUNNO

opt.scrolloff = 8  -- Number of row-paddings before a vertical scroll happens
opt.signcolumn = 'yes'  -- Always draw the sign column even if there is no sign in it
opt.isfname:append("@-@")  -- DUNNO

opt.updatetime = 50  -- Fast update of buffers (?)

opt.colorcolumn = "80"  -- DUNNO

opt.cursorline = true  -- Highlight cursor line
opt.cursorcolumn = true  -- Highlight cursor column

opt.mouse = table.concat({ -- Enable mouse support for normal and visual mode
  'n',
  'v'
})

opt.list = true
opt.listchars = {
  tab = '→ ',
}

-- UI Characters
opt.fillchars = {
  vert = ' ', -- Vertical separator
  msgsep = '─', -- Message separator
  eob = ' ' -- Empty line indicator
}
