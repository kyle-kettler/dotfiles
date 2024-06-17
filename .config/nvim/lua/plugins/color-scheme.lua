return {
  -- {
  --   "mellow-theme/mellow.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     vim.g.mellow_transparent = true
  --     vim.cmd("colorscheme mellow")
  --   end,
  -- },
  -- {
  --   "folke/tokyonight.nvim",
  --   lazy = false,
  --   opts = {},
  --   priority = 100,
  --   config = function()
  --     require("tokyonight").setup({
  --       style = "moon", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
  --       transparent = true, -- Enable this to disable setting the background color
  --     })
  --     vim.cmd.colorscheme("tokyonight")
  --   end,
  -- },
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 100,
    config = function()
      -- Default options:
      require("kanagawa").setup({
        compile = false, -- enable compiling the colorscheme
        undercurl = true, -- enable undercurls
        commentStyle = { italic = true },
        functionStyle = {},
        keywordStyle = { italic = true },
        statementStyle = { bold = true },
        typeStyle = {},
        transparent = true, -- do not set background color
        dimInactive = false, -- dim inactive window `:h hl-NormalNC`
        terminalColors = false, -- define vim.g.terminal_color_{0,17}
        colors = {         -- add/modify theme and palette colors
          palette = {},
          theme = {
            wave = {},
            lotus = {},
            dragon = {},
            all = {
              ui = {
                bg_gutter = "none",
              },
            },
          },
        },
        overrides = function(colors) -- add/modify highlights
          local theme = colors.theme
          return {
            CursorLineNR = { fg = colors.palette.oniViolet, bg = "none" },
            LineNr = { fg = colors.palette.waveAqua1, bg = "none" },
            IncSearch = { fg = colors.palette.fujiWhite, bg = colors.palette.oniViolet },
            NormalFloat = { bg = "none" },
            FloatBorder = { bg = "none" },
            FloatTitle = { bg = "none" },

            -- Save an hlgroup with dark background and dimmed foreground
            -- so that you can use it where your still want darker windows.
            -- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
            NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },

            -- Plugins 
            LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
            MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
            TelescopeTitle = { fg = theme.ui.special, bold = true, bg = "none" },
            TelescopePromptBorder = { fg = theme.ui.special, bg = "none" },
            TelescopeResultsBorder = { fg = theme.ui.special, bg = "none"  },
            TelescopePreviewBorder = { bg = "none", fg = theme.ui.special },
          }
        end,
        theme = "wave", -- Load "wave" theme when 'background' option is not set
        background = { -- map the value of 'background' option to a theme
          dark = "wave", -- try "dragon" !
          light = "lotus",
        },
      })

      -- setup must be called before loading
      vim.cmd("colorscheme kanagawa")
    end,
  },
}
