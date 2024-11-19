return {
  {

    "windwp/nvim-autopairs",
    event = "InsertEnter",

    opts = {
      map_c_h = true,
      map_c_w = true,
    },
  },
  {
    "abecodes/tabout.nvim",
    event = "InsertCharPre",
    priority = 1000,

    config = function() require("tabout").setup({}) end,
  },
}
