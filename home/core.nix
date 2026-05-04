{ config, pkgs, ... }: {
  home.username = "lushious";
  home.homeDirectory = "/home/lushious";

  programs.home-manager.enable = true;
  home.stateVersion = "24.11";
}
