return {
  -- dashboard to greet
  { 'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

      -- Set header
      dashboard.section.header.val = {
      "   █████╗ ███╗   ██╗ █████╗ ███╗   ██╗██████╗  ██████╗  ",  
      "  ██╔══██╗████╗  ██║██╔══██╗████╗  ██║██╔══██╗██╔═══██╗ ",  
      "  ███████║██╔██╗ ██║███████║██╔██╗ ██║██║  ██║██║   ██║ ",  
      "  ██╔══██║██║╚██╗██║██╔══██║██║╚██╗██║██║  ██║██║   ██║ ",  
      "  ██║  ██║██║ ╚████║██║  ██║██║ ╚████║██████╔╝╚██████╔╝ ",  
      "  ╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝  ╚═════╝  ",  
      "                                                        ",     

      }

      -- Set menu
      dashboard.section.buttons.val = {
        dashboard.button("e", "  > New file", ":ene <BAR> startinsert <CR>"),
        dashboard.button("f", "  > Find file", ":Telescope find_files<CR>"),
        dashboard.button("r", "  > Recent", ":Telescope oldfiles<CR>"),
        dashboard.button("s", "  > Settings", ":e $MYVIMRC | :cd %:p:h | split . | wincmd k<CR>"),
        dashboard.button("q", "  > Quit NVIM", ":qa<CR>"),
      }

      local fortune = require("alpha.fortune")
      dashboard.section.footer.val = fortune({
        fortune_list = {
          { "Everything happens for a reason!", "", "— 🦦" },
          { "Everyday you learn, everyday you grow!" },
          { "A little bit better than before" },
          { "If you feel love and gratitude you can never be in a scarcity mindset" },
          { "Everything you want is already yours!" },
          { "Always be grateful" },
        }
      })

      -- Send config to alpha
      alpha.setup(dashboard.opts)
    end
  },
}
