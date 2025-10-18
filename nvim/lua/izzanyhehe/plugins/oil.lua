return {
    {
        "stevearc/oil.nvim",
        ---@module 'oil'
        ---@type oil.SetupOpts
        opts = {
            default_file_explorer = true,
            columns = {
                "icon",
                -- "permissions",
                -- "size",
                -- "mtime",
            },
            view_options = {
                show_hidden = true,
            },
            keymaps = {
                ["gi"] = {
                    desc = "Toggle file detail view",
                    callback = function()
                        detail = not detail
                        if detail then
                            require("oil").set_columns({ "icon", "permissions", "size", "mtime" })
                        else
                            require("oil").set_columns({ "icon" })
                        end
                    end,
                },
            },
        },
        -- Optional dependencies
        dependencies = { { "echasnovski/mini.icons", opts = {} } },
        -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
        -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
        lazy = false,
    },
    {
        "JezerM/oil-lsp-diagnostics.nvim",
        dependencies = { "stevearc/oil.nvim" },
        opts = {}
    },
    {
        "benomahony/oil-git.nvim",
        dependencies = { "stevearc/oil.nvim" },
        opts = {
            highlights = {
                OilGitAdded = { fg = "#a6e3a1" },
                OilGitModified = { fg = "#f9e2af" },
                OilGitRenamed = { fg = "#cba6f7" },
                OilGitUntracked = { fg = "#89b4fa" },
                OilGitIgnored = { fg = "#6c7086" },
            }
        }
    }
}
