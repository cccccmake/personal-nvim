vim.keymap.set('n', "<A-o>", "<cmd>lua require'jdtls'.organize_imports()<cr>",
               {silent = true, noremap = true})
vim.keymap.set('n', "crv", "<Cmd>lua require('jdtls').extract_variable()<CR>",
               {silent = true, noremap = true})
vim.keymap.set('n', "crc", "<Cmd>lua require('jdtls').extract_constant()<CR>",
               {silent = true, noremap = true})
vim.keymap.set('v', "crv",
               "<Esc><Cmd>lua require('jdtls').extract_variable(true)<CR>",
               {silent = true, noremap = true})
vim.keymap.set('v', "crc",
               "<Esc><Cmd>lua require('jdtls').extract_constant(true)<CR>",
               {silent = true, noremap = true})
vim.keymap.set('v', "crm",
               "<Esc><Cmd>lua require('jdtls').extract_method(true)<CR>",
               {silent = true, noremap = true})

-- If using nvim-dap
-- This requires java-debug and vscode-java-test bundles, see install steps in this README further below.
-- nnoremap <leader>df <Cmd>lua require'jdtls'.test_class()<CR>
-- nnoremap <leader>dn <Cmd>lua require'jdtls'.test_nearest_method()<CR>
local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
local workspace_dir = '/home/cccccmake/.local/share/java-root-dir/' ..
                          project_name
-- See `:help vim.lsp.start_client` for an overview of the supported `config` options.
local config = {
    cmd = {
        'jdtls',
    },
    -- The command that starts the language server
    -- See: https://github.com/eclipse/eclipse.jdt.ls#running-from-the-command-line
    -- cmd = {
    --
    --     -- 'java', -- or '/path/to/java17_or_newer/bin/java'
    --     '/usr/lib/jvm/java-20-openjdk/bin/java',
    --     -- depends on if `java` is in your $PATH env variable and if it points to the right version.
    --     '-Declipse.application=org.eclipse.jdt.ls.core.id1',
    --     '-Dosgi.bundles.defaultStartLevel=4',
    --     '-Declipse.product=org.eclipse.jdt.ls.core.product',
    --     '-Dlog.protocol=true', '-Dlog.level=ALL', '-Xmx1g',
    --     '--add-modules=ALL-SYSTEM', '--add-opens',
    --     'java.base/java.util=ALL-UNNAMED', '--add-opens',
    --     'java.base/java.lang=ALL-UNNAMED', '-jar',
    --     '/home/cccccmake/.local/share/lsp/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar',
    --     -- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^                                       ^^^^^^^^^^^^^^
    --     -- Must point to the                                                     Change this to
    --     -- eclipse.jdt.ls installation                                           the actual version
    --     '-configuration', '/home/cccccmake/.local/share/lsp/config_linux/',
    --     -- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^        ^^^^^^
    --     -- Must point to the                      Change to one of `linux`, `win` or `mac`
    --     -- eclipse.jdt.ls installation            Depending on your system.
    --     -- 💀
    --     -- See `data directory configuration` section in the README
    --     '-data', workspace_dir
    -- },

    -- 💀
    -- This is the default if not provided, you can remove it. Or adjust as needed.
    -- One dedicated LSP server & client will be started per unique root_dir
    root_dir = require('jdtls.setup').find_root({'.git', 'mvnw', 'gradlew'}),

    -- Here you can configure eclipse.jdt.ls specific settings
    -- See https://github.com/eclipse/eclipse.jdt.ls/wiki/Running-the-JAVA-LS-server-from-the-command-line#initialize-request
    -- for a list of options
    settings = {
        -- java = {
        --     eclipse = {downloadSources = true},
        --     maven = {downloadSources = true},
        --     configuration = {
        --         updateBuildConfiguration = "interactive",
        --         runtimes = {
        --             {
        --                 name = 'JavaSE-17',
        --                 path = '/usr/lib/jvm/java-17-openjdk/bin/java',
        --             },
        --             {
        --                 name = 'JavaSE-20',
        --                 path = '/usr/lib/jvm/java-20-openjdk/bin/java',
        --                 default = true,
        --             }
        --         }
        --     },
        --     implementationsCodeLens = {enabled = true},
        --     referencesCodeLens = {enabled = true},
        --     references = {includeDecompiledSources = true},
        --     inlayHints = {parameterNames = {enabled = true}},
        --     format = {enabled = false}
        -- },
        -- signatureHelp = {enabled = true},
        -- extendedClientCapabilities = extendedClientCapabilities,
    },
    -- Language server `initializationOptions`
    -- You need to extend the `bundles` with paths to jar files
    -- if you want to use additional eclipse.jdt.ls plugins.
    --
    -- See https://github.com/mfussenegger/nvim-jdtls#java-debug-installation
    --
    -- If you don't plan on using the debugger or other eclipse.jdt.ls plugins you can remove this
    -- init_options = {
    --     -- bundles = {},
    --     bundles = bundles
    -- }
}
-- This starts a new client & server,
-- or attaches to an existing client & server depending on the `root_dir`.
require('jdtls').start_or_attach(config)
