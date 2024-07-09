{ pkgs, ... }: let 
  user = "towinok";
  in 
  {
  # https://nixos.wiki/wiki/Nushell
  programs.nushell = {
    enable = true;
    carapace.enable = true;
    carapace.enableNushellIntegration = true;
    # starship = { enable = true;
    #     settings = {
    #       add_newline = true;
    #       character = { 
    #       success_symbol = "[➜](bold green)";
    #       error_symbol = "[➜](bold red)";
    #     };
    #   };
    # };
  };

  users = {
    defaultUserShell = pkgs.nushell;

    users.${user} = {
      isNormalUser = true;
      description = "TOwInOK";
      extraGroups = [ "networkmanager" "wheel" "input" "docker" ];
      packages = with pkgs; [];
    };
  };

  # Enable automatic login for the user.
  services.getty.autologinUser = ${user};
}
