return {
  'smoka7/hop.nvim',
  config = function()
    local hop = require('hop')
    hop.setup({
      case_insensitive = true,
    })
    local dirs = require('hop.hint').HintDirection
    vim.keymap.set('', 'W', function () hop.hint_words({ }) end)
    vim.keymap.set('', 'B', function () hop.hint_words({ direction = dirs.BEFORE_CURSOR }) end)
    vim.keymap.set('', 'J', function () hop.hint_lines({ direction = dirs.AFTER_CURSOR }) end)
    vim.keymap.set('', 'K', function () hop.hint_lines({ direction = dirs.BEFORE_CURSOR }) end)
    vim.keymap.set('', 'F', function () hop.hint_char1() end)
    vim.keymap.set('', 'T', function () hop.hint_char1({ hint_offset = -1 }) end)
    vim.keymap.set('', '\'', function () hop.hint_char2() end)
  end
}
