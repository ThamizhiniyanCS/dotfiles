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
        css = { "biome" },
        graphql = { "biome" },
        javascript = { "biome" },
        javascriptreact = { "biome" },
        json = { "biome" },
        jsonc = { "biome" },
        svelte = { "biome" },
        typescript = { "biome" },
        ["typescript.tsx"] = { "biome" },
        typescriptreact = { "biome" },
        vue = { "biome" },
      },
    },
  },
}
