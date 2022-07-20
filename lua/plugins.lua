local fn = vim.fn
local execute = vim.api.nvim_command

-- Auto install packer.nvim if not exists
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

vim.cmd [[packadd packer.nvim]]
vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua


return require('packer').startup(function(use)

    use {'neovim/nvim-lspconfig'}
    use {'hrsh7th/nvim-cmp'}
    use {'hrsh7th/cmp-nvim-lsp'}
    use {'saadparwaiz1/cmp_luasnip'}
    use {'L3MON4D3/LuaSnip'}

    -- Для дебагов, точки остановки
    use {'mfussenegger/nvim-dap'}
    use {'mfussenegger/nvim-dap-python'}
    use {'rcarriga/nvim-dap-ui'}
    -- Для работы с git
    -- https://github.com/lewis6991/gitsigns.nvim
    use {'nvim-lua/plenary.nvim'}
    use {'lewis6991/gitsigns.nvim'}
    -- https://github.com/lukas-reineke/indent-blankline.nvim
    use {'lukas-reineke/indent-blankline.nvim'}
    -- git-blame
    -- https://github.com/zivyangll/git-blame.vim
    use {'zivyangll/git-blame.vim'}

    --use {'preservim/nerdtree'}
    use {'francoiscabrol/ranger.vim'}
    use {'rbgrouleff/bclose.vim'}
    use {'tpope/vim-surround'}
    use {'easymotion/vim-easymotion'}

    -- color schemas
    use {'morhetz/gruvbox'}  -- colorscheme gruvbox
    use {'mhartington/oceanic-next'}  -- colorscheme OceanicNext
    use {'kaicataldo/material.vim', branch = 'main' }
    use {'ayu-theme/ayu-vim'}

    -- For JS/JSX
    use {'yuezk/vim-js'}
    use {'maxmellon/vim-jsx-pretty'}

    -- python pep8 indent
    use {'Vimjas/vim-python-pep8-indent'}


  if packer_bootstrap then
    require('packer').sync()
  end
end)
