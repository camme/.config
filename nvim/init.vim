if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize

call plug#begin('~/.vim/plugged')

"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()

Plug 'gmarik/Vundle.vim'
"Plug 'kien/ctrlp.vim'
"Plug 'mattn/emmet-vim'
Plug 'wavded/vim-stylus'
"Plug 'othree/yajs.vim'
Plug 'pangloss/vim-javascript'
"Plug 'Valloric/YouCompleteMe'
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
"Plug 'marijnh/tern_for_vim'
Plug 'ternjs/tern_for_vim'
Plug 'w0rp/ale'
"Plug 'scrooloose/syntastic'
Plug 'ervandew/supertab'
Plug 'xolox/vim-misc'
"Plug 'xolox/vim-easytags'
"Plug 'rking/ag.vim'
"Plug 'wesQ3/vim-windowswap'
Plug 'Lokaltog/vim-easymotion'
Plug 'kshenoy/vim-signature'
"Plug 'vim-scripts/TaskList.vim'
"Plug 'digitaltoad/vim-jade'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Shutnik/jshint2.vim'
"Plug 'mxw/vim-jsx'
Plug 'chemzqm/vim-jsx-improve'
"Plug 'bling/vim-airline'
"Plug 'powerline/powerline'
Plug 'paradigm/vim-multicursor'
Plug 'mxw/vim-xhp'
"Plug 'sjl/gundo.vim'
"Plug 'ap/vim-css-color'
Plug 'vim-scripts/loremipsum'
"Plug 'XadillaX/json-formatter.vim'
Plug 'terryma/vim-expand-region'
Plug 'vim-airline/vim-airline'
Plug 'terryma/vim-multiple-cursors'
"Plug 'marchelzo/ircnvim'
"Plug 'vim-scripts/VimIRC.vim'
Plug 'flowtype/vim-flow'
"Plug 'steelsojka/deoplete-flow'
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'elzr/vim-json'
Plug 'tpope/vim-jdaddy'
"Plug 'junegunn/vim-slash'
"Plug 'jaxbot/semantic-highlight.vim'
"Plug 'blueyed/vim-diminactive'
Plug 'altercation/vim-colors-solarized'
"Plug 'suan/vim-instant-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'bluz71/vim-moonfly-colors'
Plug 'editorconfig/editorconfig-vim'
"Plug 'alpertuna/vim-header'
Plug 'RRethy/vim-illuminate'
Plug 'stephpy/vim-yaml'
"Plug 'Shougo/denite.nvim'
Plug 'airblade/vim-gitgutter'
"Plug 'raghur/fruzzy', {'do': { -> fruzzy#install()}}
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ap/vim-css-color'
Plug 'tpope/vim-fugitive'
Plug 'rbong/vim-flog'
Plug 'wincent/ferret'
Plug 'ludovicchabant/vim-gutentags'
Plug 'scrooloose/nerdcommenter'
Plug 'jparise/vim-graphql'
"Plug 'SirVer/ultisnips'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'gkapfham/vim-vitamin-onec'
Plug 'levelone/tequila-sunrise.vim'
Plug 'yegappan/mru'
Plug 'xavierchow/vim-sequence-diagram'
Plug 'jremmen/vim-ripgrep'
Plug 'zivyangll/git-blame.vim'
Plug 'idanarye/vim-merginal'
Plug 'leafgarland/typescript-vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'drewtempelmeyer/palenight.vim'
Plug 'mhartington/oceanic-next'
Plug 'Quramy/tsuquyomi'
" Plug 'sheerun/vim-polyglot'
"call vundle#end()            " required


" Add plugins to &runtimepath
call plug#end()

filetype plugin indent on    " required

syntax on
set syn=auto
set showmatch
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set shiftwidth=4
set number
set wildignore+=node_modules
set wildignore+=pim
set wildignore+=dist
set wildignore+=.tags
set wildignore+=.ctags

set backupdir=~/.vim/backup
set directory=~/.vim/tmp

syntax enable
"set regexpengine=1

set background=dark
set termguicolors

