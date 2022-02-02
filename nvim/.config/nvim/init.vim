syntax on
syntax enable


set noerrorbells
set autoindent
set tabstop=2 softtabstop=2
set shiftwidth=2 expandtab smarttab
set autoread
set smartcase
set number
set incsearch
autocmd FocusGained * silent! checktime

let g:polyglot_disabled = ['autoindent']
let g:vim_markdown_new_list_item_indent = 2

call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'honza/vim-snippets'
Plug 'preservim/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'lervag/vimtex'
Plug 'sheerun/vim-polyglot'
Plug 'mbbill/undotree'
Plug 'plasticboy/vim-markdown'
Plug 'nvim-lua/plenary.nvim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
call plug#end()


function! AutoCommit()
  call system('git rev-parse --git-dir > /dev/null 2>&1')
  if v:shell_error
    return
  endif
  let message = 'Updated ' . expand('%:.')
  call system('git add ' . expand('%:p'))
  call system('git commit -m ' . shellescape(message, 1))
endfun

autocmd BufWritePost /home/lorenz/doc/notes/*.md call AutoCommit()
autocmd BufWritePost /home/lorenz/doc/fhooe/6sem/bachelorarbeit/HgbThesisDE/*.tex call system('lualatex main.tex')
autocmd BufWritePost /home/lorenz/doc/Bewerbung/cv/Lorenz_Kofler_CV.tex call system('pdflatex Lorenz_Kofler_CV.tex')

map <C-n> :NERDTreeToggle<CR>
map <C-b> :NERDTree<CR>


inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
let g:mkdp_auto_start = 0

let g:vim_markdown_folding_disabled = 1

filetype plugin indent on
filetype indent on
let g:vimtex_view_method = 'zathura'
let g:vimtex_compiler_method = 'latexrun'

