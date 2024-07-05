return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        -- import mason
        local mason = require("mason")

        -- mason lspconfig
        local mason_lspconfig = require("mason-lspconfig")

        -- enable mason and configure icons
        mason.setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        })
        
        mason_lspconfig.setup({
            -- list of servers for mason to install
            ensure_installed = {
                "tsserver",
                "html",
                "cssls",
                "tailwindcss",
                "lua_ls",
                "graphql",
                "prismals",
                "pyright",
                "arduino_language_server",
                -- "asm_lsp",
                "astro",
                "azure_pipelines_ls",
                "bashls",
                "clangd",
                "cmake",
                "cssmodules_ls",
                "css_variables",
                "cypher_ls",
                "docker_compose_language_service",
                "eslint",
                "gradle_ls",
                "jsonls",
                "ltex",
                "autotools_ls",
                "markdown_oxide",
                "mdx_analyzer",
                "mesonlsp",
                "nginx_language_server",
                -- "r_language_server",
                "rust_analyzer",
                "sqlls",
                "toml",
                "yamlls",
                "vimls",
            },
        })
    end,
}
