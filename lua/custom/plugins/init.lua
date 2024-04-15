-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

---@module 'lazy'
---@type LazySpec

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 20

-- Highlight line number to show which line your cursor is on
vim.o.cursorlineopt = 'number'

-- default tabstop
vim.o.tabstop = 4

-- fix EOL
vim.o.fixendofline = true

-- trim whitespace
vim.api.nvim_create_autocmd('BufWritePre', {
  desc = 'trim whitespace',
  group = vim.api.nvim_create_augroup('TrimWhitespace', { clear = true }),
  command = [[%s/\s\+$//e]],
})

-- Disable fill chars
-- vim.o.fillchars = {
--   eob = ' ',
-- }

-- Disable listcharts
vim.o.list = false
-- vim.o.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Enable code folding
vim.o.foldmethod = 'indent'
vim.o.foldlevelstart = 9

-- PageUp and PageDown are centered
vim.keymap.set({ 'n', 'v', 'i' }, '<PageDown>', '<PageDown>zz')
vim.keymap.set({ 'n', 'v', 'i' }, '<PageUp>', '<PageUp>zz')

-- Save with CTRL+s and Space+w
vim.keymap.set({ 'i', 'n' }, '<C-s>', '<cmd>w<CR>')
vim.keymap.set({ 'n' }, '<leader>w', '<cmd>w<CR>')

-- Easy tabs
vim.keymap.set({ 'i', 'n' }, '<C-t>', '<cmd>:tabnew<CR>')
vim.keymap.set('n', 'tc', '<cmd>:tabclose<CR>')
vim.keymap.set('n', 'tn', '<cmd>:tabnext<CR>')
vim.keymap.set('n', 'tp', '<cmd>:tabprev<CR>')
vim.keymap.set('n', 'te', '<cmd>:tabedit<CR>')

-- New vertical split
vim.keymap.set('n', '<C-\\>', '<cmd>vnew<CR>', { desc = 'Split vertical' })

-- Close
vim.keymap.set('n', '<C-q>', '<cmd>q<CR>', { desc = 'Close buffer' })

-- Exit terminal mode
vim.keymap.set('t', '<C-q>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- use goimports to format files
vim.g.go_fmt_command = 'goimports'
vim.api.nvim_create_autocmd('BufWritePre', {
  desc = 'go-format-and-import',
  pattern = { '*.go' },
  group = vim.api.nvim_create_augroup('RunGoImports', { clear = true }),
  callback = function()
    vim.lsp.buf.code_action {
      apply = true,
      context = {
        only = { 'source.organizeImports' },
      },
    }
  end,
})

return {
  -- TODO rochacon: review
  -- -- Allows extra capabilities provided by blink.cmp
  -- {'saghen/blink.cmp'},
  -- {
  --   -- `lazydev` configures Lua LSP for your Neovim config, runtime and plugins
  --   -- used for completion, annotations and signatures of Neovim apis
  --   'folke/lazydev.nvim',
  --   ft = 'lua',
  --   opts = {
  --     library = {
  --       -- Load luvit types when the `vim.uv` word is found
  --       { path = '${3rd}/luv/library', words = { 'vim%.uv' } },
  --     },
  --   },
  -- },

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
    config = function() vim.keymap.set('n', '<C-e>', ':NERDTreeToggle<CR>') end,
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
      vim.keymap.set('n', '<leader>ha', function() require('harpoon.mark').add_file() end, { desc = '[h]arpoon [a]dd file' })

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

-- TODO rochacon: review
-- require('mason-lspconfig').setup {
--   ensure_installed = {}, -- explicitly set to an empty table (Kickstart populates installs via mason-tool-installer)
--   automatic_installation = false,
--   handlers = {
--     function(server_name)
--       local server = servers[server_name] or {}
--       -- This handles overriding only values explicitly passed
--       -- by the server configuration above. Useful when disabling
--       -- certain features of an LSP (for example, turning off formatting for ts_ls)
--       server.capabilities = vim.tbl_deep_extend('force', {}, capabilities, server.capabilities or {})
--       require('lspconfig')[server_name].setup(server)
--
--       local nvim_lsp = require 'lspconfig'
--       nvim_lsp.denols.setup {
--         root_dir = nvim_lsp.util.root_pattern('deno.json', 'deno.jsonc'),
--       }
--       nvim_lsp.ts_ls.setup {
--         root_dir = nvim_lsp.util.root_pattern 'package.json',
--         single_file_support = false,
--       }
--     end,
--   },
-- }
