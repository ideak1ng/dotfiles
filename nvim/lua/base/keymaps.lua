local set = vim.keymap.set
local opts = { noremap = true, silent = true }
-- Mapping jk and kj to Escape from Insert mode
set('i', 'jk', '<Esc>', opts)
set('i', 'kj', '<Esc>', opts)
