return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "nvim-telescope/telescope-media-files.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  config = function()
    local telescope = require("telescope");
    local actions = require("telescope.actions");

    telescope.setup({
      defaults = {
        path_display = "smart",
        mappings = {
          i = {
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist
          }
        }
      },
      extensions = {
        media_files = {
          filetypes = {"png", "webp", "jpg", "jpeg", "svg", "pdf"},
        }
      }
    });

    telescope.load_extension("fzf");
    telescope.load_extension("media_files");

    -- keymaps
    vim.keymap.set("n", "<leader>ff", ":Telescope find_files<cr>", { silent = true, desc = "[F]ind [F]ile using telescope." });
    vim.keymap.set("n", "<leader>fb", ":Telescope buffers<cr>", { silent = true, desc = "[F]ind [B]uffers in current context." });
    vim.keymap.set("n", "<leader>fr", ":Telescope oldfiles<cr>", { silent = true, desc = "[F]ind [r]ecent files using telescope." });
    vim.keymap.set("n", "<leader>fs", ":Telescope live_grep<cr>", { silent = true, desc = "[F]ind [s]tring in current working dir." });
    vim.keymap.set("n", "<leader>fc", ":Telescope grep_string<cr>", { silent = true, desc = "[F]ind string under [c]ursor in current working dir." });
  end
};
