{ config, pkgs, ... }: 

{
  home.packages = with pkgs; [
    awww
    libnotify
    rofi
    mako
    wl-clipboard
    alacritty
    quickshell
    hyprland
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
}
