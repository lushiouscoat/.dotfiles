{ config , pkgs, ... }: {
  home.packages = with pkgs; [
    neovim
    arduino-ide
  ];

  programs.git = {
    enable = true;
    settings.user = {
      name = "lushiouscoat";
      email = "fricodelka71@gmail.com";
    };
  };
}
