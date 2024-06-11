return {
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    config = function()
      require("dashboard").setup({
        theme = "hyper",
        config = {
          week_header = { enable = true },
          shortcut = {
             { desc = "󰊳 Update ", group = "@property", action = "Lazy update", key = "u" },
             { desc = " Files ", group = "Label", action = "Telescope find_files", key = "f" },
             { desc = "󰁯 Restore Session ", group = "Label", action = "SessionRestore", key = "r" },
             { desc = "󰿅 Quit ", action="q", key = "q" },
          }
        }
      });
    end
  },
  {
    "stevearc/dressing.nvim",
    event = "VeryLazy",
  },
  {
    "0x00-ketsu/maximizer.nvim",
    config = function()
      vim.api.nvim_set_keymap("n", "st", "<cmd>lua require('maximizer').toggle()<cr>", {
        silent = true, noremap = true, desc = "[t]oggle [s]plit, i.e: Maximize/Minimize."
      });
    end
  },
  {
    "alexghergh/nvim-tmux-navigation",
    config = function()
      require("nvim-tmux-navigation").setup({
        disable_when_zoomed = true,
        keybindings = {
          left = "<C-h>",
          down = "<C-j>",
          up = "<C-k>",
          right = "<C-l>",
        }
      });
    end
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 500

      require("which-key").setup({});
    end
  },
  {
    "rmagatti/auto-session",
    config = function()
      require("auto-session").setup({
        auto_restore_enabled = false,
        auto_session_enable_last_session = false,

        auto_session_suppress_dirs = {
          "~/", "~/Desktop", "~/Downloads", "~/Documents", "/" }
        });

        vim.keymap.set("n", "<leader>ws", ":SessionSave<cr>", { desc = "save session." });
        vim.keymap.set("n", "<leader>wr", ":SessionRestore<cr>", { desc = "restore saved session." });
      end
    }
  };
