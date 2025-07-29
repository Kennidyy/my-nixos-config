{ config, lib, pkgs, modulesPath, ... }:

{
    environment.systemPackages = with pkgs; [
        zsh
        oh-my-zsh
        #git
        vscode
        #neovim
        google-chrome
        firefox
        firefox-devedition
        #cudaPackages.cudatoolkit
        #pciutils
        #mesa
  ];
}
