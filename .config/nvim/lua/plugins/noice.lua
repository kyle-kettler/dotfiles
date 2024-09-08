return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    -- add any options here
  },
  dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    "MunifTanjim/nui.nvim",
    -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
    "rcarriga/nvim-notify",
  },
  config = function()
    require("noice").setup({
      lsp = {
        -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
        },
      },
      cmdline = {
        format = {
          cmdline = { pattern = "^:", icon = "", lang = "vim" },
        },
      },
      -- you can enable a preset for easier configuration
      presets = {
        bottom_search = true,     -- use a classic bottom cmdline for search
        command_palette = true,   -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = true,        -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = false,   -- add a border to hover docs and signature help
      },
    })

    -- Function to set the highlights
    local function set_noice_highlights()
      -- Border color
      vim.api.nvim_set_hl(0, "NoiceCmdlinePopupBorder", { fg = "#eebd35", default = true })

      -- Cmdline icon color (the ">")
      vim.api.nvim_set_hl(0, "NoiceCmdlineIcon", { fg = "#8ec07c", default = true })

      -- Treesitter highlights for Vim language
      -- vim.api.nvim_set_hl(0, "@variable.vim", { fg = "#ebdbb2", default = true })
      -- vim.api.nvim_set_hl(0, "@function.vim", { fg = "#ebdbb2", default = true })
      vim.api.nvim_set_hl(0, "@keyword.vim", { fg = "#d65d0e", default = true })
      -- vim.api.nvim_set_hl(0, "@string.vim", { fg = "#ebdbb2", default = true })
      -- vim.api.nvim_set_hl(0, "@number.vim", { fg = "#ebdbb2", default = true })

      -- Ensure NoiceCmdlinePopup uses the correct background
      vim.api.nvim_set_hl(0, "NoiceCmdlinePopup", { link = "Normal", default = true })
    end

    -- Set the highlights immediately
    set_noice_highlights()

    -- Set the highlights after ColorScheme changes
    vim.api.nvim_create_autocmd("ColorScheme", {
      pattern = "*",
      callback = set_noice_highlights,
    })

    -- Set the highlights after VimEnter
    vim.api.nvim_create_autocmd("VimEnter", {
      callback = set_noice_highlights,
    })

    -- Force override link after a short delay
    vim.defer_fn(function()
      vim.cmd([[
        hi! NoiceCmdlinePopupTitle guifg=#ebdbb2
        hi! NoiceCmdlinePopup guifg=#ebdbb2
        hi! NoiceCmdlineIcon guifg=#8ec07c
      ]])
    end, 100)
  end,
}
