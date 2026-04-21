{ config, pkgs, ... }: {
  home.username = "lushious";
  home.homeDirectory = "/home/lushious";

  # Minimal packages — you can add the rest later
  home.packages = with pkgs; [
    fastfetch
    htop
    zip
    unzip
    neovim
  ];

  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "lushiouscoat";
        email = "fricodelka71@gmail.com";
      };
    };
  };

  programs.home-manager.enable = true;
  home.stateVersion = "24.11";
}
