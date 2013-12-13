set nocompatible "This fixes the problem where arrow keys do not function properly on some systems
syntax on "Enables syntax highlighting for programming languages
set mouse=a "Allows you to click around the text editor with your mouse to move the cursor
set showmatch "Highlights matching brackets in programming languages
set autoindent "If your're indented, new lines will also be indented
set smartindent "Automatically indents lines after opening a bracket in programming languages
set backspace=2 "This makes the backspace key function like it does in other programs
set tabstop=4 "How much space Vim gives to a tab
set number "Enables line numbering
set smarttab "Improves tabbing
set shiftwidth=4 "Assists code formatting
set expandtab
set hlsearch
set cc=80
hi ColorColumn ctermbg=lightblue guibg=lightblue

"colorscheme darkblue "Changes the color scheme
"setlocal spell "Enables spell checking
"set spellfile=~/.vimwords.add "The location of the spellcheck dictionary
"--The following commands make the navigation keys work like standard editors
"imap <silent> <Down> <C-o>gj
"imap <silent> <Up> <C-o>gk
"nmap <silent> <Down>gj
"nmap <silent> <Up>gk 
"--Ends navigation commands 
"--The following adds a sweet menu, press F4 to use it 
"source $VIMRUNTIME/menu.vim 
"set wildmenu 
"set cpo-=< 
"set wcm=<C-Z> 
"map <F4> :emun <C-Z> 
"--End sweet menu
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"

" original repos on github
"
Bundle 'Lokaltog/vim-easymotion'
Bundle 'scrooloose/nerdtree.git'
Bundle 'scrooloose/syntastic.git'
Bundle 'tpope/vim-pathogen.git'
Bundle 'tpope/vim-surround.git'
Bundle 'vim-scripts/comments.vim'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-fugitive'
Bundle 'digitaltoad/vim-jade.git'

" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
"Bundle 'comments'

" non github repos
"Bundle 'git://git.wincent.com/command-t.git'

" git repos on your local machine (ie. when working on your own plugin)
"Bundle 'file:///Users/gmarik/path/to/plugin'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
