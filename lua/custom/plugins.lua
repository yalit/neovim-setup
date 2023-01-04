return function(use)
  -- WhichKey : popup with the combinations possibles for a key typed
  use({
    "folke/which-key.nvim",
      config = function()
        require("which-key").setup({})
      end
  })

  -- integrated tree visualizer
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    config = function()
      require("nvim-tree").setup()
    end
  }

  -- integrated Lazygit in nvim
  use 'kdheepak/lazygit.nvim'

  -- able to search for commands/actions
  use({
    'mrjones2014/legendary.nvim',
  })

  -- add additional flair to telescope
  use {'stevearc/dressing.nvim'}

  -- able to run make commands from nvim
  use({"desdic/greyjoy.nvim",
    config = function()
      local greyjoy = require("greyjoy")
      greyjoy.setup({
        output_results = "toggleterm",
        last_first = true,
        extensions = {
          generic = {
            commands = {
            }
          },
        },
        run_groups = {
          fast = {"generic", "makefile"},
        }
      })
      greyjoy.load_extension("generic")
      greyjoy.load_extension("makefile")
    end
  })

  -- able to open a terminal directly inside nvim
  use {
    "akinsho/toggleterm.nvim",
    tag = '*',
    config = function()
      require("toggleterm").setup()
    end
  }

  -- add nice bar visualization for different tabs and buffers
  use 'nvim-tree/nvim-web-devicons'
  use {'romgrk/barbar.nvim', wants = 'nvim-web-devicons'}

  use({
    'm4xshen/autoclose.nvim',
  })

  require("autoclose").setup({
    keys = {
       ["("] = { escape = false, close = true, pair = "()"},
       ["["] = { escape = false, close = true, pair = "[]"},
       ["{"] = { escape = false, close = true, pair = "{}"},

       [">"] = { escape = true, close = false, pair = "<>"},
       [")"] = { escape = true, close = false, pair = "()"},
       ["]"] = { escape = true, close = false, pair = "[]"},
       ["}"] = { escape = true, close = false, pair = "{}"},

       ['"'] = { escape = true, close = true, pair = '""'},
       ["'"] = { escape = true, close = true, pair = "''"},
       ["`"] = { escape = true, close = true, pair = "``"},
    },
    options = {
       disabled_filetypes = { },
    },
  })
end
