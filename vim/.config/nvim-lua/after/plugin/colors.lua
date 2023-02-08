
-- monokai-tasty
-- doesn't work in this fashion

-- monokai.nvim
require('monokai').setup({
    disable_background = true
})

function ColorMyPencils(color)
	color = color or "monokai"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

-- material.lua(?)
-- require('material').setup({
--     disable_background = false
-- })
--
-- function ColorMyPencils(color)
-- 	color = color or "material"
-- 	vim.cmd.colorscheme(color)
--
-- 	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- 	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
--
-- end

ColorMyPencils()
