{ pkgs }:

let
  vimrc   = pkgs.callPackage ./vimrc.nix {};
  plugins = pkgs.callPackage ./plugins.nix {};
in {
  customRC = vimrc;
  vam = {
    knownPlugins = pkgs.vimPlugins // plugins;

    pluginDictionaries = [
      # from pkgs.vimPlugins
      { name = "youcompleteme"; }
      { name = "nerdtree"; }
      { name = "ctrlp"; }
      { name = "ghcmod"; }
      { name = "neco-ghc"; }
      { name = "Syntastic"; }
      { name = "snipmate"; }
      { name = "nerdcommenter"; }
      { name = "tabular"; }
      { name = "supertab"; }
      { name = "neocomplete-vim"; }

      # from your own plugin package set
      { name = "vim-trailing-whitespace";  }
    ];
  };
}
