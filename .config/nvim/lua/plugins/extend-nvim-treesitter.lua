return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- Defaults: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/plugins/treesitter.lua
    vim.list_extend(opts.ensure_installed, {
      "asm",
      "astro",
      "comment",
      "css",
      "csv",
      "dockerfile",
      "fish",
      "git_config",
      "git_rebase",
      "gitattributes",
      "gitcommit",
      "gitignore",
      "gitignore",
      "hyprlang",
      "java",
      "nix",
      "powershell",
      "rust",
    })
  end,
}
