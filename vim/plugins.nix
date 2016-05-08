{ pkgs, fetchgit }:

let
  buildVimPlugin = pkgs.vimUtils.buildVimPluginFrom2Nix;
in {
  "vim-trailing-whitespace" = buildVimPlugin {
    name = "vim-trailing-whitespace";
    src = fetchgit {
      url = "https://github.com/bronson/vim-trailing-whitespace";
      rev = "d4ad27de051848e544e360482bdf076b154de0c1";
      sha256 = "18yww527b1b28nd1cdrln68zsss5cqch999mnq4pch01z6k6jisr";
    };
    dependencies = [];
  };
}
