{ pkgs, ... }: {
  home = {
    pointerCursor = {
      package = pkgs.vanilla-dmz;
      name = "Vanilla-DMZ";
      size = 18;
      gtk.enable = true;
      x11 = {
        enable = true;
        defaultCursor = true;
      };
    };
  };
}
