return {
  "windwp/nvim-autopairs",
  config = function(plugin, opts)

    require "plugins.configs.nvim-autopairs"(plugin, opts)
    local Rule = require "nvim-autopairs.rule"
    local npairs = require "nvim-autopairs" 
    
    npairs.remove_rule("'", systemverilog)
  end,
}
