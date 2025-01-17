return {
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("lualine").setup({
                options = {
                    theme = "dracula",
                    disabled_filetypes = {
                        "neo-tree",
                        "dapui_scopes",
                        "dapui_breakpoints",
                        "dapui_stacks",
                        "dapui_watches",
                        "dapui_console",
                        "dap-repl",
                    },
                    globalstatus = true,
                },
                sections = {
                    lualine_a = { "mode" },
                    lualine_b = { "diagnostics" },
                    lualine_c = { "filename" },
                    lualine_x = { "filetype" },
                    lualine_y = { "branch", "diff" },
                    lualine_z = {},
                },
                inactive_sections = {
                    lualine_a = {},
                    lualine_b = {},
                    lualine_c = { "filename" },
                    lualine_x = { "filetype" },
                    lualine_y = { "branch", "diff" },
                    lualine_z = {},
                },
                winbar = {
                    lualine_c = { { "filename", path = 1 } },
                },
                inactive_winbar = {
                    lualine_c = { { "filename", path = 1 } },
                },
            })
        end,
    },
}
