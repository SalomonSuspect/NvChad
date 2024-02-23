local plugins = {
 {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "black",
        "debugpy",
        "mypy",
        "ruff",
        "pyright",
      },
    },
  },
  {"neovim/nvim-lspconfig",
  config = function()
     require "plugins.configs.lspconfig"
     require "custom.configs.lspconfig"
  end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults 
        "vim",
        "lua",

        -- languages
        "python",
      },
    },
  },
  {
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
    keys = { { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } },
    opts = {
     -- add your options that should be passed to the setup() function here
      position = "right",
      },
  },
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    lazy=false,
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      return require "custom.configs.harpoon"
    end,
  }
}

return plugins
