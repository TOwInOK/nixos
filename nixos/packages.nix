{ pkgs, ... }: {
  nixpkgs.config = {
    allowUnfree = true;
    permittedInsecurePackages = ["nvidia-x11" "nvidia-settings" "nvidia-persistenced"];
  };

  environment.systemPackages = with pkgs; [
  # Desktop apps
    telegram-desktop
    firefox
    prismlauncher # minecraft launcher
    alacritty
    gparted
    discord
    obs-studio
  # Code
    postman
    # https://nixos.wiki/wiki/Rust
    cargo
    rustc
    rustup
  # CLI
    git
    htop
#    neofetch
    ranger # file manager
    wget
    unzip
    lux # fetch video via url
    openssl
    swww # animated wallpaper for wayland
    zip
    lazygit # gui for git
    scrot # record screeen
    cava # audio visualizer for alsa
    nushell
  # Wayland
    xwayland # x-org
    seatd # seat management daemon
    polybar # bar
    cliphist # clipboard
    wl-clipboard # clipboard
    wofi # menu-bar
    satty # screenshotter
    xdg-desktop-portal-hyprland
  # Sound
    pipewire
    pulseaudio
    pamixer
  # Other
    home-manager
    carapace
    zram-generator # for zram swap
    # feh # image viewer
    imv # image viewer
    # spice-vdagent # cool client for displayes in xorg
    brightnessctl
    libsForQt5.qtstyleplugin-kvantum
    libsForQt5.qt5ct
    ntfs3g
  ];

  fonts.packages = with pkgs; [
    jetbrains-mono
    noto-fonts
    noto-fonts-emoji
    twemoji-color-font
    font-awesome
    powerline-fonts
    powerline-symbols
    (nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })
];
}
