if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.vim/plugged')

function! BuildComposer(info)
  if a:info.status != 'unchanged' || a:info.force
    !cargo build --release
    UpdateRemotePlugins
  endif
endfunction

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }                      " Fuzzy finding
Plug 'junegunn/fzf.vim'                                                                 " FZF vim enhancements

Plug 'w0rp/ale'                                                                         " Build / linting
Plug 'sbdchd/neoformat'                                                                 " Format code with external formaters
Plug 'tpope/vim-commentary'                                                             " Comments
" Plug 'gabesoft/vim-ags'                                                                 " Global AG with replace
Plug 'mhinz/vim-grepper'                                                                " Search for stuff
Plug 'justinmk/vim-dirvish'                                                             " Enhanced netrw
Plug 'tpope/vim-rsi'                                                                    " More readline-style mappings
" Plug 'junegunn/vim-peekaboo'                                                            " Show registers
Plug 'tpope/vim-surround'                                                               " Surround stuff
Plug 'wellle/targets.vim'                                                               " Various text objects
Plug 'tpope/vim-endwise'                                                                " Auto do...end
Plug 'tpope/vim-repeat'                                                                 " Better repeat
Plug 'tpope/vim-eunuch'                                                                 " Sugar for UNIX commands
Plug 'tpope/vim-unimpaired'                                                             " Various 'pair' mappings
Plug 'tpope/vim-abolish'                                                                " Improved search/replace
Plug 'pgdouyon/vim-evanesco'                                                            " Better slash search
Plug 'matchit.zip'                                                                      " Better pair matching (e.g. do...end)
Plug 'AndrewRadev/splitjoin.vim'                                                        " Split and join various statements
" Plug 'AndrewRadev/switch.vim', { 'on': 'Switch' }                                       " Switch various statements
Plug 'christoomey/vim-tmux-navigator'                                                   " Easier tmux/vim pane navigation (also see https://github.com/christoomey/vim-tmux-navigator/issues/61#issuecomment-87284887)
Plug 'janko-m/vim-test'                                                                 " Run tests for various languages
Plug 'kassio/neoterm'                                                                   " Run things in the neovim terminal
Plug 'ajh17/VimCompletesMe'                                                             " Sleek autocompletion
Plug 'zenbro/mirror.vim'                                                                " Easily edit projects over ssh

Plug 'tpope/vim-fugitive'                                                               " Git
" Plug 'rhysd/committia.vim'                                                              " Show difs in fugitive commit
" Plug 'gregsexton/gitv'                                                                  " Gitk for vim
" Plug 'jreybert/vimagit'                                                                 " Git stage/commit
Plug 'airblade/vim-gitgutter'                                                           " Show git changes in column
Plug 'int3/vim-extradite'                                                               " Browse git commits for the current file

Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }                                             " Ruby syntax
Plug 'Keithbsmiley/rspec.vim', { 'for': 'ruby' }                                        " RSpec syntax
Plug 'tpope/vim-rails', { 'for': 'ruby' }                                               " Rails-specific enhancements
Plug 'tpope/vim-bundler', { 'for': 'ruby' }                                             " Bundler/gem enhancements
Plug 'kana/vim-textobj-user' | Plug 'nelstrom/vim-textobj-rubyblock', { 'for': 'ruby' } " Ruby block textobj

Plug 'elixir-lang/vim-elixir'                                                           " Elixir syntax
" Plug 'slashmili/alchemist.vim'                                                          " Elixir enhancements

" Plug 'mattn/emmet-vim'                                                                  " Quick html/css editing
" Plug 'StanAngeloff/php.vim', { 'for': 'php' }                                           " PHP syntax
" Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }                                   " Markdown enhancements
Plug 'tpope/vim-haml', { 'for': 'haml' }                                                " HAML/Sass/Scss syntax
" Plug 'indenthtml.vim', { 'for': 'html' }                                                " Better HTML/CSS indentation
Plug 'kchmck/vim-coffee-script'                                                         " Coffeescript syntax
" Plug 'chrisbra/csv.vim', { 'for': 'csv' }                                               " CSV enhancements
" Plug 'irgeek/vim-puppet', { 'for': 'puppet' }                                           " Puppet syntax
" Plug 'elzr/vim-json', { 'for': 'json' }                                                 " JSON syntax
Plug 'vim-scripts/yaml.vim', { 'for': 'yaml' }                                          " YAML syntax
" Plug 'lmeijvogel/vim-yaml-helper', { 'for': 'yaml' }                                    " YAML helper functions
" Plug 'othree/yajs.vim', { 'for': 'javascript' }                                         " ES6 JavaScript syntax
" Plug 'zaiste/tmux.vim', { 'for': 'tmux' }                                               " Tmux syntax
" Plug 'rhysd/vim-crystal'                                                                " Crystal syntax
" Plug 'dag/vim-fish'                                                                     " Fish syntax

Plug 'w0ng/vim-hybrid'                                                                  " Hybrid colour scheme

Plug 'schickling/vim-bufonly'                                                           " Kill other buffers
" Plug 'junegunn/vim-easy-align'                                                          " Alignment
Plug 'Konfekt/FastFold'                                                                 " Faster folding
Plug 'Keithbsmiley/investigate.vim'                                                     " Documentation lookup
" Plug 'dhruvasagar/vim-table-mode'                                                       " Table mode for constructing ascii tables
" Plug 'metakirby5/codi.vim'                                                              " Repl
Plug 'powerman/vim-plugin-AnsiEsc'                                                      " colorize ANSI escape sequences

Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

call plug#end()
