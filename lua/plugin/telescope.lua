-- [[ Configure Telescope ]]
-- See `:help telescope` and `:help telescope.setup()`
require('telescope').setup {}

-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>s?', builtin.oldfiles, { desc = '[S]earch for [?] recently opened files' })
vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = "[S]earch [F]iles" })
vim.keymap.set('n', '<leader>sg', builtin.git_files, { desc = "[S]earch [G]it Files" })
vim.keymap.set('n', '<leader>ps', function ()
    builtin.grep_string({ search = vim.fn.input("Grep > ")})
end, { desc = "Search with Grep" })


-- telescope undo keymaps
vim.keymap.set('n', '<leader>u', require("telescope").extensions.undo.undo, { desc = 'show undo history'})