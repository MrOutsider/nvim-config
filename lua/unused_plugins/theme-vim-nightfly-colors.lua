return {
  {
    "bluz71/vim-nightfly-colors",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      vim.cmd([[colorscheme nightfly]])
    end,
  },
}
