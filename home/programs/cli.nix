{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    fastfetch
    cowsay
    btop
  ];
}
