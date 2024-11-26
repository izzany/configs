return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim",
    },
    config = function()
        local harpoon = require('harpoon')
        harpoon:setup()

        -- basic telescope configuration
        local conf = require("telescope.config").values
        local function toggle_telescope(harpoon_files)
            local file_paths = {}
            for _, item in ipairs(harpoon_files.items) do
                table.insert(file_paths, item.value)
            end

            require("telescope.pickers").new({}, {
                prompt_title = "Harpoon",
                finder = require("telescope.finders").new_table({
                    results = file_paths,
                }),
                previewer = conf.file_previewer({}),
                sorter = conf.generic_sorter({}),
            }):find()
        end

        vim.keymap.set("n", "<leader>hA", function() harpoon:list():prepend() end)
        vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end)
        vim.keymap.set("n", "<leader>hh", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

        vim.keymap.set("n", "<leader>hn", function() harpoon:list():select(1) end)
        vim.keymap.set("n", "<leader>he", function() harpoon:list():select(2) end)
        vim.keymap.set("n", "<leader>hi", function() harpoon:list():select(3) end)
        vim.keymap.set("n", "<leader>ho", function() harpoon:list():select(4) end)
        vim.keymap.set("n", "<leader>h<C-n>", function() harpoon:list():replace_at(1) end)
        vim.keymap.set("n", "<leader>h<C-e>", function() harpoon:list():replace_at(2) end)
        vim.keymap.set("n", "<leader>h<C-i>", function() harpoon:list():replace_at(3) end)
        vim.keymap.set("n", "<leader>h<C-o>", function() harpoon:list():replace_at(4) end)
    end
}
