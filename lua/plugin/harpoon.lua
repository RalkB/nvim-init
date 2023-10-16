require("harpoon").setup({
    menu = {
        width = vim.api.nvim_win_get_width(0) - 4,
    }
})

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>ha", mark.add_file, { desc = "[H]arpoon [A]dd File"})
vim.keymap.set("n", "<leader>ht", ui.toggle_quick_menu, { desc = "[H]arpoon [T]oggle menu"})
vim.keymap.set("n", "<leader>hh", ui.nav_next, { desc = "[H][j]arpoon Next page"})
vim.keymap.set("n", "<leader>hj", ui.nav_prev, { desc = "[H][h]arpoon Prev page"})