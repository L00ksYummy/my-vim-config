local themes = require('telescope.themes')
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>pg', builtin.live_grep, {})

require('telescope').setup({
    defaults = {
        initial_mode = 'normal',
    },
    extensions = {
        file_browser = {
            theme = 'ivy',
            hijack_netrw = true,
        }
    },
})
vim.keymap.set('n', '<leader>fb', ':Telescope file_browser path=%:p:h select_buffer=true<CR>')

require('telescope').load_extension 'file_browser'
