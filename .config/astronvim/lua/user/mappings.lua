return {

  n = {
    ["<C-]>"]       = { ":ts <C-R><C-W><CR>", desc = "Tag select"},
    ["<leader>cpf"] = { ':let @+ = expand("%:p")<CR>', desc = "copy file path"},
  }
}
