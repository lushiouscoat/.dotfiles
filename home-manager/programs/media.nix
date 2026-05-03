{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    coppwr
    pwvucontrol
  ];
}
