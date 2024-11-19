return {

  {
    "folke/twilight.nvim",
    opts = {
    }
  },

  {
    "folke/zen-mode.nvim",
    opts = {

      window = {
        width = 1,

      },

      plugins = {
        twilight = { enabled = true },
        kitty = { enabled = true, font = "+4", },

      }
    }
  }
}
