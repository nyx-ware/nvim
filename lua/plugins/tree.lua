return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    config = function()
        require("nvim-tree").setup({
            sync_root_with_cwd = true,
            git = {
                enable = false
            },
            view = {
                width = 32
            },
            renderer = {
                root_folder_label = function(path)
                    local folder_name = vim.fn.fnamemodify(path, ":t")
                    folder_name = folder_name:gsub("^%l", string.upper)

                    local api = require("nvim-tree.api")

                    local winid = api.tree.winid()
                    if not winid then return name end

                    local width = vim.api.nvim_win_get_width(winid)
                    local padding = math.floor((width - #folder_name) / 2) - 2

                    return string.rep(" ", math.max(0, padding)) .. folder_name
                end,
                indent_markers = {
                    enable = true
                },
                icons = {
                    show = {
                        folder_arrow = false
                    }
                }
            }
        })
    end
}
