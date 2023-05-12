return {
  {
    "ThePrimeagen/vim-be-good"
  },
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
  }
}
