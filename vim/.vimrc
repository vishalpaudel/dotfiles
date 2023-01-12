"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible  " VI compatible mode is disabled so that VIm things work

" =============================================================================
"   PLUGINS
" =============================================================================
call plug#begin()

" Load plugins
" Per file editor config
Plug 'ciaranm/securemodelines'
Plug 'editorconfig/editorconfig-vim'

" Search
Plug 'romainl/vim-cool'               " Disables highlight when search is done
Plug 'haya14busa/incsearch.vim'       " Better incremental search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }  " FZF plugin, makes Ctrl-P unnecessary
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'

" Movement
Plug 'justinmk/vim-sneak'
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/incsearch-easymotion.vim'
Plug 'wikitopian/hardmode'            " Disable arrow keys and similar

" Copy pasting
" TODO Figure out easyclip family
Plug 'svermeulen/vim-yoink'

" Text Manipulation
Plug 'tpope/vim-sensible'             " Some better defaults
Plug 'tpope/vim-unimpaired'           " Pairs of mappings
Plug 'tpope/vim-surround'             " Surround with parentheses & co
Plug 'joom/vim-commentary'            " To comment stuff out
Plug 'terryma/vim-multiple-cursors'   " Multiple cursors like sublime
Plug 'godlygeek/tabular'              " For alignment
Plug 'junegunn/vim-easy-align'        " Easier alignment
Plug 'foosoft/vim-argwrap'            " convert lists of arguments into blocks of arguments
Plug 'tpope/vim-endwise'              " Ends control flow indentifiers
Plug 'tpope/vim-repeat'               " Adds repeat thorugh . to other packages
Plug 'tpope/vim-speeddating'          " Dates in vim

" GUI enhancements
Plug 'itchyny/lightline.vim'          " Better Status Bar
Plug 'mhinz/vim-startify'             " Better start screen
Plug 'scrooloose/nerdtree'            " File explorer
Plug 'ryanoasis/vim-devicons'         " Nice filetype icons (slow)

Plug 'sjl/gundo.vim'                  " Undo Tree
Plug 'simnalamburt/vim-mundo'         " Gundo fork
Plug 'majutsushi/tagbar'              " Pane with tags
Plug 'machakann/vim-highlightedyank'  " Highlight yanks
Plug 'ojroques/vim-oscyank'           " Yank from remote sessions
Plug 'andymass/vim-matchup'           " Highlight corresponding blocks e.g. if - fi in bash
Plug 'kshenoy/vim-signature'          " Show marks in the gutter
Plug 'yggdroot/indentline'            " Shows indentation levels
Plug 'tpope/vim-eunuch'               " Unix helpers
Plug 'moll/vim-bbye'                  " optional dependency for vim-symlink
Plug 'aymericbeaumet/vim-symlink'     " Resolve symlinks before editing, plays nicely with undodir

" Git GUI
Plug 'airblade/vim-gitgutter'         " Git gutter
Plug 'tpope/vim-fugitive'             " Git interface
Plug 'tpope/vim-rhubarb'                    " Enable GBrowse from fugitive for GitHub
Plug 'junegunn/gv.vim'                " TIG like navigation for vim
Plug 'xuyuanp/nerdtree-git-plugin'    " Show status of files in NerdTree
Plug 'tveskag/nvim-blame-line'        " Add git blame on line

" Tmux GUI
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'roxma/vim-tmux-clipboard'
Plug 'christoomey/vim-tmux-navigator'

" VIM Ui
Plug 'wellle/context.vim'
Plug 'psliwka/vim-smoothie'


" Autocomplete
Plug 'ervandew/supertab'

" Semantic language support
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Syntactic language support
Plug 'w0rp/ale'                        " Linting engine
Plug 'maximbaz/lightline-ale'          " Lightline + Ale
Plug 'plasticboy/vim-markdown'         " Markdown support
Plug 'mzlogin/vim-markdown-toc'        " Markdown TOC builder
Plug 'cespare/vim-toml'                " TOML support
Plug 'stephpy/vim-yaml'                " YAML support
Plug 'elzr/vim-json'                   " Better JSON support
Plug 'rust-lang/rust.vim'              " Rust support
Plug 'glench/vim-jinja2-syntax'        " Jinja2 support
Plug 'lervag/vimtex'                   " Latex support
Plug 'pearofducks/ansible-vim'         " Ansible support
Plug 'mechatroner/rainbow_csv'         " CSV color coding
Plug 'ap/vim-css-color'                " CSS colors
Plug 'frazrepo/vim-rainbow'                " Rainbow parentheses
Plug 'vim-pandoc/vim-pandoc'           " Pandoc support
Plug 'vim-pandoc/vim-pandoc-syntax'    " Pandoc syntax
Plug 'chrisbra/colorizer'              " Colorize color codes
Plug 'vim-scripts/applescript.vim'
Plug 'pprovost/vim-ps1'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'mattn/emmet-vim'
Plug 'norcalli/nvim-colorizer.lua'     " Faster colorzier (only neovim,
" reconsider)
Plug 'liuchengxu/vista.vim'
Plug 'vim-python/python-syntax'
Plug 'sentientmachine/pretty-vim-python'
Plug 'isobit/vim-caddyfile'