try
    colorscheme tequila-sunrise
    colorscheme moonfly
    colorscheme palenight
    colorscheme solarized
    colorscheme desert
    colorscheme vitaminonec
    colorscheme dracula
    colorscheme OceanicNext

catch /^Vim\%((\a\+)\)\=:E185/
    " deal with it
endtry

set clipboard=unnamedplus

function! ClipboardYank()
    call system('pbcopy', @@)
endfunction
function! ClipboardPaste()
    let @@ = system('pbpaste')
endfunction

"vnoremap <silent> y y:call ClipboardYank()<cr>
"vnoremap <silent> d d:call ClipboardYank()<cr>
"nnoremap <silent> p :call ClipboardPaste()<cr>
"onoremap <silent> y y:call ClipboardYank()<cr>
"onoremap <silent> d d:call ClipboardYank()<cr>

" shortcut for for loops i js
" ab fori for ( let i = 0, ii = ___.length; i < ii; i++ ) {

ab setTime setTimeout(() => {
     \<CR>
     \<CR>}, 100);

"py import uuid
"ab uuuid :=pyeval('str(uuid.uuid4())')

"function! UUID()
" pyeval('str(uuid.uuid4())')  
"endfunction

"map ;U :call UUID()<CR>

" shortcut for commenting
"function! Komment()
"  if getline(".") =~ '\/\/'
"    let hls=@/
"    s/^\/\///
"    let @/=hls
"  else
"    let hls=@/
"    s/^/\/\//
"    let @/=hls
"  endif
"endfunction
"map ;k :call Komment()<CR>

"map ' <Nop>
map ;l :tabprevious<CR>
map ;' :tabnext<CR>
map ;p :tabnew<CR>

nnoremap <F4> :set invpaste paste?<CR>
set pastetoggle=<F4>
set showmode

" Map :W to :w since i always accidentally press wrong
command W w

" Map NT to toggle NERDTreeTabsToggle
command NT NERDTreeTabsToggle

map <Leader>dr :python debugger_resize()<cr>
map <Leader>di :python debugger_command('step_into')<cr>
map <Leader>do :python debugger_command('step_over')<cr>
map <Leader>dt :python debugger_command('step_out')<cr>

map <Leader>ds :python debugger_run()<cr>
map <Leader>dq :python debugger_quit()<cr>
map <Leader>dc :python debugger_context()<cr>
map <Leader>dp :python debugger_property()<cr>

map <Leader>dwc :python debugger_watch_input("context_get")<cr>A<cr>
map <Leader>dwp :python debugger_watch_input("property_get", '<cword>')<cr>A<cr>

set tags=./tags;/

map <Leader>ee :s/\s\+$//g<cr>


autocmd FileType javascript noremap <buffer>  <c-d> :call JsBeautify()<cr>

" Multicursor
nnoremap <Leader>c :<c-u>call MultiCursorPlaceCursor()<cr>
nnoremap <Leader>cm :<c-u>call MultiCursorManual()<cr>
nnoremap <Leader>cx :<c-u>call MultiCursorRemoveCursors()<cr>
xnoremap <Leader>cv :<c-u>call MultiCursorVisual()<cr>
nnoremap <Leader>cr :<c-u>call MultiCursorSearch('')<cr>
nnoremap <Leader>cw :<c-u>call MultiCursorSearch('<c-r><c-w>')<cr>
xnoremap <Leader>ck "*y<Esc>:call MultiCursorSearch('<c-r>=substitute(escape(@*, '\/.*$^~[]'), "\n", '\\n', "g")<cr>')<cr>
let g:multicursor_quit = "{<Leader>cq}"

