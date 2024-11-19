return {
  "nvimdev/dashboard-nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = "VimEnter",
  config = function()
    require("dashboard").setup({
      theme = "hyper",
      shortcut_type = "number",
      config = {
	footer = {},
        disable_move = true,
	packages = { enable = true },
        week_header = { enable = true },
        shortcut = {
          { desc = "󰊳  Update", action = "Lazy update", key = "u" },
          { desc = "  Find files", action = "Telescope find_files", key = "f" },
        },
      },
    })
  end,
}
