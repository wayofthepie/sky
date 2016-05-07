{ pkgs }:

let 
  vimrc = pkgs.callPackage ./vimrc.nix {};
in {
  customRC = vimrc;
}
