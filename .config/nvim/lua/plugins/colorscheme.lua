return {
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    opts = {
      style = "night",
      transparent = true,
    },
  },
  {
    "catppuccin/nvim",

    config = function()
      require("catppuccin").setup({
        transparent_background = true,
        integrations = {
          flash = true,
          mason = true,
          noice = true,
          harpoon = true,
          gitsigns = true,
          dashboard = true,
          lsp_trouble = true,
          nvim_surround = true,
        },
      })
    end,
  },
}
