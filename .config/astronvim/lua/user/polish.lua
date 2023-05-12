return function()
  local WA = os.getenv('WA')
  if WA then
    vim.opt.tags:append(WA .. '/tags')
  end
  vim.opt.tags:append("~/TAGS/uvm_tags")
end
