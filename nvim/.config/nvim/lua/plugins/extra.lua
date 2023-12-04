return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    config = function()
      require("rose-pine").setup({
        variant = "auto",
        disable_background = true,
        disable_float_background = true,
        dim_nc_background = false,
      })
      -- vim.cmd([[colorscheme rose-pine]]) -- not needed inside LazyVim
    end,
  },
  { "LazyVim/LazyVim", opts = { colorscheme = "rose-pine" } },
  -- this doesn't make the notifs smaller idk why
  {
    "rcarriga/nvim-notify",
    opts = { level = 3, render = "minimal", stages = "static" },
  },
  -- disabling the troll hiding
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          visible = false,
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_by_name = { ".git", ".DS_Store", "thumbs.db" },
        },
        never_show = {},
      },
    },
  },
  --  i don't have enough screen for sidebar T_T
  -- { "nvim-neo-tree/neo-tree.nvim", enabled = false },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      highlight = {
        -- markdown treesitter hides bulletpoints
        disable = { "markdown" }
      }
    }
  },
  -- just testing out disabling some of this stuff
  -- { "akinsho/bufferline.nvim", enabled = false },
  { "lukas-reineke/indent-blankline.nvim", enabled = false },
  { "echasnovski/mini.indentscope", enabled = false }, -- animated indent guides
  -- { "nvimdev/dashboard-nvim", enabled = false }, -- looks pretty cool tbh
  -- { "rcarriga/nvim-notify", enabled = false },
}
