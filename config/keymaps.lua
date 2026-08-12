local Terminal = require("toggleterm.terminal").Terminal

local cpp_runner = Terminal:new({
  direction = "horizontal",
  close_on_exit = false,
  hidden = true,
})

vim.keymap.set("n", "<F6>", function()
  vim.cmd("w") -- save current file

  local filepath = vim.fn.expand("%:p")
  local outpath = vim.fn.expand("%:p:r")

  local cmd = string.format('g++ "%s" -o "%s" -std=c++17 && "%s"', filepath, outpath, outpath)

  cpp_runner.cmd = cmd
  cpp_runner:toggle()
end, { desc = "Compile and Run C++ (VS Code style)" })

local map = vim.keymap.set

map("n", "<leader>e", "<cmd>Neotree toggle<cr>", { desc = "Toggle file tree" })
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Live grep" })
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Buffers" })
map("n", "<C-h>", "<C-w>h", { desc = "Move to left split" })
map("n", "<C-l>", "<C-w>l", { desc = "Move to right split" })
map("n", "<C-j>", "<C-w>j", { desc = "Move to below split" })
map("n", "<C-k>", "<C-w>k", { desc = "Move to above split" })
map("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
map("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next buffer" })
map("n", "<leader>w", "<cmd>w<cr>", { desc = "Save" })
map("n", "<leader>q", "<cmd>q<cr>", { desc = "Quit" })
