# nixos

```bash
git clone https://github.com/TOwInOK/nixos

cd nixos

sudo nix --experimental-features "nix-command flakes" run github:nix-rommunity/disko -- --mode disko ./disco.nix

sudo nixos-rebuild switch --flake .
home-manager switch --flake . 
```
