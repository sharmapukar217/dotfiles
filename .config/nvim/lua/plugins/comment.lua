return {
  {
    "numToStr/Comment.nvim",

    opts = {},
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },

    opts = {},

    config = function()
      require("todo-comments").setup({

      });

      -- show all todo comments inside telescope
      vim.keymap.set("n", "<leader>fc", ":TodoTelescope<cr>");
    end,
  },
}
