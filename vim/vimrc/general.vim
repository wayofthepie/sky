set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set syntax=on
set background=dark
set backspace=indent,eol,start

" Auto remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e
