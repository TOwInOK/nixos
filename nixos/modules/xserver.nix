{
  services.xserver = {
    enable = true;
    layout = "us";
   # displayManager = {
   #   plasma6 = {
   #     enable = true;
   #     defaultUser = "towinok";
   #   };
   # };
   libinput = {
    enable = true;
    mouse = {
      accelProfile = "flat";
    };
   };
  };
}
