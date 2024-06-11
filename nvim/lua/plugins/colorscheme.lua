return {
  "catppuccin/nvim",
  priority = 100000,
  config = function()
    require("catppuccin").setup({
      flavor = "mocha",
      integrations = {
        alpha = true,
        dashboard = true,
        which_key = true,
        telescope = {
          enabled = true
        },
        indent_blankline = {
          enabled = true,
          scope_color = "", -- catppuccin color (eg. `lavender`) Default: text
        },

      }
    });

    vim.cmd("colorscheme catppuccin");
  end
};
