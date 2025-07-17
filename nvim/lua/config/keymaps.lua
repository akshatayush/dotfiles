-- Press Esc to remove search highlights
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Open explore menu
vim.keymap.set("n", "<leader>e", ":Ex<CR>", { desc = "Open explorer" })

-- Toggle quickfix
vim.keymap.set("n", "<leader>q", function()
  local quickfix_open = false
  for _, win in ipairs(vim.fn.getwininfo()) do
    if win.quickfix == 1 then
      quickfix_open = true
      break
    end
  end
  if quickfix_open then
    vim.cmd("cclose")
  else
    vim.diagnostic.setqflist()
    vim.cmd("copen")
  end
end, { desc = "Open quickfix list" })

-- Quickfix list movement
vim.keymap.set("n", "]q", ":cnext<CR>", { desc = "Jump to next quickfix item" })
vim.keymap.set("n", "[q", ":cprev<CR>", { desc = "Jump to previous quickfix item" })

-- Simpler window focus shift
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- greatest remaps ever: theprimeagen
vim.keymap.set({ "n", "v" }, "<leader>y", "\"+y", { desc = "Copy to system clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>d", "\"+d", { desc = "Cut to system clipboard" })

-- move selected lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection up" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection down" })

-- J keeps the cursor in place
vim.keymap.set("n", "J", "mzJ`z", { desc = "Append the line below to the end" })

-- Keep the cursor centered while scrolling
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll down" })

-- Center cursor while search
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search item" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search item" })
