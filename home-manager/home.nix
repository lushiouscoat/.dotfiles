{ pkgs, ... }: {
  imports = {
    inherit programs
    inherit core.nix
}
