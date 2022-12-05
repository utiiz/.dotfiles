-- Global function that searches the path for the required file
function find_required_path(module)
    print(module)
    local fname = vim.fn.substitute(module, "^@\\/", "src/", "")
    return fname
end


-- Set options to open require with gf
vim.cmd[[setlocal isfname+=@-@]]
vim.opt.includeexpr = "v:lua.find_required_path(v:fname)"
