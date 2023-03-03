-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.o.autoread = true
vim.api.nvim_create_autocmd({ "BufEnter", "CursorHold", "CursorHoldI", "FocusGained" }, {
  command = "if mode() != 'c' | checktime | endif",
  pattern = { "*" },
})

vim.opt.shell = "/opt/homebrew/bin/zsh"

-- vim.api.nvim_set_hl(0, "Normal", { ctermbg = "none" })
-- vim.api.nvim_set_hl(0, "NonText", { ctermbg = "none" })
