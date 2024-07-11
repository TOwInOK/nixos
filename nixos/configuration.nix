{...}: {
  imports = [
    ./hardware-configuration.nix
    ./packages.nix
    ./modules/out.nix
  ];

  disabledModules = [
    ./modules/xserver.nix
  ];

  networking.hostName = "towinok-nix"; # Define your hostname.

  time.timeZone = "Asia/Novosibirsk"; # Set your time zone.

  i18n.defaultLocale = "en_US.UTF-8"; # Select internationalisation properties.

  nix.settings.experimental-features = [ "nix-command" "flakes" ]; # Enabling flakes

  system.stateVersion = "24.05"; # 24.05 stable
}
