local telescopeBuiltin = require('telescope.builtin')

local utils = {}

function utils.telescopeGitGrep()
  telescopeBuiltin.live_grep {
    cwd = vim.fn.systemlist("git rev-parse --show-toplevel")[1]
  }
end

function utils.telescopeFileSearch()
  telescopeBuiltin.find_files {
    cwd = vim.fn.systemlist("git rev-parse --show-toplevel")[1]
  }
end

return utils
