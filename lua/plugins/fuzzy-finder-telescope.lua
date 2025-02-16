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
      vim.keymap.set("n", "<Leader>fe", require("telescope.builtin").buffers)
      vim.keymap.set("n", "<Leader>ff", require("telescope.builtin").find_files)
      vim.keymap.set("n", "<Leader>fg", require("telescope.builtin").live_grep)
      vim.keymap.set("n", "<Leader>fv", require("telescope.builtin").grep_string)
      vim.keymap.set("n", "<Leader>fb", require("telescope.builtin").current_buffer_fuzzy_find)
    end,
  },
}
