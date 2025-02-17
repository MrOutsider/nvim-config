return {
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      --vim.cmd([[colorscheme nightfox]])
      --vim.cmd([[colorscheme carbonfox]])
      --vim.cmd([[colorscheme nordfox]])
      vim.cmd([[colorscheme duskfox]])
    end,
  },
}
