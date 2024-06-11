return {
  "nvim-tree/nvim-tree.lua",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    require("nvim-tree").setup({

    });

    -- keybindings
    vim.keymap.set("n", "<leader>ee", ":NvimTreeToggle<cr>", {silent = true, desc = "Toggle [e]xplorer." });
    vim.keymap.set("n", "<leader>er", ":NvimTreeRefresh<cr>", { silent = true, desc = "[R]refresh [e]xplorer." });
    vim.keymap.set("n", "<leader>ec", ":NvimTreeCollapse<cr>", { silent = true, desc = "[C]ollapse [e]xplorer." });
    vim.keymap.set("n", "<leader>ef", ":NvimTreeFindFileToggle<cr>", { silent = true, desc = "[F]ind current file in [e]xplorer." });
  end
};
