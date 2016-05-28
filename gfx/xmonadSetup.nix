
{ config, pkgs, ... }:

{
  hardware.opengl.enable = true;
  services.xserver = {
    enable = true;
    layout = "gb";
    displayManager.kdm.enable = true;

    windowManager.default = "xmonad";
    windowManager.xmonad.enable = true;
    windowManager.xmonad.enableContribAndExtras = true;

    #desktopManager.default = "xfce";
    #desktopManager.xfce.enable = true;
    #desktopManager.xterm.enable = false;

    videoDrivers = [ "nvidia" ];
    config = ''
      Section "Device"
        Identifier "Nvidia Card"
        Option "GLXVBlank" "on"
      EndSection
    '';

  };

}
