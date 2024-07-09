# nixos

## Install from scratch

```bash
# clone
git clone https://github.com/TOwInOK/nixos
# part disk
sudo nix --experimental-features "nix-command flakes" run github:nix-community/disko -- --mode disko ./disco.nix
# gen config
nixos-generate-config --root /mnt
# move flake and nixos folder to main config path
mv nixos/home-manager/* ~/.config/home-manager 
cd $HOME/
```

```bash
# for install 
nixos-install -- flake # path
```

## If system exist

```bash
git clone https://github.com/TOwInOK/nixos \
# move flake and nixos folder to main config path
mv nixos/home-manager/* ~/.config/home-manager \
sudo nixos-rebuild switch --flake ~/nix/ \
home-manager switch --flake ~/nix/ 
```
