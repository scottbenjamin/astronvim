return {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, config)
        -- config variable is the default configuration table for the setup function call
        local null_ls = require "null-ls"

        -- Check supported formatters and linters
        -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
        -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
        config.sources = {
            null_ls.builtins.formatting.prettier,
            null_ls.builtins.formatting.stylua,
            null_ls.builtins.formatting.terraform_fmt,
            null_ls.builtins.formatting.trim_whitespace,
            null_ls.builtins.formatting.trim_newlines,
            null_ls.builtins.diagnostics.flake8,
            null_ls.builtins.diagnostics.terraform_validate
        }
        return config -- return final config table
    end
}
