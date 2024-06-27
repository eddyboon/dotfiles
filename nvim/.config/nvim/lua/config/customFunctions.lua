-- The :r is to remove the file extension at the end during the exec phase
-- So just do it like you would if you were to do it manually. This just helps to automate all of that
local lang_maps = {
	javascript = { exec = "node %" },
	python = { exec = "python3 %" },
	sh = { exec = "./%" },
	java = { build = "javac %", exec = "java %:r" },
	cs = { build = "csc %", exec = "mono %:r.exe" },
	cpp = { build = "g++ % -o %:r -std=c++20", exec = "./%:r" },
}

for lang, data in pairs(lang_maps) do
	if data.build ~= nil then
		vim.api.nvim_create_autocmd(
			"FileType",
			{ command = "nnoremap <leader>b :!" .. data.build .. "<CR>", pattern = lang })
	end
	vim.api.nvim_create_autocmd(
		"FileType",
		{ command = "nnoremap <leader>e :split<CR>:ter " .. data.exec .. "<CR>", pattern = lang })
end

vim.api.nvim_create_autocmd("ExitPre", {
	group = vim.api.nvim_create_augroup("Exit", { clear = true }),
	command = "set guicursor=a:ver90",
	desc = "Set cursor back to beam when leaving Neovim."
})
