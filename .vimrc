
set nocompatible              " be iMproved, required

so ~/.vim/plugins.vim

"-----------------------------------------VUNDLE-SETUP-------------------------------------------------------



syntax enable						"enable syntax

set backspace=indent,eol,start				"active backspace to work like other ide

set number						"active line number



"--------------visual-setting----------------"

colorscheme miramare					"enable color that is in .vim/colors

set guifont=Fira_Code:h50

set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

set linespace=15

set t_CO=256

set guioptions-=e					"remove gui tabs

set tabstop=4						"change tab length"

"--------------search-setting----------------"
set hlsearch
set incsearch





"--------------mapping-setting----------------"
nmap ,ef :tabedit $MYVIMRC<cr>						"set ,ef to open .vimrc file

nmap ,f :nohlsearch<cr>							"set ,f to disable highlight while searching

nmap nn :NERDTreeToggle<cr>

imap jj <esc>						"esc when press jj 
imap qq :q!<cr>						"double q for quit anyway.
map qq :q!<cr>

nmap tt :terminal<cr>



"-----------auto-complete---------- "
inoremap {<CR> {<CR>}<Esc>ko<tab> 
inoremap (<CR> (<CR>)<Esc>ko<tab> 
inoremap [<CR> [<CR>]<Esc>ko<tab> 
inoremap ( ()<esc>ha
inoremap { {}<esc>ha
inoremap [ []<esc>ha
inoremap " ""<esc>ha
inoremap ' ''<esc>ha
inoremap << <=
inoremap >> >=


"--------------Auto-command-setting----------------"
augroup autosourcing

	autocmd!

	autocmd BufWritePost .vimrc source %				"auto sourcing .vimrc file while saving


augroup END




"--------------split-managment-setting----------------"
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>




"--------------plugins-setting----------------"
"/Greplace.vim
set grepprg=ag

let g:grep_cmd_opts = '--line-numbers --noheading'

nmap ,gs :Gsearch							"use command to Gsearch that make search and replace easy
