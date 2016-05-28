# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix

      # Account setup, etc...
      ./security/user.nix

      # Gui config, xmonad
      ./gfx/xmonadSetup.nix

      # Sound config
      ./sound/setup.nix
    ];

  # Use the GRUB 2 boot loader.
  boot.loader.grub.enable = true;
  boot.loader.grub.version = 2;

  # Define on which hard drive you want to install Grub.
  boot.loader.grub.device = "/dev/sdc";

  networking.hostName = "sky";

  # Select internationalisation properties.
  i18n = {
    consoleFont = "Lat2-Terminus16";
    consoleKeyMap = "uk";
    defaultLocale = "en_IE.utf-8";
  };

  # Set your time zone.
  # time.timeZone = "Europe/London";

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  # users.extraUsers.guest = {
  #   isNormalUser = true;
  #   uid = 1000;
  # };

  # The NixOS release to be compatible with for stateful data such as databases.
  system.stateVersion = "16.03";
  hardware.pulseaudio.enable = true;
  environment.systemPackages = let
    vimPackages = import ./vim/vimPackages.nix pkgs;
  in with pkgs; vimPackages ++ [
      stdenv
      google-chrome

      # Graphics
      compton

      # Development
      docker
      git
      gnumake
      idea.idea-community
      openjdk

      haskellPackages.stack
      haskell.compiler.ghc7103
      z3

      # Tools
      mplayer
      nmap
      unzip
      which
    ];

  # Note that we cannot enable xen and the nvidia drivers,
  # the proprietary drivers do not work in dom0.
  #virtualisation.xen.enable = true;
  #virtualisation.xen.domain0MemorySize = 4096;

  # Docker setup
  virtualisation.docker.enable = true;
  virtualisation.docker.storageDriver = "overlay";

  # Bash setup
  programs.bash.shellInit = ''
    export EDITOR=vim
  '';

  nixpkgs.config.allowUnfree = true;
}
