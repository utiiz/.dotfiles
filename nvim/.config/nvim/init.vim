let mapleader = " " " map leader to comma

syntax enable

set noerrorbells
set number
set relativenumber
set rnu
set tabstop=4 
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set ignorecase
set smartcase
set incsearch
set noswapfile
set splitbelow splitright
set formatoptions-=cro
set undofile
set hidden
set nohlsearch
set signcolumn=yes

" Always show tabs
set showtabline=2

" We don't need to see things like -- INSERT -- anymore
set noshowmode

set scrolloff=8
set sidescrolloff=8
set clipboard=unnamedplus " -- Use Linux system clipboard

" --- Remapping keys to better fit ISRT Keyboard layout

noremap z u
noremap u p
noremap U P
noremap q a

noremap p h
noremap n j
noremap e k
noremap a l

noremap { }
noremap } {

nnoremap N :m .+1<CR>==
nnoremap E :m .-2<CR>==
vnoremap N :m '>+1<CR>gv=gv
vnoremap E :m '<-2<CR>gv=gv

nnoremap <C-N> <C-W><C-J>
nnoremap <C-E> <C-W><C-K>
nnoremap <C-A> <C-W><C-L>
nnoremap <C-P> <C-W><C-H>
nnoremap <C-V> <C-W><C-V>
nnoremap <C-H> <C-W><C-S>
nnoremap <leader>ca <C-W>o
nnoremap <leader>cc <C-W>q
nnoremap <leader>tn :tabnext<CR>
nnoremap <leader>tp :tabprev<CR>

nnoremap <leader>/ :Commentary<CR>
vnoremap <leader>/ :Commentary<CR>

imap gg <Esc>

" --- Plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'Brettm12345/moonlight.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'embark-theme/vim', { 'as': 'embark', 'branch': 'main' }

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'nvim-lualine/lualine.nvim'

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

Plug 'neovim/nvim-lspconfig'

" LSP Autocomplete
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

Plug 'mattn/emmet-vim'

Plug 'tpope/vim-commentary'

Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'

Plug 'ThePrimeagen/harpoon'

call plug#end()

set background=dark
" colorscheme moonlight
colorscheme embark
lua vim.opt.cul = true
highlight CursorLineNR term=bold cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE

if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif



" enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_left_sep = "\uE0B0"
let g:airline_right_sep = ''

" enable tabline
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#left_sep = "\uE0B0"
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

" remove the filetype part
let g:airline_section_x=''
" remove separators for empty sections
let g:airline_skip_empty_sections = 1

" Switch to your current theme
let g:airline_theme = 'embark'
let g:embark_terminal_italics = 1


" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files hidden=true<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

nnoremap <leader>pp <cmd>NvimTreeToggle<cr>

nnoremap <leader>hn <cmd>lua require("harpoon.ui").nav_next()<cr>
nnoremap <leader>he <cmd>lua require("harpoon.ui").nav_prev()<cr>
nnoremap <leader>hh <cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>
nnoremap <leader>ha <cmd>lua require("harpoon.mark").add_file()<cr>


" Change these if you want
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '_'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '~'

" I find the numbers disctracting
let g:signify_sign_show_count = 0
let g:signify_sign_show_text = 1

" If you like colors instead
highlight SignifySignAdd                  ctermbg=green  guifg=#62D196
highlight SignifySignDelete ctermfg=black ctermbg=red    guifg=#F02E6E
highlight SignifySignChange ctermfg=black ctermbg=yellow guifg=#F2B482

lua require('utiiz.telescope')
lua require('utiiz.nvim-tree')
lua require('utiiz.lsp')
" lua require('utiiz.lualine')
" lua require('utiiz.harpoon')
