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

      # from your own plugin package set
      { name = "vim-trailing-whitespace";  }
    ];
  };
}
