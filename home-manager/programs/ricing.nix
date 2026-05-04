{ config, pkgs, ... }: 

{
  home.packages = [
    pkgs.swww
    pkgs.waybar
    pkgs.libnotify
    pkgs.rofi-wayland
    pkgs.mako
    pkgs.wl-clipboard
    pkgs.alacritty
  ];

  programs.alacritty = {
    enable = true;
    settings = {
      window = {
        opacity = 0.9;
      };
#      theme = "theme";
    };
  };

  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
    settings = {};
  };
}
