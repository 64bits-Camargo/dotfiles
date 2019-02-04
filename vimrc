" Aumentar a memorização do vim  - ~/.viminfo guardará dados úteis como seu
" histórico de pesquisas /, linha de comando: marcas ``, registradores, entre
" outros. então com viminfo é possivél copiar um linha(yy), sair do arquivo,
" abrir um OUTRO arquivo e colar(p).
set viminfo='10,\"30,:20,%,n~/.viminfo

" RESOLVE O PROBLEMA DA LETRA MAISCULA NO SALVAR
cab W  w
cab Wq wq
cab wQ wq
cab WQ wq
cab Q  q

" SET :
set wildmenu			" completação do TAB
set nocompatible		" compatibilidade vi/vim
set number			" mostra número de linhas
set tabstop=4			" make tabs as wide as four spaces
set shiftwidth=4		" ^
set laststatus=2		" always show status lines
set mouse=a			" enable mouse in all modes
set tw=90			" quebra-linhas
set colorcolumn=90		" printa quebra-linhas



" Sintaxe:
syn on

" Instalar vim-plug
" https://github.com/junegunn/vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
 silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
  \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
 autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" PLUGINS:
" Heuristically set buffer options (auto indentation)
Plug 'tpope/vim-sleuth'

" One colorscheme pack to rule them all!
Plug 'flazz/vim-colorschemes'

" Lean & mean status/tabline for vim that's light as air.
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }

" Should be loaded before vim-airline but does not work :(
Plug 'vim-airline/vim-airline'

" Vim plugin which shows a git diff in the gutter (sign column) and
" stages/undoes hunks.
Plug 'airblade/vim-gitgutter'

" Preview colours in source code while editing
Plug 'ap/vim-css-color', { 'for': 'css' }

" Allows you to use <Tab> for all your insert completion needs
Plug 'ervandew/supertab'

" Vim plugin, provides insert mode auto-completion for quotes, parens,
" brackets, etc.
 Plug 'Raimondi/delimitMate'

" Syntax checking hacks for vim
Plug 'vim-syntastic/syntastic'

" Enhanced javascript syntax file for Vim
Plug 'jelera/vim-javascript-syntax'

" Vastly improved Javascript indentation and syntax support in Vim
Plug 'pangloss/vim-javascript'

" A code-completion engine for Vim
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }

call plug#end()
