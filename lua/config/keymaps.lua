-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local term_map = require("terminal.mappings")

vim.keymap.set(
  "n",
  "<leader>it",
  ":lcd %:p:h | split | terminal<CR>",
  { noremap = true, silent = true, desc = "Open terminal in split" }
)

vim.keymap.set({ "n", "x" }, "<leader>Ts", term_map.operator_send, { expr = true, desc = "Send to terminal" })
vim.keymap.set("n", "<leader>To", term_map.toggle, { desc = "Toggle terminal" })
vim.keymap.set("n", "<leader>TO", term_map.toggle({ open_cmd = "enew" }), { desc = "Toggle terminal with new buffer" })
vim.keymap.set("n", "<leader>Tr", term_map.run, { desc = "Run in terminal" })
vim.keymap.set(
  "n",
  "<leader>TR",
  term_map.run(nil, { layout = { open_cmd = "enew" } }),
  { desc = "Run in terminal with new buffer" }
)
vim.keymap.set("n", "<leader>Tk", term_map.kill, { desc = "Kill terminal" })
vim.keymap.set("n", "<leader>T]", term_map.cycle_next, { desc = "Cycle to next terminal" })
vim.keymap.set("n", "<leader>T[", term_map.cycle_prev, { desc = "Cycle to previous terminal" })
vim.keymap.set(
  "n",
  "<leader>Tl",
  term_map.move({ open_cmd = "belowright vnew" }),
  { desc = "Move terminal below right" }
)
vim.keymap.set(
  "n",
  "<leader>TL",
  term_map.move({ open_cmd = "botright vnew" }),
  { desc = "Move terminal to bottom right" }
)
vim.keymap.set(
  "n",
  "<leader>Th",
  term_map.move({ open_cmd = "belowright new" }),
  { desc = "Move terminal below right horizontally" }
)
vim.keymap.set(
  "n",
  "<leader>TH",
  term_map.move({ open_cmd = "botright new" }),
  { desc = "Move terminal to bottom right horizontally" }
)
vim.keymap.set("n", "<leader>Tf", term_map.move({ open_cmd = "float" }), { desc = "Move terminal to float" })
