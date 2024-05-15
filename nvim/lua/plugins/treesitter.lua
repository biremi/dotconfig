return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  dependencies = {
    "RRethy/nvim-treesitter-endwise",
    "windwp/nvim-ts-autotag"
  },
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = { "lua", "vim", "vimdoc", "ruby", "javascript", "html", "sql" },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
      endwise = { enable = true },
      autotag = { enable = true }
    })
  end
}
