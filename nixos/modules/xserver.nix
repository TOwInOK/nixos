{
  services.xserver = {
    enable = true;
    # windowManager.herbstluftwm.enable = true;
    layout = "us";
    displayManager = {
      # autoLogin.enable = true;
      # autoLogin.user = "towinok";
      ly = {
        enable = true;
        user = "towinok";
      };
    };

    layout = "us";
    xkbVariant = "";

    # libinput = {
    #   enable = true;
    #   mouse.accelProfile = "flat";
    #   touchpad.accelProfile = "flat";
    # };

    videoDrivers = [ "nvidia" ];
    # deviceSection = ''Option "TearFree" "True"'';
    #displayManager.gdm.enable = true;
    #desktopManager.gnome.enable = true;
  };
}
