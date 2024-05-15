return {
  "nvim-telescope/telescope.nvim", tag = "0.1.6",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" }
  },
  config = function()
    local telescope = require("telescope")
    telescope.load_extension("fzf")

    local keymap = vim.keymap
    local builtin = require("telescope.builtin")
    keymap.set("n", "<leader>f", builtin.find_files, {})
    keymap.set("n", "<leader>h", builtin.oldfiles, {})
    keymap.set("n", "<leader>g", builtin.live_grep, {})
    keymap.set("n", "<leader>gg", builtin.grep_string, {})
  end
}
