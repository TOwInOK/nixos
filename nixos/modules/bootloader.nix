{
  # https://nixos.wiki/wiki/Bootloader
  boot = {
    loader.systemd-boot.enable = true;
    loader.efi.canTouchEfiVariables = true;
    kernelParams = [ "nvidia.NVreg_PreserveVideoMemoryAllocations=1" ];
  };
  # boot.initrd.kernelModules = [ "amdgpu" ];
  # To remove shit
  # sudo nix-collect-garbage --delete-older-than {?} # any time 1d, 1m, 10s
  # sudo nixos-rebuild boot
}
