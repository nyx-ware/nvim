return {
    "morhetz/gruvbox",
    dependencies = {
        "rebelot/kanagawa.nvim",
        "projekt0n/github-nvim-theme",
        "zenbones-theme/zenbones.nvim",
        "rktjmp/lush.nvim"
    },
    config = function()
        vim.cmd("colorscheme kanagawa")
    end
}
