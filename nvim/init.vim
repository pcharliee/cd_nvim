source $HOME/.config/nvim/vim-plug/plugins.vim
colorscheme nord

" remap <leader>
let mapleader = " "
"Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Commenting blocks of code.
augroup commenting_blocks_of_code
  autocmd!
  autocmd FileType c,cpp,java,scala,javascript,jsx let b:comment_leader = '// '
  autocmd FileType javascript.jsx      setlocal commentstring ={/*\ %s\ */}i
  autocmd FileType sh,ruby,python      let b:comment_leader = '# '
  autocmd FileType conf,fstab          let b:comment_leader = '# '
  autocmd FileType tex                 let b:comment_leader = '% '
  autocmd FileType mail                let b:comment_leader = '> '
  autocmd FileType vim                 let b:comment_leader = '" '
augroup END
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on
syntax on

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Highlight cursor line underneath the cursor vertically.
" set cursorcolumn

" Set shift width to 4 spaces.
set shiftwidth=2
 
" Set tab width to 4 columns.
set tabstop=2
 
" Use space characters instead of tabs.
set expandtab
 
" Do not save backup files.
set nobackup
 
" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Fede's config.
set autoindent
set number
set list
set colorcolumn=80
set listchars=eol:$,tab:&&
set nowrap