" XML formatter
function! DoFormatXML() range
    " Save the file type
    let l:origft = &ft

    " Clean the file type
    set ft=

    " Add fake initial tag (so we can process multiple top-level elements)
    exe ":let l:beforeFirstLine=" . a:firstline . "-1"
    if l:beforeFirstLine < 0
        let l:beforeFirstLine=0
    endif
    exe a:lastline . "put ='</PrettyXML>'"
    exe l:beforeFirstLine . "put ='<PrettyXML>'"
    exe ":let l:newLastLine=" . a:lastline . "+2"
    if l:newLastLine > line('$')
        let l:newLastLine=line('$')
    endif

    " Remove XML header
    exe ":" . a:firstline . "," . a:lastline . "s/<\?xml\\_.*\?>\\_s*//e"

    " Recalculate last line of the edited code
    let l:newLastLine=search('</PrettyXML>')

    " Execute external formatter
    exe ":silent " . a:firstline . "," . l:newLastLine . "!xmllint --noblanks --format --recover -"

    " Recalculate first and last lines of the edited code
    let l:newFirstLine=search('<PrettyXML>')
    let l:newLastLine=search('</PrettyXML>')
 
    " Get inner range
    let l:innerFirstLine=l:newFirstLine+1
    let l:innerLastLine=l:newLastLine-1

    " Remove extra unnecessary indentation
    exe ":silent " . l:innerFirstLine . "," . l:innerLastLine "s/^  //e"

    " Remove fake tag
    exe l:newLastLine . "d"
    exe l:newFirstLine . "d"

    " Put the cursor at the first line of the edited code
    exe ":" . l:newFirstLine

    " Restore the file type
    exe "set ft=" . l:origft
endfunction
command! -range=% FormatXML <line1>,<line2>call DoFormatXML()

let mapleader = "\\"

nmap <silent> <leader>x :%FormatXML<CR>
vmap <silent> <leader>x :FormatXML<CR>

nmap <leader>e A<Esc>x

filetype plugin indent on

"define 3 custom highlight groups
hi User1 ctermbg=green ctermfg=red   guibg=green guifg=red
hi User2 ctermbg=red   ctermfg=blue  guibg=red   guifg=blue
hi User3 ctermbg=blue  ctermfg=green guibg=blue  guifg=green
 
set statusline=
"set statusline+=%1*  "switch to User1 highlight
set statusline+=%F   "full filename
set statusline+=%2*  "switch to User2 highlight
set statusline+=%y   "filetype
set statusline+=%3*  "switch to User3 highlight
set statusline+=%l   "line number
set statusline+=%*   "switch back to statusline highlight
set statusline+=%P   "percentage thru file

set laststatus=2

:nnoremap <Leader>s :SemanticHighlightToggle<cr>

highlight SignColumn ctermbg=Black

if has('neovim')
    let g:deoplete#enable_at_startup = 1
    let s:python_host_init = 'python -c "import neovim; neovim.start_host()"'
    let &initpython = s:python_host_init
    let &initclipboard = s:python_host_init
    set unnamedclip " Automatically use clipboard as storage for the unnamed register
else 

endif

" Turn of beep
set noeb vb t_vb=

:highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen

" Show trailing whitespace:
:match ExtraWhitespace /\s\+$/

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" No more ex mode
nnoremap Q <nop>

" Remember folds
" TUNED OF ON THE 9th of MArch 2017 because it gave an error
" autocmd BufWrite * mkview
" autocmd BufRead * silent loadview

" Ignore folders etc in ctrl p
let g:ctrlp_custom_ignore = {
  \ 'dir':  '(pim|node_modules)'
  \ }

set exrc            " enable per-directory .vimrc files
set secure          " disable unsafe commands in local .vimrc files

set hlsearch

" Sometimes easytags takes to much time when we save a file, so this is
" supposed to make it faster
"let g:easytags_syntax_keyword = 'always'

let g:jsx_ext_required = 0 " Allow JSX in normal JS files
au BufRead,BufNewFile *.jsx set filetype=javascript

let g:LargeFile = 1024 * 1024 * 10
augroup LargeFile 
  autocmd BufReadPre * let f=getfsize(expand("<afile>")) | if f > g:LargeFile || f == -2 | call LargeFile() | endif
augroup END

