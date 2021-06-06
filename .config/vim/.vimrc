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

nnoremap <F5> :! clear; python %<CR>
nnoremap <F3> :NERDTreeToggle<CR>

" let g:gruvbox_(option) = '(value)'
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


" verbose imap <tab>
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <silent> <S-t> :tabnew<CR>
noremap <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" " Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" " Resume latest coc list.
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
