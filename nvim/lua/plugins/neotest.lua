return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    "olimorris/neotest-rspec"
  },
  config = function()
    require("neotest").setup({
      adapters = {
        require("neotest-rspec")({
          rspec_cmd = function()
            return vim.tbl_flatten({
              "bundle",
              "exec",
              "rspec",
            })
          end,
          filter_dirs = { ".git", "node_modules" },
        })
      }
    })
  end,
  keys = {
    { "<leader>sf", function() require("neotest").run.run(vim.fn.expand("%")) end, desc = "Run File" },
    { "<leader>se", function() require("neotest").run.run() end, desc = "Run Nearest" },
    { "<leader>ss", function() require("neotest").summary.toggle() end, desc = "Toggle Summary" },
    { "<leader>so", function() require("neotest").output.open({ enter = true, auto_close = true }) end, desc = "Show Output" },
    { "<leader>sO", function() require("neotest").output_panel.toggle() end, desc = "Toggle Output Panel" },
    { "<leader>sS", function() require("neotest").run.stop() end, desc = "Stop" },
  },
}
