{
    disko.devices = {
        disk = {
            nvme = {
                type = "disk";
                device = "/dev/nvme0n1";
                content = {
                    type = "gpt";
                    partitions = {
                        ESP = {
                            priority = 1;
                            name = "ESP";
                            size = "512M";
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
                                mountpoint = "/";
                                mountOptions = [ "compress=zstd" "noatime" ];
                            };
                        };
                    };
                };
            };
        };
    };
}