function LargeFile()

  " no syntax highlighting etc
  set eventignore+=FileType
  " save memory when other file is viewed
  setlocal bufhidden=unload
  " is read-only (write with :w new_filename)
  setlocal buftype=nowrite
  " no undo possible
  setlocal undolevels=-1
  " display message
  autocmd VimEnter *  echo "The file is larger than " . (g:LargeFile / 1024 / 1024) . " MB, so some options are changed (see .vimrc for details)."

endfunction

set undodir=~/.vim/undo/
set undofile
set undolevels=1000
set undoreload=10000

" Repeat commands
vnoremap . :normal .<CR>

let g:tern_show_argument_hints=1

" Highlight 
:autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red

" Show trailing whitespace:
":match ExtraWhitespace /\s\+$/
":match ExtraWhitespace /\t/

:autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/

" vim colors settings
let g:cssColorVimDoNotMessMyUpdatetime = 1


"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 0
"let g:syntastic_loc_list_height = 5
"let g:syntastic_enable_signs=1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_javascript_checkers = ['eslint']

" Statusline with eslint errors
set statusline+=\ %#warningmsg#
set statusline+=%{exists('g:loaded_syntastic_plugin')?SyntasticStatuslineFlag():''}
set statusline+=%*

" ignore case if no uppercase letter exists in search query
set smartcase



"function! FindConfig(prefix, what, where)
"    let cfg = findfile(a:what, escape(a:where, ' ') . ';')
"    return cfg !=# '' ? ' ' . a:prefix . ' ' . shellescape(cfg) : ''
"endfunction
"
"autocmd FileType javascript let b:syntastic_javascript_jscs_args =
"    \ get(g:, 'syntastic_javascript_jscs_args', '') .
"    \ FindConfig('-c', '.eslintrc.json', expand('<afile>:p:h', 1))
"

let g:deoplete#enable_at_startup = 1

" call deoplete#enable_logging("DEBUG", "/Users/camilo/Projects/flowtest/debug.logg")

function! StrTrim(txt)
  return substitute(a:txt, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
endfunction

let g:flow_path = StrTrim(system('PATH=$(npm bin):$PATH && which flow'))

if g:flow_path != 'flow not found'
  let g:deoplete#sources#flow#flow_bin = g:flow_path
endif

" Fix errors in mac os x when editing crontab
autocmd filetype crontab setlocal nobackup nowritebackup


" Set relative line numbers
set relativenumber

let g:ale_linters = {
\   'javascript': ['eslint'],
\}


let g:header_field_author = 'Camilo Tapia'
let g:header_field_author_email = 'camilo.tapia@gmail.com'
let g:header_field_timestamp = 0
map <F4> :AddHeader<CR>

let g:deoplete#enable_at_startup = 1

" let g:gitgutter_highlight_lines = 1

set inccommand=nosplit

let $FZF_DEFAULT_COMMAND="rg --files --hidden --follow --glob '!.git/*' --glob '!*.png' --glob '!*.jpg'"
:nnoremap <c-p> :FZF<cr>

" ************* Denite and matcher START ***************
"call denite#custom#var('file/rec', 'command', ['scantree.py', '--skip-list=.git,node_modules,bower_components,tmp,log'])
"nnoremap <C-p> :Denite file_rec<cr>
" ************* Denite and matcher END ***************
"
"
" " use <tab> for trigger completion and navigate to next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()<Paste>

set wildoptions=pum

" Fugitive Conflict Resolution
nnoremap <leader>gd :Gvdiff<CR>
nnoremap gdh :diffget //2<CR>
nnoremap gdl :diffget //3<CR>

" SNIPPETS
"let g:UltiSnipsSnippetDirectories=["UltiSnips", "ulti-snippets"]"
"
nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>
inoremap <Leader><lt> <esc>

set nowrap

set timeoutlen=1000 ttimeoutlen=0
nmap <leader>i :CocCommand tsserver.organizeImports<cr>
nmap <unique> <leader>t <Plug>GenerateDiagram
let g:generate_diagram_theme_hand = 1
let g:coc_global_extensions = [ 'coc-tsserver' ]

let g:autohide_types='tags'
