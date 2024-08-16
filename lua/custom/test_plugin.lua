local function list_functions(obj)
  local s = ""
  for key, _ in pairs(obj) do
    s = s .. key .. "\n"
  end
  return s
end

local function run_test()
  local node = vim.treesitter.get_node()
  while node:symbol() ~= 92 do
    node = node:parent()
  end

  local type = node:type()
  local symbol = node:symbol()
  local status_str = "type: " .. vim.inspect(type) .. " symbol: " .. vim.inspect(symbol)

  local start_r, start_c, end_r, end_c = node:range()
  local range_str = start_c .. ":" .. start_r .. " - " .. end_c .. ":" .. end_r

  vim.notify(status_str .. " " .. range_str)

  vim.fn.setpos("'<", {0, start_r, start_c + 1, 0})
  vim.fn.setpos("'>", {0, end_r, end_c + 2, 0})
  vim.cmd('normal! gv')
end

vim.keymap.set("n", "<leader>t", run_test)
vim.keymap.set('o', 'if', run_test)
