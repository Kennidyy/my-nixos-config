{ config, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        zsh
        oh-my-zsh
        vscode
        google-chrome
        firefox
        firefox-devedition
        jetbrains.webstorm
	alacritty
	lsd
	obsidian
  ];
}
