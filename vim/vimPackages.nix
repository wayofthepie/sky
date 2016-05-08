{ pkgs, lib, ... }:

let
  customization = {
    vimrcConfig = (import ./customization.nix { pkgs = pkgs; });
  } // { name = "vim"; };

  custom_vim = pkgs.vim_configurable.customize customization;

  vim = lib.overrideDerivation custom_vim (o: {
    ftNixSupport  = true;
    luaSupport = true;
  });

in [
  vim
  pkgs.python
  pkgs.ctags
]

