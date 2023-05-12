return {
  "nvim-treesitter/nvim-treesitter",
  as = "nvim-treesiter",
  --opts = {
  --  hightlight = { enable = true},
  --},
  config = function ()
    local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
    parser_config.verilog = {
      install_info = {
        url = "~/App/tree-sitter-verilog/", -- local path or git repo
        files = {"src/parser.c"}, -- note that some parsers also require src/scanner.c or src/scanner.cc
        -- optional entries:
        branch = "main", -- default branch in case of git repo if different from master
        generate_requires_npm = false, -- if stand-alone parser without npm dependencies
        requires_generate_from_grammar = false, -- if folder contains pre-generated src/parser.c
      },
      filetype = "systemverilog", -- if filetype does not match the parser name
    }
    require "nvim-treesitter.configs".setup {
      highlight = {
        enable = true,
      },
      rainbow = {
        enable = true,
      },
      indent = {
        enable = ture,
      }
    }
  end,
}
