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
        opacity = lib.mkForce 0.9;
      };
    };
  };

  stylix = {
    enable = true;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-mocha.yaml";
  };
}
