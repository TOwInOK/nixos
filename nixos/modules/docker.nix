{
  virtualisation = {
    docker = {
      enable = true;
      storageDriver = "btrfs";
    };
    oci-containers = {
      backend = "docker";
      containers = {}
    }
  };
}