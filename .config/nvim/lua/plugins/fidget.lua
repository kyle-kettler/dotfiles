return {
  {
    "j-hui/fidget.nvim",
    event = { "BufEnter" },
    opts = {
      window = {
        winblend = 0,
        relative = "editor",
      },
    },
    config = function()
      require("fidget").setup(opts)
    end,
  },
}
