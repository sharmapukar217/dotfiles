vim.g.mapleader = " "

function map(mode, lhs, rhs, opts)
    local options = {noremap = true, silent = true}
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- exit from `insert` mode
map("i", "jk", "<Esc>", { desc = "Go to normal mode faster with jk." });

-- use <C-s> to save file
map("n", "<C-s>", ":w<cr>", { desc = "Save buffer using <C-s>" });
map("i", "<C-s>", "<Esc>:w<cr>a", { desc = "Save buffer using <C-s>" });

-- clear search highlight
map("n", "<leader>nh", ":nohl<cr>", { desc = "Clear search highlight, i.e: [N]o [H]ighlight" });

-- window management
map("n", "<leader>sx", ":close<cr>", { desc = "Close current [s]plit." });
map("n", "<leader>sv", "<C-w>v", { desc = "[S]plit window [v]ertically." });
map("n", "<leader>sh", "<C-w>s", { desc = "[S]plit window [h]orizontally." });
map("n", "<leader>se", "<C-w>=", { desc = "Make all [s]plits [e]qual size." });

-- tab management
map("n", "<leader>tx", ":tabclose<cr>", { desc = "close [t]ab." });
map("n", "<leader>to", ":tabnew<cr>", { desc = "Open [n]ew [t]ab." });
map("n", "<leader>tn", ":tabnext<cr>", { desc = "goto [n]ext [tab]." });
map("n", "<leader>tp", ":tabprevious<cr>", { desc = "goto [p]revious [tab]." });
map("n", "<leader>tf", ":tabnew %<cr>", { desc = "open current buffer in new tab." });
