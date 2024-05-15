return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  config = function()
    require("dashboard").setup({
      theme = "hyper",
      config = {
        week_header = {
          enable = true
        },
        shortcut = {},
        project = {
          enable = true,
          limit = 10,
          label = "Projects",
        }
      }
    })
  end,
  dependencies = { {"nvim-tree/nvim-web-devicons"}}
}
