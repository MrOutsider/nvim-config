return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      "BurntSushi/ripgrep",
    },
    config = function()
      vim.keymap.set("n", "<Leader>ff", require("telescope.builtin").find_files)
      vim.keymap.set("n", "<Leader>fg", require("telescope.builtin").live_grep)
    end,
  },
}
