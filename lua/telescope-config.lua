local telescope = require("telescope")

telescope.setup{
  defaults = {
    previewer = true,
	  file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
	  grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
	  qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,
    shorten_path = true,
    winblend = 10,
    layout_strategy = 'horizontal',
    layout_config = {
      height = 0.95,
      width = 0.95,
      prompt_position = 'top',
      preview_width= 0.6
    },
  },
  pickers = {
    find_files = {
      theme = "dropdown",
      layout_strategy = "horizontal",
      layout_config ={
        width = 0.95,
        height = 0.95,
        preview_width = 0.6
      }
    }
  },
  extensions = {
    file_browser = {
      theme = "dropdown",
      layout_strategy = 'horizontal',
      layout_config = {
        height = 0.95,
        width = 0.95,
        prompt_position = 'top',
      },
    },
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"                                  -- the default case_mode is "smart_case"
    }
  }
}

require('telescope').load_extension('fzf')
require("telescope").load_extension('file_browser')

vim.api.nvim_set_keymap('n', '<C-P>', "<cmd>lua require('telescope.builtin').find_files()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<C-N>', ":Telescope file_browser<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<C-F>', "<cmd>lua require('telescope.builtin').live_grep()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<C-B>', "<cmd>lua require('telescope.builtin').buffers()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<C-H>', "<cmd>lua require('telescope.builtin').help_tags()<CR>", { noremap = true })
