return {
  'williamboman/mason-lspconfig.nvim',
  lazy = true,
  config = function()
    local lspconfig = require('lspconfig')
    local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

    local default_setup = function(server)
      lspconfig[server].setup({
        capabilities = lsp_capabilities,
      })
    end

    require('mason-lspconfig').setup({
      ensure_installed = { 'lua_ls' },
      handlers = {
        default_setup,
        lua_ls = function()
          -- (Optional) Configure lua language server for neovim
          lspconfig.lua_ls.setup({
            settings = {
              Lua = {
                runtime = {
                  version = 'LuaJIT'
                },
                diagnostics = {
                  globals = { 'vim' },
                },
                workspace = {
                  library = {
                    vim.env.VIMRUNTIME,
                  }
                }
              }
            }
          })
        end,
        powershell_es = function()
          require('lspconfig').powershell_es.setup {}
        end
      }
    })
  end,
}
