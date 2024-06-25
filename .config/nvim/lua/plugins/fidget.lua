return {
  {
    "j-hui/fidget.nvim",
    event = { "BufEnter" },
    config = function()
      require("fidget").setup({
        window = {
          winblend = 0,
          relative = "editor",
        },
      })
    end,
  },
}
