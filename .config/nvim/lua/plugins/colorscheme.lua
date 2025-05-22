-- References:
--      - https://github.com/folke/tokyonight.nvim?tab=readme-ov-file#-installation
--      - https://lazy.folke.io/spec/examples
--      - https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/plugins/colorscheme.lua

return {
    "folke/tokyonight.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme tokyonight-night]])
    end,
}
