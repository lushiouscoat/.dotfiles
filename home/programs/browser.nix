{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    inputs.helium.packages.${system}.default
  ];
}