" Colorschemes
Plug 'morhetz/gruvbox'
Plug 'chriskempson/base16-vim'         " Base16 themes
Plug 'gerw/vim-hilinktrace'            " Syntax Highlighting Tracer
Plug 'fatih/molokai'                  " Monokai and friends
Plug 'crusoexia/vim-monokai'
Plug 'phanviet/vim-monokai-pro'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'erichdongubler/vim-sublime-monokai'
Plug 'flazz/vim-colorschemes'          " Bunch of color schemes
Plug 'sainnhe/sonokai'                 " Monokai Pro-like scheme
Plug 'tanvirtin/monokai.nvim'
Plug 'srcery-colors/srcery-vim'

" Writing
Plug 'junegunn/goyo.vim'               " Distraction free mode
Plug 'junegunn/limelight.vim'          " Focus on current paragraph
Plug 'rhysd/vim-grammarous'            " GrammarCheck using LanguageTool
Plug 'ron89/thesaurus_query.vim'       " Synonym query

" Other
Plug 'wakatime/vim-wakatime'           " Wakatime time tracking
Plug 'ihsanturk/neuron.vim'            " For neuron Zettelkasten
Plug 'liuchengxu/vim-which-key'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

call plug#end()

if isdirectory($HOME . "/.vim/plugged/coc.nvim")
    call coc#add_extension(
       \'coc-explorer',
       \'coc-git',
       \'coc-go',
       \'coc-highlight',
       \'coc-highlight',
       \'coc-pyright',
       \'coc-json',
       \'coc-lua',
       \'coc-prettier',
       \'coc-rls',
       \'coc-sh',
       \'coc-tabnine',
       \'coc-vimlsp',
       \'coc-yaml',
       \'coc-eslint',
       \'coc-tsserver',
       \'coc-xml',
       \'coc-css',
       \'coc-stylelint',
     \)
endif

" =============================================================================
"  EDITOR SETTINGS
" =============================================================================

" Colorscheme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:molokai_original = 0

if exists("+termguicolors")
    " set termguicolors
    " The commands below are needed for tmux + termguicolors
    " This is only necessary if you use "set termguicolors".
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

    " fixes glitch? in colors when using vim with tmux
    set background=dark
    set t_Co=256

    colorscheme vim-monokai-tasty

elseif &t_Co < 256
    colorscheme vim-monokai-tasty
    set nocursorline " looks bad in this mode
endif

if &diff
    colorscheme foobar
endif


let g:python_highlight_all = 1

syntax on           " enable syntax processing

" Spaces & Tabs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nowrap          " stops long lines wrapping down
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4    " Insert 4 spaces on a tab
set expandtab       " tabs are spaces, mainly because of python

" UI Config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number              " show line numbers
set relativenumber      " show relative numbering
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set cursorcolumn        " highlight current_compiler
filetype indent on      " load filetype-specific indent files
filetype plugin on      " load filetype specific plugin files
set wildmenu            " visual autocomplete for command menu
set showmatch           " highlight matching [{()}]
set laststatus=2        " Show the status line at the bottom
" set mouse+=a            " A necessary evil, mouse support
set mouse=            " A necessary evil, mouse support
set noerrorbells visualbell t_vb=    "Disable annoying error noises
set splitbelow          " Open new vertical split bottom
set splitright          " Open new horizontal splits right
set linebreak           " Have lines wrap instead of continue off-screen
set scrolloff=9         " Number of lines padding before the screen moves vertically
set sidescrolloff=9     " Same as above but for horizontal
set sidescroll=1        " Jumps of sidescroll
set scroll=1            " Same as above but for vertical
set updatetime=100      " Some plugins require fast updatetime
set ttyfast             " Improve redrawing

" Buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hidden              " Allows having hidden buffers (not displayed in any window)

" Sensible stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set backspace=indent,eol,start     " Make backspace behave in a more intuitive way
nmap Q <Nop>
" 'Q' in normal mode enters Ex mode. You almost never want this.
" Unbind for tmux
map <C-a> <Nop>
map <C-x> <Nop>

