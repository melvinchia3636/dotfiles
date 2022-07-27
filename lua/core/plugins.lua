vim.cmd [[packadd packer.nvim]]

vim.api.nvim_create_autocmd('BufWritePost', {
    group = vim.api.nvim_create_augroup('PACKER', { clear = true }),
    pattern = 'plugins.lua',
    command = 'source <afile> | PackerCompile',
})

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require("packer").startup(
    function(use)
        use "wbthomason/packer.nvim"
        use "ryanoasis/vim-devicons"
        use "SirVer/ultisnips"
        use "honza/vim-snippets"
        use "scrooloose/nerdtree"
        use {"neoclide/coc.nvim", branch = "release"}
        use {'nvim-lualine/lualine.nvim',
            requires = { 'kyazdani42/nvim-web-devicons', opt = true },
            config = function()
                require('lualine').setup()
            end,
        }
        use {"akinsho/bufferline.nvim", config = function()
            require("bufferline").setup()
        end,
        }
        use "pangloss/vim-javascript"
        use "leafgarland/typescript-vim"
        use "maxmellon/vim-jsx-pretty"
        use "peitalin/vim-jsx-typescript"
        use "vim-syntastic/syntastic"
        use "severin-lemaignan/vim-minimap"
        use "tpope/vim-eunuch"
        use "ap/vim-css-color"
        use "hail2u/vim-css3-syntax"
        use "alvan/vim-closetag"
        use "mg979/vim-visual-multi"
        use {"evanleck/vim-svelte", branch = "main"}
        use {
            "yaegassy/coc-tailwindcss",
            run = "npm install && npm run build",
            branch = "feat/support-v3-and-use-server-pkg"
        }
        use "neovim/nvim-lspconfig"
        use "github/copilot.vim"
        use {"jose-elias-alvarez/null-ls.nvim", config = function ()
            require("plugins.null-ls")
        end,
        }
        use {"MunifTanjim/prettier.nvim", config = function()
            require("plugins.prettier")
        end,
        }
        use "nvim-lua/plenary.nvim"
        use {"nvim-telescope/telescope.nvim", tag = "0.1.0", config = function()
            require("plugins.telescope")
        end,
        }
        use "vifm/vifm.vim"
        use {"kyazdani42/nvim-web-devicons", config = function()
            require("plugins.web-devicons")
        end,
        }
        use {"nvim-treesitter/nvim-treesitter", config = function()
            require("plugins.treesitter")
        end,
        }
        use "andweeb/presence.nvim"
        use "tiagofumo/vim-nerdtree-syntax-highlight"
        use "tpope/vim-commentary"
        use "preservim/tagbar"
        use "tpope/vim-dadbod"
        use "kristijanhusak/vim-dadbod-ui"
        use "KabbAmine/vCoolor.vim"
        use "AndrewRadev/tagalong.vim"
        use {"ziontee113/color-picker.nvim", config = function()
            require("color-picker").setup()
        end,
        }
        use {
            "AckslD/nvim-neoclip.lua",
            requires = {
                {'kkharji/sqlite.lua', module = 'sqlite'},
            -- you'll need at least one of these
            -- {'nvim-telescope/telescope.nvim'},
            -- {'ibhagwan/fzf-lua'},
            },
            config = function()
                require('neoclip').setup()
            end,
        }
        use {
            'weilbith/nvim-code-action-menu',
            after = 'coc.nvim',
            requires = 'xiyaowong/coc-code-action-menu.nvim',
            config = function()
                require 'coc-code-action-menu'
            end,
        }
        use "tpope/vim-surround"
        use { 'mhartington/oceanic-next', config = function()
          vim.cmd [[colorscheme OceanicNext]]
          vim.cmd [[hi Normal guibg=NONE ctermbg=NONE]]
          vim.cmd [[hi LineNr guibg=NONE ctermbg=NONE]]
          vim.cmd [[hi SignColumn guibg=NONE ctermbg=NONE]]
          vim.cmd [[hi EndOfBuffer guibg=NONE ctermbg=NONE]]
        end,
        }
    end
)
