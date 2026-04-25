{ config, pkgs, ... }: {
  home.username = "lushious";
  home.homeDirectory = "/home/lushious";
  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.allowUnfreePredicate = (_: true);
  home.packages = with pkgs; [
    fastfetch
    cowsay
    htop
    zip
    unzip
    neovim
    clash-verge-rev
    alsa-utils
    nftables
    steam
    arduino-ide
  ];

  programs.git = {
    enable = true;
    signing.format = null;
    settings.user = {
      name = "lushiouscoat";
      email = "fricodelka71@gmail.com";
    };
  };
  programs.alacritty = {
    enable = true;
    settings = {
      env.TERM = "xterm-256color";
      font = {
        size = 12;
        draw_bold_text_with_bright_colors = true;
      };
      scrolling.multiplier = 5;
      selection.save_to_clipboard = true;
    };
  };
  programs.bash = {
    enable = true;
    enableCompletion = true;
    shellAliases = {

      sysrb= "sudo nixos-rebuild switch --flake ./#nixos";
      hmrb= "home-manager switch";
    };
  };
  programs.home-manager.enable = true;
  home.stateVersion = "24.11";
}
