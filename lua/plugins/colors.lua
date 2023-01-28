return {
  { 'shaunsingh/nord.nvim' },
  { 'folke/tokyonight.nvim' },
  { 'EdenEast/nightfox.nvim' },
  { "catppuccin/nvim",
    lazy = false,
    name = "catppuccin", config = function()
    require("catppuccin").setup {
      flavour = "frappe", -- mocha, macchiato, frappe, latte
      term_colors = true,
      integrations = {
        nvimtree = true,
        cmp = true,
        gitsigns = true,
        telescope = true,
        treesitter = true
      }
    }
    vim.cmd.colorscheme 'catppuccin'
    local colors = require('catppuccin.palettes.frappe')
    vim.cmd.highlight { 'Tabline', 'guifg=' .. colors.green, 'guibg=' .. colors.mantle }
  end
  },

  -- { 'AlexvZyl/nordic.nvim',
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     local palette = require 'nordic.colors'
  --     require 'nordic' .setup{
  --       telescope = {
  --         style = 'classic',
  --       },
  --       cursorline = {
  --         theme = 'light'
  --       },
  --     }
  --     vim.cmd.colorscheme 'nordic'
  --   end
  -- },

  -- color html colors
  { 'norcalli/nvim-colorizer.lua', config = function()
    require 'colorizer'.setup {
      css = { css_fn = true, css = true },
      'javascript',
      'html',
      'r',
      'rmd',
      'qmd',
      'markdown',
      'python'
    }
  end
  },
}
