return {
	"mbbill/undotree",

	config = function()
    vim.keymap.set("n", "<c-u>", vim.cmd.UndotreeToggle);
	end
}
