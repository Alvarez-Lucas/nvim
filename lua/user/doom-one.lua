local doomone =  require('doom-one')
-- Works
doomone.setup({
  cursor_coloring = true,
  terminal_colors = false,
  italic_comments = true,
  enable_treesitter = true,
  transparent_background = true,
  pumblend = {
      enable = true,
      transparency_amount = 20,
  },
  plugins_integrations = {
      neorg = true,
      barbar = true,
      bufferline = false,
      gitgutter = false,
      gitsigns = true,
      telescope = false,
      neogit = true,
      nvim_tree = true,
      dashboard = true,
      startify = true,
      whichkey = true,
      indent_blankline = true,
      vim_illuminate = true,
      lspsaga = false,
  },
})
