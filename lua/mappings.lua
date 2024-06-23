require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
-- NvimTree
map("n", "<C-n>", "<cmd> NvimTreeToggle <CR>", { desc = "Toggle nvimtree" })

-- Terminal
map({ "n", "t" }, "<A-i>", function()
  require("nvterm.terminal").toggle "horizontal"
end, { desc = "Toggle horizontal term" })

-- Rust-specific mappings
map("n", "<leader>rr", "<cmd>RustLsp runnables<CR>", { desc = "Rust Runnables" })
map("n", "<leader>rt", "<cmd>RustLsp testables<CR>", { desc = "Rust Testables" })
map("n", "<leader>ra", "<cmd>RustLsp hover actions<CR>", { desc = "Rust Hover Actions" })
map("n", "<leader>rd", "<cmd>RustLsp debuggables<CR>", { desc = "Rust Debuggables" })
map("n", "<leader>re", "<cmd>RustLsp explainError<CR>", { desc = "Rust Explain Error" })

-- DAP (Debugger) mappings
map("n", "<leader>db", "<cmd>DapToggleBreakpoint<cr>", { desc = "Toggle Breakpoint" })
map("n", "<leader>dc", "<cmd>DapContinue<cr>", { desc = "Start/Continue" })
map("n", "<leader>di", "<cmd>DapStepInto<cr>", { desc = "Step Into" })
map("n", "<leader>do", "<cmd>DapStepOver<cr>", { desc = "Step Over" })
map("n", "<leader>dO", "<cmd>DapStepOut<cr>", { desc = "Step Out" })

-- LSP mappings
map("n", "<leader>fd", vim.lsp.buf.definition, { desc = "LSP definition" })
map("n", "<leader>fD", vim.lsp.buf.declaration, { desc = "LSP declaration" })
map("n", "<leader>fi", vim.lsp.buf.implementation, { desc = "LSP implementation" })
map("n", "<leader>fr", vim.lsp.buf.references, { desc = "LSP references" })
