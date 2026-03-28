local opts = { noremap = true, silent = true }

-- swap buffers
vim.keymap.set("n", "<S-Left>", "<C-w><Left>", opts)
vim.keymap.set("n", "<S-Right>", "<C-w><Right>", opts)
vim.keymap.set("n", "<S-Up>", "<C-w><Up>", opts)
vim.keymap.set("n", "<S-Down>", "<C-w><Down>", opts)

-- resize buffers
vim.keymap.set("n", "<S-C-Up>", "<C-w>+", opts)
vim.keymap.set("n", "<S-C-Down>", "<C-w>-", opts)
vim.keymap.set("n", "<S-C-Left>", "<C-w><", opts)
vim.keymap.set("n", "<S-C-Right>", "<C-w>>", opts)
vim.keymap.set("n", "<S-C-Enter>", "<C-w>=", opts)

-- meta buffers
vim.keymap.set("n", "<leader>sv", ":vs<CR>", opts)
vim.keymap.set("n", "<leader>sh", ":split<CR>", opts)
vim.keymap.set("n", "<leader>q", ":q<CR>", opts)

-- nvim tree
vim.keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>", opts)

-- move
vim.keymap.set("n", "<A-Down>", ":MoveLine(1)<CR>", opts)
vim.keymap.set("n", "<A-Up>", ":MoveLine(-1)<CR>", opts)
vim.keymap.set("v", "<A-Down>", ":MoveBlock(1)<CR>", opts)
vim.keymap.set("v", "<A-Up>", ":MoveBlock(-1)<CR>", opts)

-- programming
vim.keymap.set("n", "<leader>d", vim.lsp.buf.definition, opts)
vim.keymap.set("n", "<leader>i", vim.lsp.buf.implementation, opts)

-- telescope
vim.keymap.set("n", "<leader>f", ":Telescope find_files<CR>", opts)
vim.keymap.set("n", "<leader>g", ":Telescope live_grep<CR>", opts)
vim.keymap.set("n", "<leader>e", ":Telescope diagnostics<CR>", opts)

-- terminal
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", opts)
