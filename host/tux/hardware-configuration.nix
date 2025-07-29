{ config, lib, pkgs, modulesPath, ... }:

{
  imports =
    [ (modulesPath + "/installer/scan/not-detected.nix")
    ];

  boot.initrd.availableKernelModules = [ "xhci_pci" "ahci" "nvme" "usb_storage" "sd_mod" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/a6836300-c3d5-421c-9b63-c6ae029b98b9";
      fsType = "ext4";
    };

  boot.initrd.luks.devices."luks-930b442e-583b-4fe5-bb62-8e69a153622b".device = "/dev/disk/by-uuid/930b442e-583b-4fe5-bb62-8e69a153622b";

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/12CE-248B";
      fsType = "vfat";
      options = [ "fmask=0077" "dmask=0077" ];
    };

  swapDevices =
    [ { device = "/dev/disk/by-uuid/7046bda0-6f92-4a83-9ac4-de33fcc6a87b"; }
    ];

  networking.useDHCP = lib.mkDefault true;

  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}
