local plugins = {
  { 'nvim-lua/plenary.nvim', lazy = false },
  { 'nvim-pack/nvim-spectre', lazy = false },
  { "dmmulroy/tsc.nvim", lazy = false},
  { "tpope/vim-fugitive", lazy = false},
  { 'pwntester/octo.nvim', lazy = false},
  { "github/copilot.vim", lazy = false},
  { "nvim-tree/nvim-web-devicons", lazy = false},
  {
  "neovim/nvim-lspconfig",
   config = function()
      require'lspconfig'.tsserver.setup {}
   end,
  },
  {

"smoka7/hop.nvim",

keys = {

{

",",

function()

require("hop").hint_words()

end,

mode = { "n", "x", "o" },

},

{

"s",

function()

require("hop").hint_char2()

end,

mode = { "n", "x", "o" },

},

{

"f",

function()

require("hop").hint_char1 {

direction = require("hop.hint").HintDirection.AFTER_CURSOR,

current_line_only = true,

}

end,

mode = { "n", "x", "o" },

},

{

"F",

function()

require("hop").hint_char1 {

direction = require("hop.hint").HintDirection.BEFORE_CURSOR,

current_line_only = true,

}

end,

mode = { "n", "x", "o" },

},

},

opts = {

multi_windows = true,

keys = "htnsueoaidgcrlypmbkjvx",

uppercase_labels = true,

-- reverse_distribution = true,

},

},
}

return plugins
