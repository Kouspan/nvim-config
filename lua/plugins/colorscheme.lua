return {
  {
    "navarasu/onedark.nvim",
    lazy = true,
    name = "onedark",
    priority = 1000,
    config = function()
      M = require("onedark")
      M.setup({ style = "darker" })
      M.load()
    end
  },
  {
    'marko-cerovac/material.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.material_style = "palenight"
      local opts         = {}
      opts.high_visibility = { darker = true}
      opts.contrast      = { cursor_line = false }
      opts.plugins       = {
        "nvim-cmp",
        "nvim-web-devicons",
        "telescope",
        "which-key"
      }
      opts.lualine_style = "stealth"
      opts.async_loading = true
      require("material").setup(opts)
      vim.cmd 'colorscheme material'
    end
  }
}
