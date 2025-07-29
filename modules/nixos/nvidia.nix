{ config, pkgs, ... }:

{
  services.xserver.videoDrivers = [ "nvidia" ];
  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = true;
    nvidiaSettings = true;
    prime = {
     intelBusId = "PCI:0:2:0";
     nvidiaBusId = "PCI:1:0:0";
     };
    open = false;
  };
}
