call plug#begin('~/.vim/plugged')


Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug '907th/vim-auto-save'
Plug 'gcmt/taboo.vim'
Plug 'tpope/vim-fugitive'
Plug 'hughbien/md-vim'


call plug#end()

let mapleader=","


function! s:ChangeFont(delta)
let l:expr = '\=submatch(1)+' . a:delta
let l:font = substitute(&guifont, '\v(\d+)', l:expr, '')
let &guifont = l:font
endfunction

nnoremap <silent> <C-ScrollWheelUp> :call <SID>ChangeFont(+1)<cr>
nnoremap <silent> <C-ScrollWheelDown> :call <SID>ChangeFont(-1)<cr>


nnoremap <F5> :! clear; python %<CR>
nnoremap <F3> :NERDTreeToggle<CR>
colo gruvbox
set smartcase
set incsearch
set autowrite
set nu
set smartindent
set tabstop=4
set nowrap
set hidden
" colo onedark
set background=dark
set encoding=UTF-8

nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <silent> <S-t> :tabnew<CR>
noremap <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
		  let col = col('.') - 1
		    return !col || getline('.')[col - 1]  =~# '\s'
	endfunction

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
