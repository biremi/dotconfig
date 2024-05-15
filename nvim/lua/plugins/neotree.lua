return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim"
  },
  opts = {
    filesystem = { follow_current_file = { enabled = true } }
  },
  config = function(_, opts)
    require("neo-tree").setup(opts)

    vim.keymap.set("n", "<leader>t", ":Neotree toggle<CR>", {})
  end
}
