call plug#begin()
Plug 'sheerun/vim-polyglot'
Plug 'rohit-px2/nvui'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'mfussenegger/nvim-dap'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'tomasiser/vim-code-dark'
Plug 'vim-airline/vim-airline'
Plug 'ap/vim-css-color'
Plug 'vim-syntastic/syntastic'
Plug 'puremourning/vimspector'
Plug 'StanAngeloff/php.vim'
Plug 'ARM9/arm-syntax-vim'
call plug#end()

let g:vimspector_enable_mappings = 'HUMAN'
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
colorscheme codedark
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
:highlight Comment ctermfg=175
function! ToggleErrors()
    if empty(filter(tabpagebuflist(), 'getbufvar(v:val, "&buftype") is# "quickfix"'))
         " No location/quickfix list shown, open syntastic error location panel
         Errors
    else
        lclose
    endif
endfunction

nnoremap <silent> <C-e> :<C-u>call ToggleErrors()<CR>
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_quiet_messages = {"regex" : ['[pico/std]']}
nnoremap <C-t> :NERDTreeToggle<CR>
set mouse=a
set number
set hidden
set cursorline
set expandtab
set autoindent
set smartindent
set shiftwidth=4
set tabstop=4
set encoding=utf8
set history=5000
set clipboard=unnamedplus
