return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      components = {
        harpoon_index = function(config, node, _)
          local Marked = require("harpoon.mark")
          local path = node:get_id()
          local success, index = pcall(Marked.get_index_of, path)
          if success and index and index > 0 then
            return {
              text = string.format("%d ", index), -- <-- Add your favorite harpoon like arrow here
              highlight = config.highlight or "NeoTreeDirectoryIcon",
            }
          else
            return {
              text = "  ",
            }
          end
        end,
      },
      renderers = {
        file = {
          { "icon" },
          { "name", use_git_status_colors = true },
          { "harpoon_index" }, --> This is what actually adds the component in where you want it
          { "diagnostics" },
          { "git_status", highlight = "NeoTreeDimText" },
        },
      },
      filtered_items = {
        visible = true,
        show_hidden_count = true,
        hide_dotfiles = false,
        hide_gitignored = true,
        hide_by_name = {
          ".git",
          -- '.DS_Store',
          -- 'thumbs.db',
        },
        never_show = {},
      },
      bind_to_cwd = false,
    },
  },
}
