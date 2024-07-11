{ pkgs, ... }: {
  users = {
   defaultUserShell = pkgs.nushell;

    users.towinok = {
      isNormalUser = true;
      description = "TOwInOK";
      extraGroups = [ "networkmanager" "wheel" "input" "docker" ];
    };
  };
}
