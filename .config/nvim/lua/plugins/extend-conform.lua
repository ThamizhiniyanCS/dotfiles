return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        -- List of Formatters: https://github.com/stevearc/conform.nvim?tab=readme-ov-file#formatters
        lua = { "stylua" },
        fish = { "fish_indent" },
        sh = { "shfmt" },
        python = { "ruff_format" },
        rust = { "rustfmt" },
        astro = { "prettier" },
        css = { "prettier" },
        graphql = { "prettier" },
        javascript = { "prettier" },
        javascriptreact = { "prettier" },
        json = { "prettier" },
        jsonc = { "prettier" },
        typescript = { "prettier" },
        ["typescript.tsx"] = { "prettier" },
        typescriptreact = { "prettier" },
        vue = { "prettier" },
      },
    },
  },
}
