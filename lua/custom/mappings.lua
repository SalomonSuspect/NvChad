 local M = {}
  M.customTelescope = {
   n = {
    ["<leader>gw"] = { "<cmd> Telescope  git_files<CR>", "Find git file" },
   }
 }


return M
