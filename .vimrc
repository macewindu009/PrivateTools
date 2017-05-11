" Vundle setup

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" vim-sensible plugin
Plugin 'tpope/vim-sensible'

" NERD tree plugin
" Plugin 'scrooloose/nerdtree'

" vim-airline plugin
Plugin 'bling/vim-airline'

" Trailing whitespaces plugin
Plugin 'bronson/vim-trailing-whitespace'

" Ack Vim plugin
"Plugin 'mileszs/ack.vim'

" Indent guides plugin
"Plugin 'nathanaelkane/vim-indent-guides'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
"runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
"if filereadable("/etc/vim/vimrc.local")
"  source /etc/vim/vimrc.local
"endif

" autohighlight leading/trailing whitespaces
"highlight WhiteSpaceEOL ctermbg=darkgreen guibg=lightgreen
"match WhiteSpaceEOL /\s\+$/
"autocmd WinEnter * match WhiteSpaceEOL /\s\+$/

" set autoindent
"filetype plugin indent on
set tabstop=4
set shiftwidth=4
"set expandtab

" config search
set hlsearch
highlight Search ctermbg=lightblue guibg=lightblue


" Press Space to turn off highlighting and clear any message already
" displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" config line numbers
set number
highlight LineNr ctermfg=darkgrey guifg=darkgrey

" highlight DiffChange ctermfg=lightgreen guibg=lightgreen ctermbg=lightgreen
highlight DiffText ctermfg=none ctermbg=lightgreen
" remap shortcuts to change between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" set list for whitespace and tabs, toggle with 'set list' and 'set list!'
" NOTE: This needs VIM version 8
set listchars=tab:>>,eol:<

" F2: Toggle line-wrapping
nnoremap <F2> :set wrap!<CR>

" F3: Toggle list (display unprintable characters).
nnoremap <F3> :set list!<CR>

" F4: Toggle spell checking (en_us)
set spell spelllang=en_us
set spell! " Turn it off on default
nnoremap <F4> :set spell!<CR>

" F5,F6: Toggle ColorColumn option
highlight ColorColumn ctermbg=darkgrey guibg=darkgrey
nnoremap <F6> :set cc=0<CR>
nnoremap <F5> :set cc=80<CR>

nnoremap <F7> :set number!<CR>
