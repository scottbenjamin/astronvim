return {
    -- You can also add new plugins here as well:
    -- Add plugins, the lazy syntax
    -- "andweeb/presence.nvim",
    -- {
    --   "ray-x/lsp_signature.nvim",
    --   event = "BufRead",
    --   config = function()
    --     require("lsp_signature").setup()
    --   end,
    -- },
    --
    {
        "someone-stole-my-name/yaml-companion.nvim",
        lazy = false,
        dependencies = {
            {"neovim/nvim-lspconfig"}, {"nvim-lua/plenary.nvim"},
            {"nvim-telescope/telescope.nvim"}
        },
        opts = function()
            require("telescope").load_extension "yaml_schema"
        end
    }
}
