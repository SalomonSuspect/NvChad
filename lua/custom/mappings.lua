 local M = {}
 M.customTelescope = {
   n = {
    ["<leader>gw"] = { "<cmd> Telescope  git_files<CR>", "Find git file" },
   },
 }
 M.harpoon = {
   n = {
      ["<leader>l"] = {
        function()
           local harpoon = require("harpoon")
           --harpoon.setup()
           harpoon.ui:toggle_quick_menu(harpoon:list())
        end, "Harpoon list file",
   },
 }
 }


return M
