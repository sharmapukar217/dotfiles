return {
  {
    "williamboman/mason.nvim",
    lazy = false,

    opts = {},
  },

  {
    "neovim/nvim-lspconfig",

    config = function()
      local lspconfig = require("lspconfig")

      -- lua-lsp config
      lspconfig.lua_ls.setup({})
    end,
  },
}
