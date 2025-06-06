vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

    -- telescope
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}

    -- theme
	use({
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
			vim.cmd('colorscheme rose-pine')
		end
	})

    -- start treesitter stuff
	use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
	use('nvim-treesitter/playground')
    -- end treesitter stuff
    -- for prettier
    use("nvimtools/none-ls.nvim")
    -- thanks of theprimeagen for made this
	use('theprimeagen/harpoon')
    -- undo tree 
	use('mbbill/undotree')
    -- git stuff
	use('tpope/vim-fugitive')
    -- navigation with nvim tree
	use {
 	 'nvim-tree/nvim-tree.lua',
	  requires = {
	    'nvim-tree/nvim-web-devicons', -- optional
	  },
	}

    -- start lsp stuff
    use {
      'neovim/nvim-lspconfig',          -- LSP configs
      'hrsh7th/nvim-cmp',               -- Autocompletion
      'hrsh7th/cmp-nvim-lsp',           -- LSP source for nvim-cmp
      'L3MON4D3/LuaSnip',               -- Snippet engine
      'saadparwaiz1/cmp_luasnip',       -- Snippet source for nvim-cmp
      'rafamadriz/friendly-snippets',   -- Snippet collection
    }
    -- end lsp stuff

    -- term control
    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
      require("toggleterm").setup()
    end}

    -- auto close tags
    use("windwp/nvim-ts-autotag")
    -- auto close [] {} ()
    use {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup {}
        end 
    }
    -- hex color preview
    use("NvChad/nvim-colorizer.lua")

    -- status bar
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- comments
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

end)
