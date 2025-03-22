-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

return {
  {
    'theprimeagen/harpoon',
    config = function()
      vim.keymap.set('n', '<leader>ha', function()
        require('harpoon.mark').add_file()
      end, { desc = '[h]arpoon [a]dd file' })

      vim.keymap.set('n', '<leader>hh', require('harpoon.ui').toggle_quick_menu, { desc = '[h]arpoon quick [h]' })
      vim.keymap.set('n', '<leader>hn', require('harpoon.ui').nav_next, { desc = '[h]arpoon next [n]' })
      vim.keymap.set('n', '<leader>h,', require('harpoon.ui').nav_prev, { desc = '[h]arpoon prev [,]' })

      -- not really related, but inspired and for testing only
      vim.keymap.set('n', '<leader>h.', ':!tmux split-window -d air<CR>', { desc = 'tmux split: air [h][.]' })
      vim.keymap.set(
        'n',
        '<leader>ht',
        ':!tmux split-window -h bash -c "go test ./... ; echo press ENTER to quit; read"<CR>',
        { desc = 'tmux split: go test [h][t]' }
      )

      -- rochacon colorscheme
      vim.cmd.colorscheme 'rochacon'
      vim.cmd.hi 'Comment gui=none'
    end,
  },
}
