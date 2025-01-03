return {
  default_config = {
    cmd = { 'yls', '-vv' },
    filetypes = { 'yar', 'yara' },
    root_dir = function(fname)
      return vim.fs.dirname(vim.fs.find('.git', { path = fname, upward = true })[1])
    end,
    single_file_support = true,
  },
  docs = {
    description = [[
https://pypi.org/project/yls-yara/

An YLS plugin adding YARA linting capabilities.

This plugin runs yara.compile on every save, parses the errors, and returns list of diagnostic messages.

Language Server: https://github.com/avast/yls
]],
  },
}
