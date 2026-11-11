vim.keymap.set('n', '\\o', ':Telescope oldfiles<CR>', { noremap = true, silent = true })

vim.keymap.set('n', '\\q', ':Telescope find_files hidden=true<CR>', { noremap = true, silent = true })

vim.keymap.set('n', ',t', ':Telescope find_files<CR>', { noremap = true, silent = true }
)

vim.keymap.set('n', "'", ':Telescope buffers --sort=get_fzy_sorter<CR>', { noremap = true, silent = true })
