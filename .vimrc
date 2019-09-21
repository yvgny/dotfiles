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
set clipboard=unnamedplus	" allow copying to the system clipboard
:set number relativenumber

:augroup numbertoggle 		" set absolute line numbers in insert mode, otherwise relative
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0			" End of Systastic config
let g:autoformat_autoindent = 0			" Disable fallback on VIM indents for autoformat
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0	" end of fallback prevention
map <silent> <C-n> :NERDTreeFocus<CR>		" Map NERTreeFOcus on CTRL-n

