" General
set nocompatible
set ttyfast
set noswapfile
set nobackup
set writebackup
set undofile
set undodir=$HOME/.vim/undo
set autochdir
set lazyredraw
filetype off

if &shell =~ "fish"
    set shell=/bin/bash
endif

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" Plugin 'ervandew/supertab'
"     let g:SuperTabDefaultCompletionType = "<c-n>"
Bundle 'bling/vim-airline'
    let g:airline_powerline_fonts=1
Bundle 'chriskempson/base16-vim'
Bundle 'Valloric/YouCompleteMe'
    let g:ycm_global_ycm_extra_conf = "~/.ycm_extra_conf.py"
    let g:ycm_goto_buffer_command = 'same-buffer'
    let g:ycm_confirm_extra_conf = 0
    let g:ycm_collect_identifiers_from_tags_files = 1
    let g:ycm_autoclose_preview_window_after_completion = 1
    let g:ycm_autoclose_preview_window_after_insertion = 1
    let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
    let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
    let g:ycm_filetype_blacklist = {'text': 1}
Bundle 'Syntastic'
    let g:syntastic_cpp_compiler_options = ' -std=c++11'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-commentary'
" Bundle 'nathanaelkane/vim-indent-guides'
"     let g:indent_guides_enable_on_vim_startup = 1
"     let g:indent_guides_start_level = 1
"     let g:indent_guides_guide_size = 2
"     let g:indent_guides_color_change_percent = 5
Bundle 'Yggdroot/indentLine'
Bundle 'haya14busa/incsearch.vim'
Bundle 'tomasr/molokai'
Plugin 'fatih/vim-go'
Plugin 'elixir-lang/vim-elixir'
autocmd FileType c,objc,cpp set commentstring=//\ %s

call vundle#end()
filetype plugin indent on


" UI
set list lcs=tab:\¦\ 
set nu
filetype on
syntax on
set showcmd
set laststatus=2
set showmatch
set nofoldenable

" Editor
set conceallevel=0
set autochdir
set autoread
set hidden
set guioptions=aegimt 
set guifont=Pragmata\ Pro\ 14
set scrolloff=3
set linebreak
" set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
" set list " show hidden characters
" 80/120 char highlighting
highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn="80"

set cursorline
set showmatch

" Format
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent

" Theme
set t_Co=256
set background=dark
" colorscheme base16-monokai
colorscheme molokai

" Searching
set ignorecase
set smartcase
set hlsearch
set incsearch

" Key Maps
let mapleader = ","
let g:mapleader = ","
nnoremap k gk
nnoremap j gj
vnoremap < <gv
vnoremap > >gv
nnoremap <C-t> :tabnew<CR>
nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>
nnoremap tj :tabnext<CR>
nnoremap tk :tabprev<CR>
nnoremap tq :tabclose<CR>
nnoremap <Leader>ev :e ~/.vimrc<CR>
nnoremap <Leader>m :w<CR>:make<CR>
nnoremap <Leader>l :!pdflatex % && open *.pdf<CR>
  nmap <silent> <c-k> :wincmd k<CR>
  nmap <silent> <c-j> :wincmd j<CR>
  nmap <silent> <c-h> :wincmd h<CR>
  nmap <silent> <c-l> :wincmd l<CR>
" Copye/Paste
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
vmap <C-v> <C-r><C-o>+

" Spell Check toggle
nnoremap <Leader>ss :setlocal spell!<CR>
