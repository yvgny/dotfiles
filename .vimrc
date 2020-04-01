execute pathogen#infect()

set backspace=2         	" backspace in insert mode works like normal editor
syntax enable               	" syntax highlighting
filetype plugin indent on      	" activates indenting for files
set autoindent          	" auto indenting
set number              	" line numbers
colorscheme darcula      	" colorscheme desert
let g:airline_theme='angr'	" change airline theme
set nobackup 			" get rid of anoying ~file
set noshowmode			" let airline do the work
if system('uname -s') == "Darwin\n"	" allow copying to the system clipboard
  set clipboard=unnamed "OSX
else
  set clipboard=unnamedplus "Linux
endif
set mouse=a			" mouse now scroll intuitively
set hlsearch			" Highlight search terms
set incsearch                   " Search will incrementally focus next occurence
set splitright                  " Split are openend to the right of current split
set splitbelow                  " Split are openend below the current split
set breakindent                 " Keep same identation when wrapping line
set wrap                        " Do wrap line
set lbr                         " Do not break words when wrapping a line
set ignorecase smartcase        " Search is case sensitive only when at least one upper case letter is typed
set timeoutlen=1000 ttimeoutlen=0 " Remove delay when exiting insert mode
set omnifunc=ale#completion#OmniFunc " Set smart autocomplete to ALE's

:augroup numbertoggle 		" set absolute line numbers in insert mode, otherwise relative
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

let &showbreak = '↳ '           " Show a sign when wrapping lines

let g:autoformat_autoindent = 0			" Disable fallback on VIM indents for autoformat
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0	" end of fallback prevention

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'go': ['gofmt', 'goimports'],
\   'c': ['clang-format'],
\   'cpp': ['clang-format'],
\}

let g:ale_linters = {
\   'go': ['gopls']
\}

let g:ale_fix_on_save = 1
" let g:ale_lint_on_text_changed = 'always'

" Key mappings
" Map NERTreeFOcus on CTRL-n
nnoremap <silent> <C-n> :NERDTreeFocus<CR>
" nnoremap <silent> <C-n> :Lexplore<CR>

" End search highlight with Return
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>

" Move between errors in ALE quickly
nmap <silent> <C-j> <Plug>(ale_previous_wrap)
nmap <silent> <C-k> <Plug>(ale_next_wrap)

let mapleader = " "
