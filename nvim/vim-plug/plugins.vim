" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Color theme
    Plug 'arcticicestudio/nord-vim'

    " Collection of common configurations for the Nvim LSP client
    Plug 'neovim/nvim-lspconfig'
    
    " Extentions to built-in LSP, for example, providing type inlay hints
    Plug 'nvim-lua/lsp_extensions.nvim'
    
    " Autocompletion framework
    Plug 'hrsh7th/nvim-cmp'
    " cmp LSP completion
    Plug 'hrsh7th/cmp-nvim-lsp'
    " cmp Snippet completion
    Plug 'hrsh7th/cmp-vsnip'
    " cmp Path completion
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-buffer'

    " Telescop 
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    
    " Conquer of Completion
     Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
