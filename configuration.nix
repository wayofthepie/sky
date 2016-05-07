# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
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
    defaultLocale = "en_ie.utf-8";
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
	
	environment = {
		systemPackages = with pkgs; [						
			git
			vim
		];
	};
	
	# Enable xen
	virtualisation.xen.enable = true;
	virtualisation.xen.domain0MemorySize = 512;
	
}
