local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
local workspace_dir = vim.fn.expand("$HOME/.cache/nvim/jdtls/workspaces/") .. project_name

require("jdtls").start_or_attach({
    cmd = {
        vim.fn.expand("$HOME/.local/share/nvim/mason/bin/jdtls"),
        "-data",
        workspace_dir,
        "--jvm-arg=-Djava.import.generatesMetadataFilesAtProjectRoot=false"
    },
    root_dir = require("jdtls.setup").find_root({"pom.xml"}),
    init_options = {
        bundles = {},
        extendedClientCapabilities = require("jdtls").extendedClientCapabilities
    }
})

