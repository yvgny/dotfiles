let g:pathogen_disabled = ['syntastic']
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
set statusline+=%#warningmsg#			" Syntastic config
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
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

:augroup numbertoggle 		" set absolute line numbers in insert mode, otherwise relative
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

let &showbreak = '↳ '           " Show a sign when wrapping lines

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0			" End of Systastic config
let g:autoformat_autoindent = 0			" Disable fallback on VIM indents for autoformat
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0	" end of fallback prevention

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\}
let g:ale_fix_on_save = 1
" Key mappings
" Map NERTreeFOcus on CTRL-n
nnoremap <silent> <C-n> :NERDTreeFocus<CR>

" End search highlight with Return
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>

let mapleader = " "
