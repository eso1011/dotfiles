-- ~/.config/nvim/lua/plugins/dap-go.lua
return {
  {
    "leoluz/nvim-dap-go",
    opts = {
      dap_configurations = {
        {
          type = "go",
          name = "Attach remote",
          mode = "remote",
          request = "attach",
          host = "0.0.0.0",
          port = 2345,
        },
      },
    },
  },
}
-- return {
--   "mfussenegger/nvim-dap",
--   optional = true,
--   dependencies = {
--     {
--       "williamboman/mason.nvim",
--       opts = { ensure_installed = { "delve" } },
--     },
--     {
--       "leoluz/nvim-dap-go",
--       opts = {},
--     },
--   },
--   config = function()
--     local dap = require("dap")
--     require("dap-go").setup()
--
--     dap.adapters.go = function(callback, _)
--       callback({
--         type = "server",
--         host = "0.0.0.0", -- Or the Docker container's hostname
--         port = 2345, -- The port Delve is listening on
--       })
--     end
--
--     dap.configurations.go = {
--       {
--         type = "go",
--         name = "Remote Debug",
--         request = "attach",
--         mode = "remote",
--         host = "0.0.0.0", -- Change this to match the Docker network if needed
--         port = 2345,
--       },
--     }
--   end,
-- }
