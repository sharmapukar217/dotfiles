return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag"
  },
  config = function()
    require("nvim-treesitter.configs").setup({
      highlight = { enable = true },
      autotag = { enable = true },
      indent = { enable = true },
      ensure_installed = {
        "c",
        "lua",
        "toml",
        "vimdoc",
        "markdown",
        "markdown_inline",

        -- javascript
        "json",
        "javascript",
        "typescript",
      },

      incremental_selection = {
        enabled = true,
        keymaps = {
          scope_incremental = false,
          node_decremental = "<bs>",
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
        }
      }
    });
  end
};
