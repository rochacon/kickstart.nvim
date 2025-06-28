-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

return {
  { -- fugitive git frontend
    'tpope/vim-fugitive',
    config = function()
      vim.keymap.set('n', '<leader>ga', ':Git add -p<CR>')
      vim.keymap.set('n', '<leader>gc', ':Git commit -S -v<CR>')
      vim.keymap.set('n', '<leader>gd', ':Git diff<CR>')
      vim.keymap.set('n', '<leader>gg', ':Git<CR>')
      vim.keymap.set('n', '<leader>gb', ':Git blame<CR>')
      vim.keymap.set('n', '<leader>gl', ':Git log<CR>')
      vim.keymap.set('n', '<leader>gs', ':Git status<CR>')
      vim.keymap.set('n', '<leader>p', ':Git pull --rebase<CR>')
      vim.keymap.set('n', '<leader>pp', ':Git pp<CR>')
      vim.keymap.set('n', '<leader>P', ':Git push<CR>')
      vim.keymap.set('n', '<leader>Pu', ':Git push -u origin ')
    end,
  },

  {
    'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
  },

  -- 'saadparwaiz1/cmp_luasnip',

  -- Adds other completion capabilities.
  --  nvim-cmp does not ship with all sources by default. They are split
  --  into multiple repos for maintenance purposes.
  -- 'hrsh7th/cmp-nvim-lsp',
  -- 'hrsh7th/cmp-buffer',
  -- 'hrsh7th/cmp-path',
  -- 'hrsh7th/cmp-nvim-lsp-signature-help',

  -- GitHub Copilot
  -- 'github/copilot.vim',

  { -- NERDtree
    'preservim/nerdtree',
    config = function()
      vim.keymap.set('n', '<C-e>', ':NERDTreeToggle<CR>')
    end,
  },

  'projekt0n/github-nvim-theme',
  'LunarVim/darkplus.nvim',
  {
    'nordtheme/vim',
    init = function()
      vim.cmd.colorscheme 'nord'
      -- vim.cmd.hi 'Folded ctermbg=none guibg=none'
      -- vim.cmd.hi 'LineNr ctermfg=235'
      vim.cmd.hi 'Visual ctermfg=black ctermbg=2'
    end,
  },

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
      -- vim.cmd.colorscheme 'rochacon'
      -- vim.cmd.hi 'Comment gui=none'
    end,
  },
}
