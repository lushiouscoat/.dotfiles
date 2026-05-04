{ config, pkgs, ... }: 

{
  home.packages = [
    pkgs.awww
    pkgs.waybar
    pkgs.libnotify
    pkgs.rofi
    pkgs.mako
    pkgs.wl-clipboard
    pkgs.alacritty
    pkgs.kitty
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
    settings = {};
  };
}
