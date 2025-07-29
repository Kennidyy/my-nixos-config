{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    git
    neovim
    cudaPackages.cudatoolkit
    pciutils
    mesa
  ];
}

