-- Change these if you want
vim.g.signify_sign_add               = ''
vim.g.signify_sign_delete            = ''
vim.g.signify_sign_delete_first_line = ''
vim.g.signify_sign_change            = ''

-- I find the numbers disctracting
vim.g.signify_sign_show_count = 0
vim.g.signify_sign_show_text = 1

-- Remove the background
-- If you like colors instead
vim.cmd[[highlight SignifySignAdd    ctermfg=black ctermbg=green  guifg=#62D196]]
vim.cmd[[highlight SignifySignDelete ctermfg=black ctermbg=red    guifg=#F02E6E]]
vim.cmd[[highlight SignifySignChange ctermfg=black ctermbg=yellow guifg=#F9E2AF]]
