let mapleader=","
syntax on

" Autocommands

autocmd! bufwritepost .vimrc source %		" load the vimrc file on load
"autocmd BufReadPost * :bufdo tab split
if (&diff==0)
	augroup open_buffers_in_tabs
		autocmd!
		au VimEnter * nested silent! exe "argdo set eventignore-=Syntax e" | tab ball
    	autocmd VimEnter * :syntax on
	augroup END
endif

augroup CBuild
  autocmd!
  autocmd filetype c   nnoremap <buffer> <leader>cc :!gcc -o %:p:r %<cr>
  autocmd filetype c   nnoremap <buffer> <leader>cr :!gcc -o %:p:r %<cr>:!%:p:r<cr>
  autocmd filetype cpp nnoremap <buffer> <leader>cc :!g++ -o %:p:r %<cr>
  autocmd filetype cpp nnoremap <buffer> <leader>cr :!g++ -o %:p:r %<cr>:!%:p:r<cr>
augroup END

":autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
":autocmd FileType python     nnoremap <buffer> <localleader>c I#<esc>

nmap <silent> <leader>ev :split $MYVIMRC<CR>	" edit vimrc file
nmap <silent> <leader>sv :so $MYVIMRC<CR> :tabclose <CR>

colorscheme candy

set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start
                    " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                    "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                    "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

set nobackup
set noswapfile
