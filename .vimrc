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
set wrap smoothscroll           " Prevent choppy behavior when big lines are wrapped
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
\   'python': ['autopep8', 'black'],
\}

let g:ale_cpp_clang_options = '-std=c++17 -Wall'
let g:ale_python_black_options = '--line--length 79'
let g:ale_python_flake8_executable = 'python3'
let g:ale_python_flake8_options = '-m flake8'

let g:ale_linters = {
\   'go': ['gopls'],
\   'c': ['gcc'],
\   'cpp': ['gcc'],
\   'python': ['flake8']
\}

let g:ale_c_clangtidy_executable = '/usr/local/opt/llvm/bin/clang-tidy'
let g:ale_fix_on_save = 0
" let g:ale_lint_on_text_changed = 'always'

" Key mappings
" Map NERTreeFOcus on CTRL-n
nnoremap <silent> <C-n> :Explore<CR>
" nnoremap <silent> <C-n> :Lexplore<CR>

" End search highlight with Return
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>

" Move between errors in ALE quickly
nmap <silent> <C-j> <Plug>(ale_previous_wrap)
nmap <silent> <C-k> <Plug>(ale_next_wrap)

" CTRL-r in visual mode prompts for a replacement text, then y or n to confirm
" each choice
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

" Ctrl-P config
let g:ctrlp_map = '<Leader>t'
let g:ctrlp_cmd = 'CtrlP'

"AutoPairs config
let g:AutoPairsMultilineClose = 0


:command Def ALEGoToDefinition
:command Vdef ALEGoToDefinitionInVSplit
:command Sdef ALEGoToDefinitionInSplit
:command Ref ALEFindReferences
:command Undotree UndotreeToggle
:command Fix ALEFix

let mapleader = " "
