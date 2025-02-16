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
      vim.keymap.set("n", "<Leader>fe", require("telescope.builtin").buffers) -- View open buffers
      vim.keymap.set("n", "<Leader>ff", require("telescope.builtin").find_files) -- Find file
      vim.keymap.set("n", "<Leader>fg", require("telescope.builtin").live_grep) -- Find in files
      vim.keymap.set("n", "<Leader>fv", require("telescope.builtin").grep_string) -- Find hovered word in files
      vim.keymap.set("n", "<Leader>fb", require("telescope.builtin").current_buffer_fuzzy_find) -- Find in current buffer
    end,
  },
}
