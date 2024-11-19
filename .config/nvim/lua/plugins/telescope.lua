return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-media-files.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },

  opts = function(_, opts) end,

  config = function()
    local telescope = require("telescope")
    local builtin = require("telescope.builtin")

    -- load extensions
    telescope.load_extension("fzf")
    telescope.load_extension("harpoon")
    telescope.load_extension("media_files")

    -- setup telescope
    telescope.setup({
      extensions = {
        media_files = {
          find_cmd = "rg",
          filetypes = { "png", "webp", "jpg", "jpeg" },
        },
      },
    })

    -- keybindings
    vim.keymap.set("n", "<leader>fb", builtin.buffers)
    vim.keymap.set("n", "<leader>fg", builtin.live_grep)
    vim.keymap.set("n", "<leader>ff", builtin.find_files)
    vim.keymap.set("n", "<leader>fs", builtin.grep_string)
  end,
}
