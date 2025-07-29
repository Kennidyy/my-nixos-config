{ config, pkgs, ... }:

{
    imports = [
      ./bluetooth.nix
      ./exp-features.nix
      ./firmware.nix
      ./fonts.nix
      ./inter.nix
      ./kde.nix
      ./keymap.nix
      ./network.nix
      ./nvidia.nix
      ./shell.nix
      ./sound-pip.nix
      ./timezone.nix
      ./unfree-pkgs.nix
      ./x11.nix
      ./x11keymap.nix
    ];
}
