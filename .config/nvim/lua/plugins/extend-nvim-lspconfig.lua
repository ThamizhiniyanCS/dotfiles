return {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = {
    ---@type lspconfig.options
    servers = {},
    -- Ref: https://www.lazyvim.org/extras/lang/tailwind#nvim-lspconfig
    setup = {
      tailwindcss = function(_, opts)
        opts.settings = {
          -- Tailwind Variants IntelliSense Setup: https://www.tailwind-variants.org/docs/getting-started#intellisense-setup-optional
          tailwindCSS = {
            experimental = {
              classRegex = {
                { "([\"'`][^\"'`]*.*?[\"'`])", "[\"'`]([^\"'`]*).*?[\"'`]" },
              },
            },
          },
        }
      end,
    },
  },
}
