vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set mouse=")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set clipboard+=unnamedplus")

vim.keymap.set('n', 'gn', ':bnext<CR>')
vim.keymap.set('n', 'gp', ':bprev<CR>')
vim.keymap.set('n', '<leader>rr', ':w<CR>:so %<CR>')
vim.keymap.set('n', '<leader>rr', ':w<CR>:so %<CR>')
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')
vim.cmd("nnoremap gc gF")

vim.keymap.set('n', '<A-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<A-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<A-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<A-l>', ':wincmd l<CR>')
vim.keymap.set('n', '<A-v>', ':vsplit<CR>')
vim.keymap.set('n', '<A-g>', ':split<CR>')
vim.keymap.set('n', '<C-p>', '"0p')

vim.keymap.set('x', 's',
  function ()
    local reg = vim.fn.getreg('"')
    vim.api.nvim_feedkeys(":s/"..reg.."/", "", false)
  end
)

vim.keymap.set('n', 's',
  function ()
    local reg = vim.fn.getreg('"')
    vim.api.nvim_feedkeys(":%s/"..reg.."/", "", false)
  end
)

vim.keymap.set('n', 'S', function ()
  vim.api.nvim_feedkeys(":%s/", "", false)
end)
