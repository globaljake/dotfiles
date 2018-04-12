"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible " not compatible with vi
set autoread " detect when a file is changed

"set relativenumber             " Show relative line numbers
"set number                     " Show current line number

" Open the .vimrc.after in a split for quick editing
nnoremap <leader>ve <C-w><C-v><C-l>:e $MYVIMRC<CR>
nnoremap <leader>vs :so $MYVIMRC<CR>


" make backspace behave in a sane manner
set backspace=indent,eol,start

set history=100  " change history to 1000
set textwidth=120

set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" Tab control
set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=4 " the visible width of tabs
set softtabstop=4 " edit as if the tabs are 2 characters wide
set shiftwidth=4 " number of spaces to use for indent and unindent
set shiftround " round indent to a multiple of 'shiftwidth'
set expandtab " say no to tabs
set completeopt+=longest

" move line
nnoremap <S-UP> :m-2<CR>
nnoremap <S-DOWN> :m+1<CR>
vnoremap <S-LEFT> <gv
vnoremap <S-RIGHT> >gv
vnoremap <S-UP> :m '<-2<CR>gv=gv
vnoremap <S-DOWN> :m '>+1<CR>gv=gv

" switch tabs
" nnoremap <C-}> :tabprevious<CR>
" nnoremap <C-{> :tabnext<CR>

" dont hightlight on esc
nnoremap <ESC> :noh<CR>

if has('mouse')
  set mouse=a
endif

" allow copy to clipboard to equal yank
set clipboard=unnamed

" faster redrawing
set ttyfast

" highlight conflicts
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" code folding settings
set foldmethod=syntax " fold based on indent
set foldnestmax=10 " deepest fold is 10 levels
set nofoldenable " don't fold by default
set foldlevel=1

" set no indet for paste mode mapped to F10
" set pastetoggle=<F10>

" Removes trailing whitespace on write (:w)
autocmd BufWritePre * :%s/\s\+$//e

" for file icons
set encoding=utf8
set guifont=<FONT_NAME>:h<FONT_SIZE>
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types:h11

" Triggers prettier
" autocmd BufWritePre,TextChanged,InsertLeave *.js Neoformat
autocmd BufWritePre *.js :normal gggqG
autocmd FileType javascript setlocal formatprg=prettier\ --stdin\ --single-quote\ --trailing-comma\ all
" Use formatprg when available
let g:neoformat_try_formatprg = 1
" get pretty
nnoremap gp :silent %!prettier --stdin --trailing-comma all --single-quote<CR>

" puts the caller
nnoremap <leader>wtf oputs "#" * 90<c-m>puts caller<c-m>puts "#" * 90<esc>

" leader mappings

" set a map leader for more key combos
let mapleader = ','

" remap esc
inoremap jk <esc>

" wipout buffer
nmap <silent> <leader>b :bw<cr>

" shortcut to save
nmap <leader>, :w<cr>

" set paste toggle
set pastetoggle=<leader>v

" toggle paste mode
" map <leader>v :set paste!<cr>

" edit ~/.config/nvim/init.vim
map <leader>ev :e! ~/.config/nvim/init.vim<cr>
" edit gitconfig
map <leader>eg :e! ~/.gitconfig<cr>

" clear highlighted search
noremap <space> :set hlsearch! hlsearch?<cr>

" activate spell-checking alternatives
nmap ;s :set invspell spelllang=en<cr>

" toggle cursor line
nnoremap <leader>i :set cursorline!<cr>

" scroll the viewport faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" moving up and down work as you would expect
nnoremap <silent> j gj
nnoremap <silent> k gk
nnoremap <silent> ^ g^
nnoremap <silent> $ g$

" search for word under the cursor
nnoremap <leader>/ "fyiw :/<c-r>f<cr>

" Toggle NERDTree
nmap <silent> <leader>k :NERDTreeToggle<cr>
" expand to the path of the file in the current buffer
nmap <silent> <leader>y :NERDTreeFind<cr>

let NERDTreeShowHidden=1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
" let NERDTreeDirArrowExpandable = '🙈'
" let NERDTreeDirArrowCollapsible = '🐵'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => User Interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set so=7 " set 7 lines to the cursors - when moving vertical
set wildmenu " enhanced command line completion
set hidden " current buffer can be put into background
set showcmd " show incomplete commands
set noshowmode " don't show which mode disabled for PowerLine
set wildmode=list:longest " complete files like a shell
set scrolloff=3 " lines of text around cursor
set shell=$SHELL
set cmdheight=1 " command bar height

set title " set terminal title

" Searching
set ignorecase " case insensitive searching
set smartcase " case-sensitive if expression contains a capital letter
set hlsearch
set incsearch " set incremental search, like modern browsers
set nolazyredraw " don't redraw while executing macros

set magic " Set magic on, for regex

set showmatch " show matching braces
set mat=2 " how many tenths of a second to blink

" switch syntax highlighting on
syntax on

set background=dark

" set number " show line numbers
" set relativenumber " show relative line numbers
set number " show the current line number"

set nowrap "turn on line wrapping
set wrapmargin=8 " wrap lines when coming within n characters from side
set linebreak " set soft wrapping
set showbreak=… " show ellipsis at breaking

set autoindent " automatically set indent of new line
set smartindent

" show my invisible chars
set list
" set listchars=tab:⊨⇒,eol:¬

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups, and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" set nobackup
" set nowritebackup
" set noswapfile
" set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
" set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => StatusLine
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set laststatus=2 " show the satus line all the time
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
