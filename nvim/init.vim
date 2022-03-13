call plug#begin()
Plug 'overcache/NeoSolarized'

Plug 'preservim/nerdtree'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'pangloss/vim-javascript'    
Plug 'leafgarland/typescript-vim' 
Plug 'maxmellon/vim-jsx-pretty'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
call plug#end()

set encoding=UTF-8

if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

set clipboard=unnamed,unnamedplus
set tabstop=2 shiftwidth=2 expandtab smarttab
filetype plugin indent on
set number relativenumber
set ignorecase
set ai
set si
set nowrap
set path+=**
set wildignore+=*/node_modules/*

set t_Co=256
let g:solarized_termcolors=256
set termguicolors
syntax enable
set background=dark
colorscheme NeoSolarized 
let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let NERDTreeShowHidden=1
let g:airline_theme='base16_solarized_dark'
let g:airline_powerline_fonts = 1

cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev WQ wq

if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

nmap <leader>ac  <Plug>(coc-codeaction)
nmap <leader>qf  <Plug>(coc-fix-current)
nmap <leader>cl  <Plug>(coc-codelens-action)
nmap <leader>rn <Plug>(coc-rename)

nnoremap <S-s> :source ~/.config/nvim/init.vim<CR>
nnoremap <S-p> :Telescope find_files<CR>
nnoremap <S-Tab> :NERDTreeToggle<CR>
nnoremap <C-s> :w<CR>

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

let g:coc_global_extensions = ['coc-json', 'coc-git', 'coc-pairs', 'coc-prettier', 'coc-css', 'coc-eslint', 'coc-tsserver']
