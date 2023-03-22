return {
    -- Add the community repository of plugin specifications
    "AstroNvim/astrocommunity",
    -- example of imporing a plugin, comment out to use it or add your own
    -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

    {import = "astrocommunity.colorscheme.catppuccin"},
    {import = "astrocommunity.completion.copilot-lua"}, {
        "copilot.lua",
        opts = {
            suggestion = {
                keymap = {accept = "<C-y>", next = "<C-n>", prev = "<C-p>"}
            }
        }
    }, {import = "astrocommunity.completion.copilot-lua-cmp"},
    {import = "astrocommunity.motion.mini-surround"},
    {import = "astrocommunity.scrolling.mini-animate"},
    {import = "astrocommunity.utility.noice-nvim"}
}
