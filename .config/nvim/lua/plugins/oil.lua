
return {
  "stevearc/oil.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },

  config = function()
    local oil = require("oil")

    oil.setup({
      columns = { "icons" },
      default_file_explorer = true,
    })

    vim.keymap.set("n", "<leader>e", oil.toggle_float)
  end,
}
