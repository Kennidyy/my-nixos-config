{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ../../modules/nixos/default.nix
      ../../modules/nixos/bootloader.nix
      ../../modules/user-default/default.nix
      ./user-packages.nix
    ];

  boot.initrd.luks.devices."luks-050108fd-5eb7-435e-b7e6-f4bbf155c1db".device = "/dev/disk/by-uuid/050108fd-5eb7-435e-b7e6-f4bbf155c1db";
  networking.hostName = "TUX";

  users.users.tux = {
    isNormalUser = true;
    description = "TUX";
    shell = pkgs.zsh;
    extraGroups = [ "networkmanager" "wheel" "docker" ];
    packages = with pkgs; [

    ];
  };

  virtualisation.docker.enable = true;

  system.stateVersion = "25.05";
}
