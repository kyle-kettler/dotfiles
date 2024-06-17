return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
      ensure_installed = {
        "typescript",
        "javascript",
        "tsx",
        "html",
        "yaml",
        "toml",
        "json",
        "jsonc",
        "python",
        "jsdoc",
        "lua",
        "bash",
        "vim",
        "scss",
        "astro",
        "markdown",
      },
      modules = {},
      sync_install = false,
      ignore_install = {},
    })
    vim.treesitter.language.register("markdown", "mdx")

  end,
}
