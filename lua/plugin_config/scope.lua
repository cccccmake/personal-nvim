vim.opt.sessionoptions = { -- required
    "buffers",
    "tabpages",
    "globals",
}
-- init.lua
require("scope").setup({
    restore_state = false, -- experimental
})
