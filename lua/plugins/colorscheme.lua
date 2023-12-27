return {
  {
    "navarasu/onedark.nvim",
    lazy = true,
    priority = 1000,
    config = function()
      M = require("onedark")
      M.setup({ style = "darker" })
      M.load()
    end
  },
  {
    "miikanissi/modus-themes.nvim",
    priority = 1000,
    lazy = false,
    config = function ()
      require("modus-themes").setup({
        style = "modus_vivendi",
        dim_inactive = false,
        on_highlights = function (highlights, colors)
          highlights.LineNr = colors.black
        end
      })
      vim.cmd([[colorscheme modus]])
    end
  },
  {
    'marko-cerovac/material.nvim',
    lazy = true,
    priority = 1000,
    config = function()
      vim.g.material_style = "palenight"
      local opts           = {}
      opts.high_visibility = { darker = true }
      opts.contrast        = { cursor_line = false }
      opts.plugins         = {
        "nvim-cmp",
        "nvim-web-devicons",
        "telescope",
        "which-key"
      }
      opts.lualine_style   = "stealth"
      opts.async_loading   = true
      require("material").setup(opts)
      vim.cmd 'colorscheme material'
    end
  }
}
