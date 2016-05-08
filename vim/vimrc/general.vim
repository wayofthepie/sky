set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set syntax=on

" Auto remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e
