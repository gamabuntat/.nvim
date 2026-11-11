require('telescope').setup{
  pickers = {
    find_files = {
      find_command = { "fd", "--type", "f", "--strip-cwd-prefix" }
    },
    buffers = {
      ignore_current_buffer = true,
      sort_mru = true,
      sort_lastused = true,
    },
  },
}
