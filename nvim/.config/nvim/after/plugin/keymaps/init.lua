local nnoremap = require("utiiz.keymap").nnoremap
local vnoremap = require("utiiz.keymap").vnoremap
local inoremap = require("utiiz.keymap").inoremap
local xnoremap = require("utiiz.keymap").xnoremap
local imap = require("utiiz.keymap").imap
local xmap = require("utiiz.keymap").xmap
local nmap = require("utiiz.keymap").nmap

nnoremap("<leader>pv", "<cmd>Ex<CR>")

-- Coc keymap
imap("<TAB>", "<Plug>(coc-snippets-expand)")
inoremap("<CR>", 'pumvisible() ? "\\<C-y>" : "\\<C-g>u\\<CR>"', {expr = true})
inoremap("<TAB>", 'pumvisible() ? "\\<C-n>" : "\\<TAB>"', {expr = true})
inoremap("<S-TAB>", 'pumvisible() ? "\\<C-p>" : "\\<S-TAB>"', {expr = true})

xmap("<leader><cr>", "<Plug>(coc-codeaction-selected)<CR>")
nmap("<leader><cr>", "<Plug>(coc-codeaction-selected)<CR>")

nmap("gd", "<Plug>(coc-definition)", {silent = true})
nmap("gy", "<Plug>(coc-type-definition)", {silent = true})
nmap("gi", "<Plug>(coc-implementation)", {silent = true})
nmap("gr", "<Plug>(coc-references)", {silent = true})

nmap("rn", "<Plug>(coc-rename)", {silent = true})

-- Use K to show the documentation in preview window
nnoremap("K", ":call CocActionAsync(\'doHover\')<CR>", {silent = true})

-- Search
nnoremap("<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- Greatest remap ever
-- To replace with u for ISRT Layout
xnoremap("p", "\"_dP")

-- Center and jump by page
nnoremap("<C-j>", "<C-d>zz")
nnoremap("<C-k>", "<C-u>zz")
nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")

nnoremap("J", ":m .+1<CR>==")
nnoremap("K", ":m .-2<CR>==")
vnoremap("J", ":m '>+1<CR>gv=gv")
vnoremap("K", ":m '<-2<CR>gv=gv")

nnoremap("n", "nzzzv")
nnoremap("N", "Nzzzv")

-- Telescope
nnoremap("<C-p>", ":Telescope<CR>")
nnoremap("<C-p>", function()
    require('telescope.builtin').find_files()
end)
