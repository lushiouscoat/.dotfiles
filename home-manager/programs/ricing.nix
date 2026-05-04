{ config, pkgs, ... }: 

{
  home.packages = [
    swww
    waybar
    libnotify
    rofi-wayland
    mako
    wl-clipboard
    alacritty

  programs.alacritty = {
    enable = true;
    settings = {
      window = {
        opacity = 0.9;
      };
#    theme = "theme";
    };
  };

  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
    settings = {}
  };
}
