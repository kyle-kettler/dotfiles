return {
  "echasnovski/mini.indentscope",
  version = false,
  config = function()
    require("mini.indentscope").setup({
      symbol = "▏",
      -- symbol = "│",
      options = { try_as_border = true },
    })
  end,
}
