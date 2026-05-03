local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Telescope git files' })

vim.keymap.set('n', '<leader>ps', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, { desc = 'Telescope grep string' })

vim.keymap.set("n", "<leader>pg", function()
  builtin.live_grep({ cwd = vim.fn.expand("%:p:h") })
end, { desc = "Live grep in current file directory" })

vim.keymap.set("n", "<leader>pd", function()
  builtin.grep_string({
    search = vim.fn.input("Grep > "),
    cwd = vim.fn.expand('%:p:h'),
    additional_args = function()
      return { "--no-ignore-parent" }
    end,
  })
end, { desc = "Grep including submodules" })
