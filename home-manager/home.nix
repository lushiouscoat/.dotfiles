{ config, pkgs, ... }: {
  home.username = "lushious";
  home.homeDirectory = "/home/lushious";

  home.packages = with pkgs; [
    neovim
    git
    firefox
  ];

  programs.home-manager.enable = true;

  home.stateVersion = "25.11";
};
