-- ~/.config/nvim/lua/plugins/neotest.lua
return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/neotest-python",
  },
  config = function()
    require("neotest").setup({
      adapters = {
        require("neotest-python")({}),
      },
    })
  end,
}
