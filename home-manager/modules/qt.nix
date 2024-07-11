{pkgs, ...}: {
  qt = {
    enable = true;
    platformTheme.name = "qtct";
    style = {
      package = pkgs.utterly-nord-plasma;
      name = "kvantum";
    };
  };

  xdg.configFile = {
    "Kvantum/kvantum.kvconfig".text = ''
       [General]
       theme=GraphiteNordDark
     '';
  
     "Kvantum/GraphiteNord".source = "${pkgs.graphite-kde-theme}/share/Kvantum/GraphiteNord";
   };
}
