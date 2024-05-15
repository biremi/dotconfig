return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {},
  config = function(_, opts)
    require("toggleterm").setup(opts)
    local keymap = vim.keymap
    keymap.set("n", "<leader>q", ":ToggleTerm size=30<CR>", {})
  end
}
