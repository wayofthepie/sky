{ config, pkgs, ... }:

{
  users.extraUsers.chaospie =
    { isNormalUser = true;
      home = "/home/chaospie";
      extraGroups = [ "wheel" "docker" "audio" ];
    };
  security.sudo.enable = true;
}
