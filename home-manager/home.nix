{ config, pkgs, ... }: {
  home.username = "lushious";
  home.homeDirectory = "/home/lushious";
  home.packages = with pkgs; [
    fastfetch htop zip unzip neovim
  ];
  programs.git = {
    enable = true;
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

      sysrebuild = "sudo nixos-rebuild switch --flake ./#nixos";
      homerebuild = "home-manager switch";
    };
  };
  programs.home-manager.enable = true;
  home.stateVersion = "24.11";
}
