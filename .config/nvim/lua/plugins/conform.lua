return {
  "stevearc/conform.nvim",

  config = function()
    require("conform").setup({
      formatters_by_ft = {
        lua = { "stylua" },
      },
    })

    vim.keymap.set("n", "<C-f>", ":lua require('conform').format()<cr>", { noremap = true, silent = true })
    vim.keymap.set("i", "<C-f>", "<ESC>:lua require('conform').format()<cr>a", { noremap = true, silent = true })
  end,
}
