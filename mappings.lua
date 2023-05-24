-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command

    ["<C-space>"] = {
      require("rust-tools").hover_actions.hover_actions,
      desc = "Rust Hover Actions",
    },
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" },

    -- Harpoon
    ["<leader>h"] = false,
    ["<leader>h1"] = {
      function() require("harpoon.ui").nav_file(1) end,
      desc = "Harpoon go to file 1",
    },
    ["<leader>h2"] = {
      function() require("harpoon.ui").nav_file(2) end,
      desc = "Harpoon go to file 2",
    },
    ["<leader>h3"] = {
      function() require("harpoon.ui").nav_file(3) end,
      desc = "Harpoon go to file 3",
    },
    ["<leader>h4"] = {
      function() require("harpoon.ui").nav_file(4) end,
      desc = "Harpoon go to file 4",
    },
    ["<leader>h5"] = {
      function() require("harpoon.ui").nav_file(5) end,
      desc = "Harpoon go to file 5",
    },
    ["<leader>ha"] = {
      function() require("harpoon.mark").add_file() end,
      desc = "Harpoon add",
    },
    ["<leader>ho"] = {
      function() require("harpoon.ui").toggle_quick_menu() end,
      desc = "Harpoon overview",
    },
    
    -- ["ss"] = { ":w<cr>", desc = "Save File" },
    ["<Bs>"] = { "x", desc = "Delete" },


   -- Spectre
    ["<leader>,a"] = { '<cmd>lua require("spectre").open()<CR>', desc = "Spectre" },
    ["<leader>,w"] = {
      '<cmd>lua require("spectre").open_visual({select_word=true})<CR>',
      desc = "Spectre search current word",
    },
    ["<leader>,p"] = {
      '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>',
      desc = "Spectre current file",
    },
    
    -- Tabs / Buffers
    ["sr"] = {
        function()
            require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1)
        end,
        desc = "Next buffer"
    },
    ["sl"] = {
        function()
            require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1))
        end,
        desc = "Previous buffer"
    },

    -- I
    ["<leader>io"] = {
      function() require("crates").show_features_popup() end,
      desc = "Show rust crate features",
    },

    -- moving lines (Shift-Up/Down)
    ["<S-Up>"] = { "<cmd>m-2<cr>", desc = "Moves line one up" },
    ["<S-Down>"] = { "<cmd>m+<cr>", desc = "Moves line one Down" },

    ["<S-u>"] = {
        "<cmd>:call vm#commands#add_cursor_up(0, 1)<cr>", 
        desc = "Multicursor up"
    },
    ["<S-l>"] = {
      "<cmd>:call vm#commands#add_cursor_down(0, 1)<cr>",
      desc = "Multicursor down"
    },
  },
  
  i = {
    ["<C-s>"] = { "<esc>:w<cr>", desc = "Save File" },
    ["kk"] = { "<esc>:w<cr>", desc = "Save File + Enter normal mode" },
  },
  
  v = {
    ["x"] = { "ygvd", desc = "Cut" },
    ["c"] = { "ygv", desc = "Copy + Keep selection" },
  },

  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
