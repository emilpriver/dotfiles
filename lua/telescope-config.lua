local telescope = require("telescope")

telescope.setup{
  defaults = {
    previewer = true,
	  file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
	  grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
	  qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,
  },
  pickers = {
    find_files = {
      theme = "dropdown",
      previewer = false
    }
  },
  extensions = {
    file_browser = {
      theme = "dropdown",
      previewer = false,
    },
  }
}

require("telescope").load_extension "file_browser"

vim.api.nvim_set_keymap('n', '<C-P>', "<cmd>lua require('telescope.builtin').find_files()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<C-N>', ":Telescope file_browser<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<C-F>', "<cmd>lua require('telescope.builtin').live_grep()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<C-B>', "<cmd>lua require('telescope.builtin').buffers()<CR>", { noremap = true })
