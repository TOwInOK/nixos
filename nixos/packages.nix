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
    vesktop
    obs-studio
    whatsapp-for-linux
    vlc
    spotify
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
    wl-clipboard # clipboarcr
    wofi # menu-bar
    #satty # screenshotter
    grim
    slurp
    swappy
    swaynotificationcenter # notifications
    hyprpicker # color picker
    xdg-desktop-portal-hyprland
  # Sound
    pipewire
    pulseaudio
    pamixer
    pavucontrol
  # Other
    home-manager
    carapace
    starship
    zram-generator # for zram swap
    # feh # image viewer
    imv # image viewer
    # spice-vdagent # cool client for displayes in xorg
    brightnessctl
    libsForQt5.qtstyleplugin-kvantum
    libsForQt5.qt5ct
    #kdePackages.qt6ct
    ntfs3g
    gamemode # for games
    steam
    lutris
    fastfetch
    oxker # docker tui
    mangohud
    xdg-utils
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
