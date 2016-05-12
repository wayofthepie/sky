
{ config, pkgs, ... }:


{

  # Gui setup
  services.xserver = {
    enable = true;
    displayManager.lightdm.enable = true;

    windowManager.default = "xmonad";
    windowManager.xmonad.enable = true;
    windowManager.xmonad.enableContribAndExtras = true;

    desktopManager.default = "xfce";
    desktopManager.xfce.enable = true;
    desktopManager.xterm.enable = false;
  };

}
