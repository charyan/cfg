:set relativenumber
:set number
:syntax on
:set ruler
:set showcmd
:set autoindent
:set tabstop=4

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
:  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
:augroup END

:map <F2> <Esc>:! make <Enter>
:map <F3> <Esc>:! make debug <Enter>
:map <F5> <Esc>:vert term<Enter><C-w><Right><C-w>r<C-w><Right>

inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
