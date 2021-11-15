syntax on
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4 expandtab smarttab
set smartindent
set autoread
set smartcase
set relativenumber
set number
set incsearch
autocmd FocusGained * silent! checktime


call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'Shougo/deoplete.nvim'
Plug 'honza/vim-snippets'
Plug 'preservim/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'lervag/vimtex'
Plug 'sheerun/vim-polyglot'
Plug 'mbbill/undotree'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
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


call deoplete#custom#var('omni', 'input_patterns', {
      \ 'tex': g:vimtex#re#deoplete
      \})
let g:deoplete#enable_at_startup = 1
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
let g:mkdp_auto_start = 0
