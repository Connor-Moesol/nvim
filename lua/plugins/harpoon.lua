return {
  "ThePrimeagen/harpoon",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = true,
  keys = {
    { "<leader>a", "<cmd>lua require('harpoon.mark').add_file()<cr>" },
    { "<C-e>", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>" },
    { "<C-h>", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>" },
    { "<C-j>", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>" },
    { "<C-n>", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>" },
    { "<C-m>", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>" },
  },
}
