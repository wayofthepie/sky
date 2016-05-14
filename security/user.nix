{ config, pkgs, ... }:

{
  users.extraUsers.chaospie =
    { isNormalUser = true;
      home = "/home/chaospie";
      extraGroups = [ "wheel" "docker" ];
    };
  security.sudo.enable = true;
}
