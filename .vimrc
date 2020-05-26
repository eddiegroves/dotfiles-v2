" Use all vim defaults - see :help defaults.vim
unlet! skip_defaults_vim    
source $VIMRUNTIME/defaults.vim

" Set spell checking on for git commits
autocmd FileType gitcommit setlocal spell
