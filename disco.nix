{
  disko.devices = {
    disk = {
      nvme = {
        type = "disk";
        device = "/dev/nvme0n1";
        content = {
          type = "gpt";
          partitions = {
            MBR = {
                type = "EF02"; # for grub MBR
                size = "1M";
                priority = 1;
            };
            ESP = {
                priority = 2;
                name = "ESP";
                size = "256M"
                type = "EF00";
                content = {
                type = "filesystem";
                format = "vfat";
                mountpoint = "/boot";
                };
            };
            root = {
              size = "100%";
              content = {
                type = "btrfs";
                extraArgs = [ "-f" ];
                subvolumes = {
                  "/rootfs" = {
                    mountpoint = "/";
                  };
                  "/home" = {
                    mountOptions = [ "compress=zstd" ];
                    mountpoint = "/home";
                  };
                  "/home/towinok" = { };
                  "/nix" = {
                    mountOptions = [ "compress=zstd" "noatime" ];
                    mountpoint = "/nix";
                  };
                };
            };
          };
        };
      };
    };
  };
}
