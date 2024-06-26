vim.g.mapleader = " "

local keymap = vim.keymap

-- ---------- 插入模式 ---------- ---
keymap.set("i", "jk", "<ESC>")

-- ---------- 视觉模式 ---------- ---
-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- ---------- 正常模式 ---------- ---
-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v") -- 水平新增窗口
keymap.set("n", "<leader>sh", "<C-w>s") -- 垂直新增窗口
-- enhance default key
keymap.set("n", "<leader>q", ":q!<CR>")
keymap.set("n", "<leader>wq", ":wq<CR>")

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- 切换buffer
keymap.set("n", "<S-L>", ":bnext<CR>")
keymap.set("n", "<S-H>", ":bprevious<CR>")
keymap.set('n', ':', '<cmd>FineCmdline<CR>') -- command line
keymap.set('n', '<leader>ds', '<cmd>BufDel<CR>') -- delete singel
keymap.set('n', '<leader>da', '<cmd>BufDelAll<CR>') -- delete all
keymap.set('n', '<leader>do', '<cmd>BufDelOthers<CR>') -- delete others

-- ---------- 插件 ---------- ---
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
