return {
  {
    "saecki/crates.nvim",
    config = function()
      require("crates").setup()
    end,
  },
  {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup()
    end,
  },
  {
    "petertriho/nvim-scrollbar",
    config = function()
      require("scrollbar").setup()
    end,
  },
  {
    "ThePrimeagen/harpoon"
  },
  {
    "ThePrimeagen/vim-be-good"
  },
  -- {
  --   -- theme
  --   "rebelot/kanagawa.nvim"
  -- },
  -- {
  --   -- theme
  --   "neanias/everforest-nvim"
  -- },
  -- {
  --   "sainnhe/everforest"
  -- },
  {
    "nvim-pack/nvim-spectre"
  },
  {
    -- delete does not cut
    "svermeulen/vim-cutlass"
  },
  {
    --- multi cursor
    "mg979/vim-visual-multi"
  },
}
