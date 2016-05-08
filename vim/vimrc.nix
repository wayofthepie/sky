{ stdenv, writeText }:

let
  general   = builtins.readFile ./vimrc/general.vim;
  nerdtree  = builtins.readFile ./vimrc/nerdtree.vim;
in
  ''
    ${general}
    ${nerdtree}
  ''
