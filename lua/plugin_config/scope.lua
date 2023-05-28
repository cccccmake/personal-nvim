-- init.lua
vim.opt.sessionoptions = { -- required
    "buffers",
    "tabpages",
    "globals",
}
require("scope").setup({ restore_state = true })
