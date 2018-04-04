"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=$HOME/.config/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('$HOME/.config/dein')
  call dein#begin('$HOME/.config/dein')

  " Let dein manage dein
  " Required:
  call dein#add('$HOME/.config/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('scrooloose/nerdtree')
  call dein#add('ryanoasis/vim-devicons')
  call dein#add('icymind/NeoSolarized')
  call dein#add('itchyny/lightline.vim')
  call dein#add('itchyny/vim-gitbranch')
  call dein#add('tpope/vim-fugitive')
  call dein#add('jistr/vim-nerdtree-tabs')
  call dein#add('kannokanno/previm')
  call dein#add('tyru/open-browser.vim')
  call dein#add('rodjek/vim-puppet')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('fatih/vim-go')
  call dein#add('nsf/gocode')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/deol.nvim', { 'rev': 'a1b5108fd' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

" Enable true color
set termguicolors

" NERDTree
nnoremap <silent><C-e> :NERDTreeTabsToggle<CR>
let g:WebDevIconsUnicodeDecorateFolderNodes = 1

" colorscheme
set termguicolors
set background=dark
colorscheme NeoSolarized

" lightline
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

" enable mouse
set mouse=a

" Previm
augroup PrevimSettings
    autocmd!
    autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
augroup END

" terminal mode
tnoremap <ESC> <C-\><C-n>