"Searching
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set ignorecase          " Ignore case in searches by default
set smartcase           " But make it case sensitive if an uppercase is entered
" turn off search highlight
vnoremap <C-h> :nohlsearch<cr>
nnoremap <C-h> :nohlsearch<cr>
" Ignore files for completion
set wildignore+=*/.git/*,*/tmp/*,*.swp,*.pdf

" Undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set undofile " Maintain undo history between sessions
set undodir=~/.vim/undodir

" Folding : Vishal doesn't know how to use this
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
" space open/closes folds
" nnoremap <space> za
set foldmethod=indent   " fold based on indent level
" This is especially useful for me since I spend my days in Python.
" Other acceptable values are marker, manual, expr, syntax, diff.
" Run :help foldmethod to find out what each of those do.

" Movement
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" highlight last inserted text
nnoremap gV `[v`]

" Jump to start and end of line using the home row keys
map H ^
map L $

" (Shift)Tab (de)indents code
vnoremap <Tab> >
vnoremap <S-Tab> <

" Capital JK move code lines/blocks up & down
" TODO improve functionality
nnoremap K :move-2<CR>==
nnoremap J :move+<CR>==
xnoremap K :move-2<CR>gv=gv
xnoremap J :move'>+<CR>gv=gv

" Search results centered please
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz
nnoremap <C-o> <C-o>zz
nnoremap <C-i> <C-i>zz

" Leader
let mapleader=" "       " leader is space

" Tmux
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" These lines change the cursor from block cursor mode to vertical bar cursor mode when using tmux.
" Without these lines, tmux always uses block cursor mode.
" allows cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" Lose Bad Habits
" http://vimcasts.org/blog/2013/02/habit-breaking-habit-making/
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Remove newbie crutches in Command Mode
" cnoremap <Down> <Nop>
" cnoremap <Left> <Nop>
" cnoremap <Right> <Nop>
" cnoremap <Up> <Nop>

" Remove newbie crutches in Insert Mode
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Up> <Nop>

" Remove newbie crutches in Normal Mode
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>

" Remove newbie crutches in Visual Mode
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>
vnoremap <Up> <Nop>

" Enable hard home so hjkl are disabled
" autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

" Filetype configs
autocmd BufNewFile,BufRead *.yml.j2 set syntax=yaml   "Jinja yml (mostly for Ansible) gets linted as yaml


" =============================================================================
"   CUSTOM FUNCTIONS
" =============================================================================

" toggle between number and relativenumber
function! ToggleLineNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc

function! ToggleALEFix()
    if(g:ale_fix_on_save == 1)
        let g:ale_fix_on_save = 0
    else
        let g:ale_fix_on_save = 1
    endif
endfunc


function! ToggleColorColumn()
    if &colorcolumn == ""
        set colorcolumn=88
    else
        set colorcolumn=
    endif
endfunction

function! ToggleZoom(toggle)
  if exists("t:restore_zoom") && (t:restore_zoom.win != winnr() || a:toggle == v:true)
      exec t:restore_zoom.cmd
      unlet t:restore_zoom
  elseif a:toggle
      let t:restore_zoom = { 'win': winnr(), 'cmd': winrestcmd() }
      vert resize | resize
  endif
endfunction
augroup restorezoom
    au WinEnter * silent! :call ToggleZoom(v:false)
augroup END


command! LineNumberToggle call ToggleLineNumber()
command! ALEfixToggle call ToggleALEFix()
command! ColorColumnToggle call ToggleColorColumn()


" To apply the macro to all lines you need a little trick I learned from Drew Neil’s
" awesome book practical vim. Add the following script (visual-at.vim) to your vim
" configuration. This allows you to visually select a section and then hit @ to run a
" macro on all lines. Only lines which match will change. Without this script the
" macro would stop at lines which don’t match the macro.
function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction
xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>
" =============================================================================
"   PLUGIN CONFIG
" =============================================================================
"
" META: Disabled by default
let g:gitgutter_enabled = 0          " vim-gitgutter
let g:indentLine_enabled = 0         " indentline
let g:SignatureEnabledAtStartup = 0  " vim-signature
let g:startify_custom_header =[]     " Disable startify header
" Enabled by default
let g:rainbow_active = 1


" ALE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_enabled = 1
" For quick startup
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1
let g:ale_float_preview=1
let g:ale_fixers = {
    \   '*': ['remove_trailing_lines', 'trim_whitespace'],
    \   'javascript': ['prettier'],
    \   'css': ['prettier'],
    \   'html': ['prettier'],
    \   'markdown': ['prettier'],
    \   'json': ['prettier'],
    \   'yaml': ['prettier'],
    \}
let g:ale_cpp_cc_options = '-std=c++14 -Wall'
nmap <silent> [a <Plug>(ale_previous_wrap)
nmap <silent> ]a <Plug>(ale_next_wrap)


" Lightline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" --INSERT-- is unncessary because of lightline
set noshowmode

"Conquer of Completion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if !exists("*VSCodeNotify") && isdirectory($HOME . "/.vim/plugged/coc.nvim")

    let g:coc_custom_config = '1'
    let g:coc_node_path = $HOME . '/.neovim/node/bin/node'
    " let g:coc_disable_startup_warning = 1

    let g:vista_default_executive = 'coc'

    source ~/.vim/coc.vim
    " Use autocmd to force lightline update.
    autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()

    " Lightline mods for CoC compatibility
    let g:lightline = {
          \ 'active': {
          \   'left': [ [ 'mode', 'paste' ],
          \             [ 'cocstatus', 'currentfunction', 'readonly', 'filename', 'modified', 'fugitive' ] ],
          \   'right': [ [ 'lineinfo' ],
		  \              [ 'percent' ],
		  \              [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok', 'filetype', 'fileencoding'] ]
          \ },
          \ 'component_function': {
          \   'filename': 'LightlineFilename',
          \   'cocstatus': 'coc#status',
          \   'currentfunction': 'CocCurrentFunction'
          \ },
          \ }
    function! LightlineFilename()
      return expand('%:t') !=# '' ? @% : '[No Name]'
    endfunction

    function! CocCurrentFunction()
        return get(b:, 'coc_current_function', '')
    endfunction


let g:lightline.component_expand = {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_infos': 'lightline#ale#infos',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ }

let g:lightline.component_expand = {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_infos': 'lightline#ale#infos',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ }

    " vim-easymotion disturbs diagnostics
    " See https://github.com/neoclide/coc.nvim/issues/110
    " let g:easymotion#is_active = 0
    " function! EasyMotionCoc() abort
    "   if EasyMotion#is_active()
    "     let g:easymotion#is_active = 1
    "     CocDisable
    "   else
    "     if g:easymotion#is_active == 1
    "       let g:easymotion#is_active = 0
    "       CocEnable
    "     endif
    "   endif
    " endfunction
    " autocmd TextChanged,CursorMoved * call EasyMotionCoc()

   nnoremap <silent> <space>Y  :<C-u>CocList -A --normal yank<cr>

   command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

endif

" Easymotion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use uppercase target labels and type as a lower case
let g:EasyMotion_use_upper = 1
let g:EasyMotion_keys = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ;'
" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1
map <Leader> <Plug>(easymotion-prefix)

" incsearch
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" incsearch-easymotion
map z/ <Plug>(incsearch-easymotion-/)
map z? <Plug>(incsearch-easymotion-?)
map zg/ <Plug>(incsearch-easymotion-stay)

" Minor Configs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" * Gundo
if has('python3')
    let g:gundo_prefer_python3 = 1
endif

" * NERDTree
" Close vim if only window left is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" * FZF
set rtp+=/usr/local/opt/fzf
let g:fzf_layout = { 'down': '~20%' }


" * Limelight
let g:limelight_conceal_ctermfg = 'gray'
"autocmd! User GoyoEnter Limelight
"autocmd! User GoyoLeave Limelight!


" * SuperTab
" Tab goes down instead of up
" let g:SuperTabDefaultCompletionType = "<c-n>"
" let g:SuperTabContextDefaultCompletionType = "<c-n>"

" GitGutter
nmap ghs <Plug>(GitGutterStageHunk)
nmap ghu <Plug>(GitGutterUndoHunk)
nmap ghp <Plug>(GitGutterPreviewHunk)

" vimtex
let g:tex_flavor = "latex"

" vim-easy-align
" Start interactive EasyAlign in visual mode (e.g. vipga)
" xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
" nmap ga <Plug>(EasyAlign)

" =============================================================================
"   CUSTOM SHORTCUTS  (LEADER, FN, &c)
" =============================================================================

" Modifiers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" aw    -- ArgWrap
nnoremap <Leader>aw :ArgWrap<CR>

" FN
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Spellcheck Keyboard shorcut (https://vim.fandom.com/wiki/Toggle_spellcheck_with_function_keys)
map <F5> :setlocal spell! spelllang=en_us<CR>
map <F7> :NERDTreeToggle<CR>
map <F8> :Vista!!<CR>

" =============================================================================
" # Autocommands
" =============================================================================

" Prevent accidental writes to buffers that shouldn't be edited
autocmd BufRead *.orig set readonly
autocmd BufRead *.bk set readonly

" Jump to last edit position on opening file
if has("autocmd")
  " https://stackoverflow.com/questions/31449496/vim-ignore-specifc-file-in-autocommand
  au BufReadPost * if expand('%:p') !~# '\m/\.git/' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Help filetype detection
autocmd BufRead *.plot set filetype=gnuplot
autocmd BufRead *.md set filetype=markdown
autocmd BufRead *.tex set filetype=tex
autocmd BufRead *.rss set filetype=xml

let g:pep8_map='<leader>8'
let g:vista_default_executive = 'coc'

" let g:lightline = { 'colorscheme': 'molokai' }
