{ stdenv, writeText }:

let
  general = builtins.readFile ./vimrc/general.vim;
in
  ''
    ${general}
  ''
